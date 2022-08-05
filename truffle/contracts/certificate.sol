pragma solidity ^0.5.0;
contract certificate {
    uint public taskCount=0;
    struct task{
        uint id;
        string content;
        bool completed;
        string certificate_assign_date;
        string certificate_expire_date;
         string certificate_type;
         address certificate_owner;
    }
    mapping(uint => task) public tasks;
    constructor() public{
        addTask("task1");
    }
  function set_certificate_type(string type) public{

   }
    event TaskCreated(
    uint id,
    string content,
    bool completed
  );

  event TaskCompleted(
    uint id,
    bool completed
  );
    function addTask(string memory _content) public{
        taskCount ++;
        tasks[taskCount] = task(taskCount,_content,false);
    }
  function toggleCompleted(uint _id) public {
    task memory _task = tasks[_id];
    _task.completed = !_task.completed;
    tasks[_id] = _task;
    emit TaskCompleted(_id, _task.completed);
  }

}
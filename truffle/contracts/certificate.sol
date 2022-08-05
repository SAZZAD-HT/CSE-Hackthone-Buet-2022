// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
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
    uint id;
        string content;
        bool completed;
        string certificate_assign_date;
        string certificate_expire_date;
         string certificate_type;
         address certificate_owner;
    mapping(uint => task) public tasks;
    constructor() public{
        addTask("task1");
    }
  function set_certificate_type(string  typ) public {
      typ=certificate_type;

   }
    function set_certificate_owner(string own) public{
      own=certificate_owner;

   }
    function set_certificate_assign_date(string asndt) public{
      asndt=certificate_assign_date;

   }
    function set_certificate_type(string expirdt) public{
      expirdt=certificate_expire_date;

   }
    event TaskCreated(
    uint id,
    string content,
    bool completed
  );
  function get_certificate_type(string) public {
      return set_certificate_type;
  }
   function get_certificate_type(string)public{
      return set_certificate_type;
  }

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
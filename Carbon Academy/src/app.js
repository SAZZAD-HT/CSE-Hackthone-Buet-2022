App={
    load :async()=>{
        //Load app
        console.log("app loading ...")
        // await App.loadWeb3()
        // await App.loadAccount()
    },
   
}

$(() => {
        $(window).load(() => {
          App.load()
        })
    })
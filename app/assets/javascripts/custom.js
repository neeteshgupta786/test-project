var count = 10;

setInterval(function(){
  if(count < 1){
    count = 10
  }
  document.getElementById('counter').innerHTML = count;

  count -= 1
}, 1000);

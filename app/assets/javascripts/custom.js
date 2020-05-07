var count = 10;

setInterval(function(){
  if(count < 1){
    count = 10
  }
  playTimerValue = document.getElementById('play_timer_value');
  playTimerValue.value = count;
  document.getElementById('play_url').value = JSON.parse(playTimerValue.getAttribute('data-req-hash'))[count];
  document.getElementById('image').src = JSON.parse(playTimerValue.getAttribute('data-req-hash'))[count];
  document.getElementById('counter').innerHTML = count;

  count -= 1
}, 1000);

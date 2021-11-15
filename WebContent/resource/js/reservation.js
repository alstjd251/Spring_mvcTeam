function minus(){
  var n=document.getElementById("res_personnel");
  var tmp = parseInt(n.innerText);

  tmp--;
  if(tmp < 1){
      tmp = 1;
  }
  n.innerText = tmp;
}

function plus(){
  var n=document.getElementById("res_personnel");
  var tmp = parseInt(n.innerText);

  tmp++;
  if(tmp>10){
      tmp=10;
      alert("최대 인원은 10명입니다.");
  }
  n.innerText = tmp;
}

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
var price = 0;
function selected(){
	var num = $("#res_subcategory").val();
	switch(num){
	case "1":
		price=30000;
		break;
	case "2":
	 	price=35000;
	 	break;
	case "3":
	 	price=40000;
	 	break;
	case "4":
	 	price=45000;
	 	break;
	case "5":
	 	price=50000;
	 	break;
	case "6":
	 	price=50000;
	 	break;
	}
	document.getElementById("res_price").innerHTML=price;
}
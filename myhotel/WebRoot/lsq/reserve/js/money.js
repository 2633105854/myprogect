function zongji()
{
   var dayi=document.getElementById("days");
   var moneyi=document.getElementById("jiage");
   var yuji=document.getElementById("yuji");
   var mday=  dayi.value;
   var money=moneyi.getAttribute("value");
   yuji.setAttribute("value",mday*money);
   
   
   
}
// JavaScript Document

function yz_namej()
{
	var named=document.getElementById("named");
	   named.innerHTML="";
	var mytext=document.getElementById("name");
	if((mytext.value.indexOf("用户名"))>0)
	{
		mytext.value=null;
	}

	
}
function yz_names()
{
	var named=document.getElementById("named");
	var mytext=document.getElementById("name");
	if(mytext.value==null||mytext.value=="")
	{
		named.innerHTML="这里不能为空";
		return false;
	}
}

function yz_passj()
{
	var named=document.getElementById("passd");
	   named.innerHTML="";
	var mytext=document.getElementById("pass");
	if((mytext.value.indexOf("密码"))>0)
	{
		mytext.value=null;
	}

	
}
function yz_passs()
{
	var named=document.getElementById("passd");
	var mytext=document.getElementById("pass");
	if(mytext.value==null||mytext.value=="")
	{
		named.innerHTML="亲,密码这里不能为空";
		return false;
	}
}

function zpass_j()
{
	var named=document.getElementById("zpassd");
	   named.innerHTML="";
	var mytext=document.getElementById("zpass");
	if((mytext.value.indexOf("密码"))>0)
	{
		mytext.value=null;
	}
}

function zpass_s()
{
	var pass=document.getElementById("pass");
	var passd=document.getElementById("zpassd");
	 
	var zpass=document.getElementById("zpass");
	if(zpass.value==null||zpass.value=="")
	{
		passd.innerHTML="亲,再次输入密码这里不能为空";
		return false;
	}
	else
	{
		if(pass.value==zpass.value)
		{
		}
		else{
			passd.innerHTML="亲,两次密码不同";
			return false;
		}
	}
}
function rel_name_j()
{
	var relname=document.getElementById("relname");
	var relnamed=document.getElementById("relnamed");
	relnamed.innerHTML="";
	
}
function rel_name_s()
{
	var relname=document.getElementById("relname");
    var relnamed=document.getElementById("relnamed");
	if(relname.value==null||relname.value=="")
	{
		relnamed.innerHTML="亲,真实姓名这里不能为空";
		return false;
	}
	else
	{
		var str=relname.value;
		var reg=/^[\u4E00-\u9FA5]{2,4}$/;
		if(reg.test(str)!=true)
		{
			relnamed.innerHTML="请输入正确名字";
			return false;
		}
	}
}

function card_j()
{
	var card=document.getElementById("card");
	var cardd=document.getElementById("cardd");
	cardd.innerHTML="";
	
}
function card_s()
{
	var card=document.getElementById("card");
	var cardd=document.getElementById("cardd");
	
	if(card.value==null||card.value=="")
	{
		cardd.innerHTML="亲,身份正这里不能为空";
		return false;
	}
	else
	{
		var t=card.value;
		//var s=isCardID(card.value);
		
		var regIdCard = /^(^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$)|(^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])((\d{4})|\d{3}[Xx])$)$/;  
		
		if(regIdCard.test(t))
		{
			
		}
		else
		{
			cardd.innerHTML=t+"输入错误";
			return false;
		}
		
	}
}

function phone_j()
{
	var phone=document.getElementById("phone");
	var phoned=document.getElementById("phoned");
	phoned.innerHTML="";
}
function phone_s()
{
	var phone=document.getElementById("phone");
	var phoned=document.getElementById("phoned");
	if(phone.value==null||phone.value=="")
	{
		phoned.innerHTML="亲,电话这里不能为空";
		return false;
	}
	else
	{
		 var ze=/^(13[0-9]|15[0|1|3|6|7|8|9]|18[8|9])\d{8}$/;
		 if(ze.test(phone.value))
		 {
			 
		 }
		 else
		 {
			phoned.innerHTML="亲,电话错了";
			 return false;
		 }
	}
}



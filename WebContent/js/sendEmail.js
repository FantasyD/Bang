function getHttp_request()
{
	try{
        // Opera 8.0+, Firefox, Chrome, Safari
        var http_request = new XMLHttpRequest();
    }catch (e){
        try{
            http_request = new ActiveXObject("Msxml2.XMLHTTP");
        }catch (e) {
            try{
                http_request = new ActiveXObject("Microsoft.XMLHTTP");
            }catch (e){
                alert("Your browser broke!");
                return false;
            }
        }
    }
    return http_request;
}

function SendEmail(id, sign, path)
{	
	var reg3=/^(\w)+(\.\w+)*@(\w)+((\.\w+)+)$/;
	var mail= $("#" + id).val();
	if (mail != "") 
	{
		if (reg3.test(mail)) 
		{
			DynamicSend(mail, sign, path);
		}
		else 
		{
			alert("��������ȷ�����ַ��");
		}
	}
	else 
	{
		alert("���䲻��Ϊ�գ�");
	}
}

function DynamicSend(mail, sign, path)
{
	var http_request = getHttp_request();
    
    http_request.onreadystatechange = function(){
        if (http_request.readyState == 4 )
        {
        	var result = http_request.responseText;
        	if(result == "true")
        	{
        		alert("�ʼ��ѷ���,�����Ե�");
        	}
        	else
        	{
        		alert("�ʼ�����ʧ�ܣ�");
        	}
        }
    }
    var action = null;
    if(sign == 1)
    {
    	action = "/user_sendEmail.html";
    }
    else
    {
    	action = "/user_sendResetEmail.html";
    }
    http_request.open("POST", path + action, true);
    http_request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    http_request.send("aab108=" + mail);
}

function checkPwd(input_pwd, button_id, alert_id)
{
	var pwd = input_pwd.value;
	var reg=/^\w{6,18}$/;
	if (reg.test(pwd) && typeof(pwd) != "undefined") 
	{
		$("#" + alert_id).empty();
		$("#" + alert_id).append("��������");
		$("#" + alert_id).css("color", "green");
		$("#" + button_id).attr('disabled',false);
	}
	else 
	{
		$("#" + alert_id).empty();
		$("#" + alert_id).append("���벻�Ϸ���������6-18λ�����֡���ĸ���»������!");
		$("#" + alert_id).css("color", "red");
		$("#" + button_id).attr('disabled',true);
	}
}

function checkComfirmPwd(Comfirm_pwd, pwd_id, button_id, alert_id)
{
	var C_pwd = Comfirm_pwd.value;
	var pwd = $("#" + pwd_id).val();
	if (C_pwd == pwd) 
	{
		$("#" + alert_id).empty();
		$("#" + alert_id).append("��������");
		$("#" + alert_id).css("color", "green");
		$("#" + button_id).attr('disabled',false);
	}
	else 
	{
		$("#" + alert_id).empty();
		$("#" + alert_id).append("������������벻һ��!");
		$("#" + alert_id).css("color", "red");
		$("#" + button_id).attr('disabled',true);
	}
}

function register_()
{
	var http_request = getHttp_request();
    
    http_request.onreadystatechange = function(){
        if (http_request.readyState == 4 )
        {
        	var result = http_request.responseText;
        	if(result == "true")
        	{
        		alert("ע��ɹ���");
        	}
        	else
        	{
        		alert("ע��ʧ�ܣ�");
        	}
        }
    }
    
    var form = "aab102=" + encodeURI(encodeURI($("#userName").val())) + 
			   "&aab104=" + encodeURI(encodeURI($("#Name").val())) + 
			   "&aab110=" + encodeURI(encodeURI($("#school").val())) + 
			   "&aab107=" + encodeURI(encodeURI($("#student_id").val())) + 
			   "&aab108=" + encodeURI(encodeURI($("#mail").val())) + 
			   "&aab103=" + encodeURI(encodeURI($("#password_").val())) + 
			   "&ver=" + $("#num").val();
    http_request.open("POST", path + "/user_register.html", true);
    http_request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    http_request.send(form);
}

function findPwd_()
{
	var http_request = getHttp_request();
    
    http_request.onreadystatechange = function(){
        if (http_request.readyState == 4 )
        {
        	var result = http_request.responseText;
        	if(result == "true")
        	{
        		alert("�������óɹ���");
        	}
        	else
        	{
        		alert("��������ʧ�ܣ�");
        	}
        }
    }
    
    var form = "&aab108=" + encodeURI(encodeURI($("#mail_findPwd").val())) + 
			   "&aab103=" + encodeURI(encodeURI($("#password_findPwd").val())) + 
			   "&ver=" + $("#num_findPwd").val();
    http_request.open("POST", path + "/user_confirmModify.html", true);
    http_request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    http_request.send(form);
}
<%@ page  language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Insert title here</title>
<link href="./css/center.css" rel="stylesheet">
<script type="text/javascript" src="https://libs.baidu.com/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="./js/Chat_action.js"></script>
<script type="text/javascript">

var this_aab101 = "<%=request.getParameter("aab101") %>";
var this_aab102 = "<%=request.getParameter("aab102") %>";
var is_chat_load = false;
var path = "<%=path%>/";

var map = new Map();
//���ڵ����û�����ɫ
var span_color = null;


function getHttp_request()
{
	try{
        // Opera 8.0+, Firefox, Chrome, Safari
        var http_request = new XMLHttpRequest();
    }catch (e){
        // IE ���������
        try{
            http_request = new ActiveXObject("Msxml2.XMLHTTP");
        }catch (e) {
            try{
                http_request = new ActiveXObject("Microsoft.XMLHTTP");
            }catch (e){
                // ������
                alert("Your browser broke!");
                return false;
            }
        }
    }
    return http_request;
}

function loadJSON(data, name)
{
	alert("data:" + data + "   name:" + name + "___loadJSON");
	if(data != null)
	{
		var strs = data.split(", ");
		
		for(var i = 0; i < strs.length; i++)
		{
			map.set(strs[i] + "_s", "red");
		}
	}
    var http_request = getHttp_request();
    http_request.onreadystatechange = function(){
        if (http_request.readyState == 4 )
        {
            // ʹ�� JSON.parse ���� JSON ����
            var jsonObj = http_request.responseText;
            $("#record1").empty();
            $("#record2").empty();
            if(jsonObj[0] == "[")
            {
                var obj = eval('(' + jsonObj + ')');
                for( let i of obj)
                {
                    if(i.sign == "1")
                   	{
                    	$("#record1").append("<li><div onclick='chat(" + i.aad101 + ")'>" + 
                    						 "<img style='border-radius: 20px; vertical-align: middle;' src='./resourse/girl.png'>" + 
                    	                     "<span id = '" + i.aad101 + "_s' style='margin-left: 10px;'>" + i.aad101 + i.aab102 +  "</span></div>" + 
                    	                     "<a style='margin-left: 10px;' href='#' onclick='onDel(" + i.aad101 + ", 1)'>ɾ��</a>" +
                    	                     "</li>");
                   	}
                    if(i.sign == "2")
                   	{
                    	$("#record2").append("<li><div onclick='chat(" + i.aad101 + ")'>" + 
                    						 "<img style='border-radius: 20px; vertical-align: middle;' src='./resourse/girl.png'>" + 
                    						 "<span id = '" + i.aad101 + "_s' style='margin-left: 10px;'>" + i.aad101 + i.aab102 +  "</span></div>" + 
                    	                     "<a style='margin-left: 10px;' href='#' onclick='onDel(" + i.aad101 + ", 2)'>ɾ��</a>" +
                    						 "</li>");
                   	}
                }
                for( let i of obj)
                {
                    if(map.get(i.aad101 + "_s") != null)
                   	{
                    	var span = document.getElementById(i.aad101 + "_s");
            	        span.style.background = map.get(i.aad101 + "_s");
                   	}
                }
            }
        }
    }
    
    http_request.open("POST", path + "ChatAjax.jsp", true);
    http_request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    http_request.send("aab101=" + this_aab101);
}

function onDel(aad101, kind)
{
	var http_request = getHttp_request();
    
    http_request.onreadystatechange = function(){
        if (http_request.readyState == 4 )
        {
        	loadJSON();
        }
    }
    var action = null;
    if(kind == 1)
    {
    	action = "chat_ChatSenderDel.html";
    }
    else
    {
    	action = "chat_ChatAcceptDel.html";
    }
    http_request.open("POST", path + action, true);
    http_request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    http_request.send("aab102=" + encodeURI(encodeURI(this_aab102)) + "&aad101=" + aad101);
}


function chat(aad101)
{
	if(span_color != null)
	{
		span_color.style.background = "white";
	}
	span_color = document.getElementById(aad101 + "_s");
	span_color.style.background = "yellow";

	map.delete(aad101 + "_s");

	if(is_chat_load)
	{
		colseChatConnect();
	}
    
    var http_request = getHttp_request();
    
    http_request.onreadystatechange = function(){
        if (http_request.readyState == 4 )
        {
        	$("#mainbody").empty();
        	$("#mainbody").load(path + "chat.jsp");
        	is_chat_load = true;
        }
    }
    
    http_request.open("POST", path + "chat_ChatFindById.html", true);
    http_request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    http_request.send("aab101=" + this_aab101 + "&aad101=" + aad101);
}

var webSocket_record = null;
$(function(){
	if(!window.WebSocket){
		alert('����������֧��WebSocket');
	}else{
		startConnect_record(this_aab101, this_aab102);
	}
});
function startConnect_record(aab101, aab102){
	var url = "ws://localhost:8080/BangBang/record/"+aab101 + "_" + aab102;
	webSocket_record = new WebSocket(url);
	webSocket_record.onerror = function(event) {
		onError(event)
	};
	webSocket_record.onopen = function(event) {
		onOpen(event)
	};
	webSocket_record.onmessage = function(event) {
		onMessage(event)
	};
	webSocket_record.onclose = function(event) {
		onClose(event)
	};
}

function onMessage(event)
{
	loadJSON(event.data);
}
function onOpen(event) {
	$("#allMsg1").append("<p>��������������</p>");
}
function onError(event) {
	$("#allMsg1").append("<p>���ӷ�������������</p>");
}
function onClose(event) {
	$("#allMsg1").append("<p>�����������ѹر�</p>");
}

function LoadPage()
{
	loadJSON();
}
</script>
</head>
<body class="box" onload="LoadPage()">
<form action="" id="myform">
</form>
<div id = "allMsg1"></div>
    <div class="container">
        <div class="chatbox">
            <div class="chatleft">
                <div class="top1">
                    <p class="label">�һظ���</p>
                </div>
                <div class="center1">
                <jsp:element name=""></jsp:element>
                    <ul id="record1">
                    </ul>
                </div>
                <div class="top2">
                    <p class="label">�յ��Ļظ�</p>
                </div>
                <div class="center2">
                    <ul id="record2">
                    </ul>
                </div>
            </div>
            <div class="chatright" id ="mainbody">
                
            </div>
        </div>
    </div>
</body>
</html>

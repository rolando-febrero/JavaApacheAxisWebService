<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleMyJavaWebServiceHelloWorldProxyid" scope="session" class="rolandofebrero.com.web.service.MyJavaWebServiceHelloWorldProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleMyJavaWebServiceHelloWorldProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleMyJavaWebServiceHelloWorldProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleMyJavaWebServiceHelloWorldProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        rolandofebrero.com.web.service.MyJavaWebServiceHelloWorld getMyJavaWebServiceHelloWorld10mtemp = sampleMyJavaWebServiceHelloWorldProxyid.getMyJavaWebServiceHelloWorld();
if(getMyJavaWebServiceHelloWorld10mtemp == null){
%>
<%=getMyJavaWebServiceHelloWorld10mtemp %>
<%
}else{
        if(getMyJavaWebServiceHelloWorld10mtemp!= null){
        String tempreturnp11 = getMyJavaWebServiceHelloWorld10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String value_1id=  request.getParameter("value16");
        float value_1idTemp  = Float.parseFloat(value_1id);
        float addValue13mtemp = sampleMyJavaWebServiceHelloWorldProxyid.addValue(value_1idTemp);
        String tempResultreturnp14 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addValue13mtemp));
        %>
        <%= tempResultreturnp14 %>
        <%
break;
case 18:
        gotMethod = true;
        String value_2id=  request.getParameter("value21");
        float value_2idTemp  = Float.parseFloat(value_2id);
        float subtractValue18mtemp = sampleMyJavaWebServiceHelloWorldProxyid.subtractValue(value_2idTemp);
        String tempResultreturnp19 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(subtractValue18mtemp));
        %>
        <%= tempResultreturnp19 %>
        <%
break;
case 23:
        gotMethod = true;
        String value_3id=  request.getParameter("value26");
        float value_3idTemp  = Float.parseFloat(value_3id);
        float multiplyValue23mtemp = sampleMyJavaWebServiceHelloWorldProxyid.multiplyValue(value_3idTemp);
        String tempResultreturnp24 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(multiplyValue23mtemp));
        %>
        <%= tempResultreturnp24 %>
        <%
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>
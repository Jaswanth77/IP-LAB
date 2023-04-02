<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="expno10.StudentObj"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ExpNo10</title>
       
    </head>
    <body>
        <%
            StudentObj st=new StudentObj("chris",91,"christian69@gmail.com");
            StudentObj st1=new StudentObj("abi",77,"atmanstr@gmail.com");
            StudentObj st2=new StudentObj("harbajan",69,"harbajanthiruvalluvar@gmail.com");
            StudentObj st3=new StudentObj("adam",99,"adah99@gmail.com");
            StudentObj st4=new StudentObj("gardner",97,"gautigg@gmail.com");
            ArrayList<StudentObj> obj=new ArrayList<StudentObj>();
            obj.add(st);
            obj.add(st1);
            obj.add(st2);
            obj.add(st3);
            obj.add(st4);
            StudentObj.sort(obj);
pageContext.setAttribute("obj", obj);
        %>
        <table border="2px"><tr><th>Name</th><th>Mail</th><th>Mark</th></tr>
        <c:forEach items="${pageScope.obj}" var="i">
           
                <tr> <td>${i.getName()}</td>
                    <td>${i.getMail()}</td>
                    <td>${i.getMark()}</td>
                </tr>
        </c:forEach>  
        </table>
       </table>
    </body>
</html>
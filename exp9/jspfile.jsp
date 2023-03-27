<%@page import="java.sql.*"%>
<%@page import="java.sql.drivermanager"%>
<%@page contenttype="text/html" pageencoding="utf-8"%>
<!doctype html>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8">
        <title>employee</title>
    </head>
    <body>
        <%  connection c;
        statement st;
        resultset rs;
        int count=0;
        double average=0;
        int max=0;
        %>
        <%
             c=drivermanager.getconnection("jdbc:derby://localhost:1527/semester");
             
             st=c.createstatement();
             rs=st.executequery("select count(employee_id) from employees");
            if(rs.next()){
                count=rs.getint(1);
            }
            rs=st.executequery("select avg(salary) from employees");
            if(rs.next()){
                average=rs.getdouble(1);
            }
            rs=st.executequery("select max(salary) from employees");
            if(rs.next()){
                max=rs.getint(1);
            }
            %>
            <table border="2px"><tr><th>total no.of employees</th><th>average salary</th><th>highest salary</th></tr>
                <tr><td><%= count%></td><td><%=average%></td><td><%= max%></td></tr></table>
        </body>
</html>
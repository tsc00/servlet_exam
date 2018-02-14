<%@ page import="com.testservlet.web.ReadDB" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.testservlet.web.Restaurants" %>
<!doctype html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
</head>
<body>
<%
ReadDB readDB = new ReadDB();
ArrayList<Restaurants> arrl = (ArrayList<Restaurants>) request.getAttribute("cerca");
Iterator iter = arrl.iterator();



    out.println("<div> Resultats de la cerca </div>");

    while (iter.hasNext()) {
        Restaurants restaurants = (Restaurants) iter.next();

        out.println("<div class='list-group'>" +
                "<a href=" + restaurants.getWeb() + " class='list-group-item list-group-item-action flex-column align-items-start active'>" +
                "<div class='d-flex w-100justify-content-between'>" +
                "<h5 class='mb-1'>"+ restaurants.getNom() + "</h5>" +
                "<small>"+ restaurants.getTipus() +"</small>" +
                "</div>" +
                "<p class='mb-1'>"+ restaurants.getAdreca() +"</p>" +
                "<p class='mb-1'>"+ restaurants.getPuntuacio() +"</p>" +
                "<small>"+ restaurants.getTel() +"</small>" +
                "</a>" +
                "</div>");

    }
%>
</body>
</html>
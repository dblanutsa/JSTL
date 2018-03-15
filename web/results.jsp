<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSTL Sample - Results</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
    <div class="container">
    <form class="form-control" action="/add" method="get">
        <div class="form-group">
            <label style="width: 50px;" >Model:</label><br/>
            <input class="form-control" type="text" name="model" maxlength="100" placeholder="Enter model"/>
        </div>
        <div class="form-group">
            <label style="width: 50px;" >Price:</label><br/>
            <input class="form-control" type="number" name="price" maxlength="100" placeholder="Enter price"/>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-success">+</button><br/>
        </div>
    </form>
    <c:if test="${brand != null}">
        <h1 align="center">${brand} orders list:</h1>
    </c:if>
    <c:if test="${price != null}">
        <h1 align="center">Cheap orders list:</h1>
    </c:if>
    <c:if test="${brand == null && price == null}">
        <h1 align="center">All orders list:</h1>
    </c:if>

    <c:if test="${ordersList.size() == 0}">
        <h3 align="center">List is empty</h3>
    </c:if>
    <c:if test="${ordersList.size() != 0}">
        <form action="/remove" method="get">

            <table class="table table-striped table-bordered" style="text-align: center;">
                <tr><th></th><th>Model</th><th>Price</th></tr>
                <c:forEach items="${ordersList}" var="o">
                    <tr>
                        <td><input type="checkbox" name="${o.name}"></td>
                        <td><c:out value="${o.name}"/></td>
                        <td><c:out value="${o.price}"/></td>
                    </tr>
                </c:forEach>
            </table>
            <button type="submit" class="btn btn-warning">-</button>
        </form>
    </c:if>
        <a href="/"><h5 align="center">Go Back</h5></a>
    </div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
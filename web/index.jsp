<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
      <title>JSTL Sample</title>
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  </head>
  <body>
      <div class="container-fluid">
          <h1 align="center">Menu</h1>
          <table class="table table-hover" style="width: 400px; margin: 0 auto;">
              <tr><td style="text-align: center;"><a href="/list">Click</a> to get ALL orders list.<br/></td></tr>
              <tr><td style="text-align: center;"><a href="/list?brand=Apple">Click</a> to get Apple orders list.<br/></td></tr>
              <tr><td style="text-align: center;"><a href="/list?brand=Samsung">Click</a> to get Samsung orders list.<br/></td></tr>
              <tr><td style="text-align: center;"><a href="/list?price=500">Click</a> to get cheap orders list.<br/></td></tr>
          </table>
      </div>
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>

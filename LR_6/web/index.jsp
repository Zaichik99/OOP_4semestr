<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 21.03.2019
  Time: 0:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <center>
    <h>Вычисление тригонометрических функций с указанной точностью.</h>
    <br><br>
    <input type="number" id="t_1" placeholder="Значение">
    <br />
    <p><input type='number' id='e' placeholder='Точность'></p>
    <select multiple id="MySelect">
      <option >sin</option>
      <option >cos</option>
      <option >tan</option>
      <option >atan</option>
    </select>
    <br><br>
    <button type="button" onclick="start()">Рассчитать</button>
    <br>
    <p style="display: inline-block" id="output">Ответ = </p>
  </center>

  <script type="text/javascript">
    function start() {
      var number = parseFloat(document.getElementById('t_1').value);
      var e = parseFloat(document.getElementById('e').value);
      var output = document.getElementById('output');

      // получаем индекс выбранного элемента
      var selind = document.getElementById("MySelect").options.selectedIndex;
      switch (selind) {
        case 0:
          var a = Math.sin(number);
          var sin = a.toFixed(e);
          output.textContent ="Ответ = " + sin;
          break;
        case 1:
          var a = Math.cos(number);
          var cos = a.toFixed(e);
          output.textContent ="Ответ = " + cos;
          break;
        case 2:
          var a = Math.tan(number);
          var tan = a.toFixed(e);
          output.textContent = "Ответ = " + tan;
          break;
        case 3:
          var a = Math.atan(number);
          var atan = a.toFixed(e);
          output.textContent = "Ответ = " + atan;
          break;
        default: alert("Error")
      }
    };
  </script>
  </body>
</html>

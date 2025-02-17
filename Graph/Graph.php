<!DOCTYPE HTML>
<html>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">

<head>
    <script type="text/javascript">
        window.onload = function() {
            var chart = new CanvasJS.Chart("chartContainer", {
                animationEnabled: true,
                title: {
                    text: "Employee Order Prices"
                },
                data: [{
                    type: "stackedBar", //เปลี่ยนเป็น bar, line, area, pie ได้ตามต้องการ
                    dataPoints: [
                        <?php
                        include "include.php";  // เชื่อมต่อกับฐานข้อมูล
                        $StrSQL = "SELECT employee.employee_name, SUM(order_detail.price) AS SumOfprice
                                FROM order_detail
                                  INNER JOIN `t_order` ON order_detail.order_ID = `t_order`.order_ID
                                INNER JOIN employee ON employee.employee_id = `t_order`.employee_id
                                GROUP BY employee.employee_name
                                ORDER BY SumOfprice DESC";

                        $result = mysqli_query(
                            $conn,
                            $StrSQL
                        ) or die(mysqli_error($conn));

                        // ลูปข้อมูลที่ได้จากฐานข้อมูล
                        while ($row = mysqli_fetch_array($result)) {
                            echo "{ label:\"" . $row['employee_name'] . "\", y:" . $row['SumOfprice'] . " },";
                        }
                        ?>
                    ]
                }]
            });
            chart.render();
        }
    </script>
    <script type="text/javascript" src="canvasjs.min.js"></script>
</head>

<body>
    <center> Graph </center>
    <div id="chartContainer" style="height: 300px; width:100%;"></div>
</body>

</html>
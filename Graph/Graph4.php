<!DOCTYPE HTML>
<html>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">

<head>
    <script type="text/javascript">
        window.onload = function() {
            var chart = new CanvasJS.Chart("chartContainer", {
                animationEnabled: true,
                title: {
                    text: "คำสั่งซื้อของลูกค้าแต่ละคน"
                },
                data: [{
                    type: "bar", // เปลี่ยนเป็น bar, line, area, pie ได้ตามต้องการ
                    dataPoints: [
                        <?php
                        include "include.php";  // เชื่อมต่อกับฐานข้อมูล
                        $StrSQL = "SELECT t_order.customer_id, COUNT(*) AS OrderCount
                        FROM t_order
                        GROUP BY t_order.customer_id
                        ORDER BY OrderCount DESC;";

                        $result = mysqli_query($conn, $StrSQL) or die(mysqli_error($conn));

                        // ลูปข้อมูลที่ได้จากฐานข้อมูล
                        while ($row = mysqli_fetch_array($result)) {
                            echo "{ label:\"" . $row['customer_id'] . "\", y:" . $row['OrderCount'] . " },";
                        }
                        ?>
                    ]
                }]
            });
            chart.render();
        }
    </script>

    <script type="text/javascript" src="canvasjs.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body>
    <div class="container text-center mt-5">
        <h1>คำสั่งซื้อของลูกค้าแต่ละคน</h1>
    </div>
    <div id="chartContainer" style="height: 300px; width:100%;"></div>

    <div class="text-center"><a href="index.php" class="btn btn-primary mt-3 ">
            Back to Homepage</a>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>

</html>

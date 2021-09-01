<!DOCTYPE html>
<html>

<head>
      <title>database</title>
      <!--Add page Responsive Web Design link  -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!--Add Bootstrap link-->
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>
      <?php
      $data = "";
      $connection = new mysqli("localhost", "root", "", "db")
            or die("Connection error : " . $connection->connect_error);
      $result = $connection->query("SELECT selles.idselles vuocher, party.name party_name, selles.date, product.name Product_name, selles_details.unite, selles_details.rate FROM party INNER JOIN selles ON party.idparty = selles.idselles INNER JOIN selles_details ON selles.idselles = selles_details.idselles INNER JOIN product ON product.idproduct = selles_details.idproduct");
      ?>
      <h1>
            <center><b>Agro Fresh</b></center>
      </h1><br>
      <h2>
            <center><b>Invoice</b></center>
      </h2>
      <div>
            <pre>
            <?php
            $selles = array();
            if ($result->num_rows > 0) {
                  while ($row = $result->fetch_assoc()) {
                        $selles[$row['vuocher']] = $row;
                  }
            }
            ?>
      </div>
	
      <div>
            <center>
      	<table border="2" width="80%">      		
      		<thead>
      		<tr>
      			<th>Product Name</th>
      			<th>Quantity</th>
      			<th>Cost</th>
      			<th>Total</th>
      		</tr>
      		</thead>
      		<tbody>
      		<?php foreach ($datas as $data) : ?>
      		<tr>
      			<td><?= $data['product_name']; ?></td>
      			<td><?= $data['unite']; ?></td>
      			<td><?= $data['rate']; ?></td>
                        <td><?= $data['rate'] * $data['unite']; ?></td>
      		</tr>
      		<?php endforeach; ?>
      		</tbody>
            </table>
            </center>
      </div>
</div>
</body>
</html>
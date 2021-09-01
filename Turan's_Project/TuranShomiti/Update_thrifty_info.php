<?php include 'Header.php'; ?>
	<div class="container">
		<table class="table table-hover text-center">
			<thead>
				<tr>
					<th>#</th>
					<th>FullName </th>
					<th>Amount </th>
					<th>Payment </th>
					<th>Duration </th>
					<th>Load Date </th>
					<th colspan="2">Action</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<th>#</th>
					<th>FullName </th>
					<th>Amount </th>
					<th>Payment </th>
					<th>Duration </th>
					<th>Load Date </th>
					<th colspan="2">Action</th>
				</tr>
			</tfoot>
			<tbody>
				<tr>
					<td>1</td>
					<td><?php $name ; ?></td>
					<td><?php $amount ; ?></td>
					<td><?php $payment ; ?></td>
					<td><?php $duration ; ?></td>
					<td><?php $loaddate ; ?></td>
					<td>
						<a href="#"><button class="btn btn-success"><i class="fa fa-edit">
							</i></button></a>
					</td>

				</tr>
			</tbody>
		</table>
	</div>
<?php include 'Footer.php'; ?>



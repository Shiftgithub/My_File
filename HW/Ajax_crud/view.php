<?php
// include 'db.php'

$con = mysqli_connect('localhost', 'root');
mysqli_select_db($con, 'ajax_crud');

$q = "SELECT * from ajax_insert";
var_dump($q);
$query = mysqli_query($con, $q);
if (mysqli_num_rows($query)) {
    while ($result = mysqli_fetch_array($query)) {
?>

        <tr>
            <td><?= $result['id'] ?></td>
            <td><?= $result['username'] ?></td>
            <td><?= $result['email'] ?></td>
            <td><?= $result['password'] ?></td>
            <td>
                <a href="edit.php">
                    <button class="btn btn-primary btn-sm" id="editId">Edit</button>
                </a>
            </td>
            <td>
                <button type="submit" onclick="return getID(<?= $result['id'] ?>)" class="btn btn-warning btn-sm" data-toggle="modal" data-target="#deleteModal">Delete
                </button>
        </tr>
<?php
    }
} ?>

<?php
$scripts[] = '<!-- -->
<script src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>';

$scripts[] = '<!-- -->
<script src="https://cdn.datatables.net/1.10.23/js/dataTables.bootstrap4.min.js"></script>';
$scripts[] = '<script>$(\'#dataTable\').DataTable();</script>';

$scripts[] = '
<script>
function getID(id) {
    //alert(id);
    $("#deleteModal").modal("show");
    $("#deleteID").val(id);
    $(".modal-body").html("Do you want to remove this?");
    $("#formId").attr("action", "delete.php");
}
</script>
';

$scripts[] = '
<script>
$(function () {
  $(\'[data-toggle="tooltip"]\').tooltip()
})
</script> ';

?>

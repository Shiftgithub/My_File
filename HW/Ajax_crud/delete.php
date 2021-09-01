<?php
$scripts[] = '<!-- -->
<script src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>';

$scripts[] = '<!-- s-->
<script src="https://cdn.datatables.net/1.10.23/js/dataTables.bootstrap4.min.js"></script>';
$scripts[] = '<script>$(\'#dataTable\').DataTable();</script>';

$scripts[] = '
<script>
function getID(id) {
    //alert(id);
    $("#deleteModal").modal("show");
    $("#deleteID").val(id);
    $(".modal-body").html("Do you want to remove this Business?");
    $("#formId").attr("action", "delete");
}
</script>
';
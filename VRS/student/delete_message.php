<?php 
include "connection.php";

if(isset($_GET["id"]))
{
$id=$_GET["id"];
mysqli_query($link,"delete from messages where id=$id");	

?>
<script type="text/javascript">

  window.location="message_from_librarian.php";

</script>
  <?php
}

else {
	?>
<script type="text/javascript">

  window.location="message_from_librarian.php";

</script>
<?php
}
<?php
include "header.php";
if(!isset($_SESSION["librarian"]))
{
	?>
	<script type="text/javascript">
	window.location="librarianlogin.php";
	
	</script>
	
	<?php
}

include "connection.php";
mysqli_query($link, "update student_messages set read1='y' where dusername='$_SESSION[librarian]'");
?>

        <!-- page content area main -->
        <div class="right_col" role="main" style="background-image: url(images/library2.jpg);">
            <div class="">
                <div class="page-title">
                    <div class="title_left">
                        <h3>Student Inquiries</h3>
                    </div>

                    <div class="title_right">
                        <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="clearfix"></div>
                <div class="row" style="min-height:500px">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Message From Student</h2>

                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                
								<table class="table table-bordered">
								<tr>
								<th>full name</th>
								<th>Enrollmentno</th>
								<th>Title</th>
								<th>Message</th>
								<th style="color:blue">REPLY</th>
								<th style="color:blue">DELETE MESSAGES</th>
								</tr>
								
								<?php 
								$res=mysqli_query($link,"select * from student_messages where dusername='$_SESSION[librarian]' order by id desc");
								while($row=mysqli_fetch_array($res))
								{
								
								     $res1=mysqli_query($link,"select * from student_registration where username='$row[susername]'");
								     while($row1=mysqli_fetch_array($res1))
								    {
									  $fullname=$row1["firstname"]." ".$row1["lastname"];
									  $enrollmentno=$row1["enrollmentno"];
									  $username=$row1["username"];
									  $id=$row1["id"];
								    }
									echo "<tr>";
									
									echo "<td>"; echo $fullname;  echo "</td>";
									echo "<td>"; echo $username."(".$enrollmentno.")"; echo "</td>";
									echo "<td>"; echo $row["title"];  echo "</td>";
									echo "<td>"; echo $row["msg"];  echo "</td>";
									echo "<td>"; ?><a href="reply.php?id=<?php echo $id;?>" style="color:blue">Reply</a><?php echo "</td>";
									echo "<td>"; ?><a href="delete_message.php?id=<?php echo $row["id"];?>" style="color:blue">Delete message</a><?php echo "</td>";
									echo "</tr>";
								}
								
								?>
								
								
								</table>
								
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /page content -->


        <?php
		include "footer.php";
		?>

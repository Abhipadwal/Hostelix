<?php
session_start();
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
include('config.php');


if (isset($_SESSION['id'])) {
	$aid = $_SESSION['id'];
	$ret = "select * from users where id=?";
	$stmt = $conn->prepare($ret);
	$stmt->bind_param('i', $aid);
	$stmt->execute(); //ok
	$res = $stmt->get_result();
	while ($row = $res->fetch_object()) { ?>
		<div class="brand clearfix">
			<a href="#" class="logo" style="font-size:35px;">HOSTEL</a>
			<span class="menu-btn"><i class="fa fa-bars"></i></span>
			<ul class="ts-profile-nav">
				<li class="ts-account">
					<a href="#"><img src="img/akshay.jpg" class="ts-avatar hidden-side" alt="">
						<?php echo $row->firstName;
	} ?> <i class="fa fa-angle-down hidden-side"></i>
				</a>
				<ul>
					<li><a href="my-profile.php">My Account</a></li>
					<li><a href="logout.php">Logout</a></li>
				</ul>
			</li>
		</ul>
	</div>

	<?php
} else { ?>
	<div class="brand clearfix">
		<a href="#" class="logo">HOSTEL</a>
		<span class="menu-btn"><i class="fa fa-bars"></i></span>

	</div>
<?php } ?>
<?php
include 'server.php';
$data = array();

if (isset($_POST['schedule_id']) && isset($_POST['schedule_title']) && isset($_POST['schedule_desc']) && isset($_POST['schedule_time'])) {

	$schedule_id = $_POST['schedule_id'];
	$schedule_title = $_POST['schedule_title'];
	$schedule_desc = $_POST['schedule_desc'];
	$schedule_time = $_POST['schedule_time'];

	$sql = "UPDATE immunization_schedule SET schedule_desc = '$schedule_desc', schedule_title = '$schedule_title', schedule_time = '$schedule_time' WHERE schedule_id = '$schedule_id'";
	$user_code = $conn->query($sql);

	if ($user_code === TRUE) {
		$data['hasil'] = '1';
		$data['msg'] = 'Berhasil';
		
	}else{
		$data['hasil'] = '0';
		$data['msg'] = 'Gagal';
	}
	echo json_encode($data);

}
?>

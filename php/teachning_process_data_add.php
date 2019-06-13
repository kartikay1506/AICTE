<?php
include './db.php';
$number = count($_POST["year"]);
session_start();
$institutionId = $_SESSION['institution_code'];
if($number > 0)
{
	for($i=0; $i<$number; $i++)
	{
		if(trim($_POST["year"][$i] != ''))
		{
			$year = mysqli_real_escape_string($conn, $_POST['year'][$i]);
			$semester = mysqli_real_escape_string($conn, $_POST['semester'][$i]);
			$courseCode = mysqli_real_escape_string($conn, $_POST['courseCode'][$i]);
			$scheduleClass = mysqli_real_escape_string($conn, $_POST['scheduleClass'][$i]);
			$heldClass = mysqli_real_escape_string($conn, $_POST['heldClass'][$i]);
			// $file = mysqli_real_escape_string($connect, $_POST['file'][$i]);
			$proof = "NA";
			$sql = "INSERT INTO teaching_process(institute_id, year, semester, course_code, schedule_class, held_class) VALUES('$institutionId', '$year', '$semester', '$courseCode', '$scheduleClass', '$heldClass');";
			mysqli_query($conn, $sql);
		}
	}
	echo "Data Inserted".$number;
}
else
{
	echo "Please Enter Name";
}
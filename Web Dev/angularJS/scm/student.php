<?php
$studentsArray =  array();

$studentsOb = new StdClass();
$studentsOb->name = "Sumit kohli";
$studentsOb->hobbies = "Trekking, Travelling, Coding, movies";
$studentsOb1 = new StdClass();
$studentsOb1->name = "Vivek the Great!";
$studentsOb1->hobbies = "PC games, cricket, Travelling";
$studentsArray[] = $studentsOb;
$studentsArray[] = $studentsOb1;
echo json_encode($studentsArray);
?>
<?php
require 'vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

include_once '../onlinequiz/database.php';

if (isset($_GET['q']) && isset($_GET['title']) && isset($_GET['email'])) {
    $eid = $_GET['q'];
    $title = $_GET['title'];
    $email = $_GET['email'];
    $spreadsheet = new Spreadsheet();
    $sheet = $spreadsheet->getActiveSheet();

    // Marge dan center judul
    $sheet->mergeCells('A1:G1');
    $sheet->setCellValue('A1', 'Rekap Hasil Quiz');
    $sheet->getStyle('A1')->getAlignment()->setHorizontal('center');

    // Judul Kolom
    $sheet->setCellValue('A2', 'No');
    $sheet->setCellValue('B2', 'Nama');
    $sheet->setCellValue('C2', 'Email');
    $sheet->setCellValue('D2', 'Quiz');
    $sheet->setCellValue('E2', 'Quiz Dikerjakan');
    $sheet->setCellValue('F2', 'Jawaban Benar');
    $sheet->setCellValue('G2', 'Jawaban Salah');
    $sheet->setCellValue('H2', 'Skor');

    // Dapatkan data riwayat
    $result = mysqli_query($con, "SELECT * FROM history WHERE eid='$eid' AND email='$email'") or die(mysqli_error($con));

    if (!$result) {
        die("Query to show fields from table failed");
    }

    $i = 3;
    $no = 1;

    while ($row = mysqli_fetch_array($result)) {
        // Periksa ketersediaan kolom yang diperlukan
        if (!isset($row['score'], $row['level'], $row['true'], $row['wrong'], $row['date'])) {
            die("Data tidak lengkap pada baris ke-$i");
        }

        $user = mysqli_query($con, "SELECT name, email FROM user WHERE email='$email'") or die(mysqli_error($con));
        $user_data = mysqli_fetch_array($user);

        $score = $row['score'];
        $level = $row['level'];
        $true = $row['true'];
        $wrong = $row['wrong'];
        $date = $row['date'];

        $sheet->setCellValue('A' . $i, $no++);
        $sheet->setCellValue('B' . $i, $user_data['name']);
        $sheet->setCellValue('C' . $i, $user_data['email']);
        $sheet->setCellValue('D' . $i, $title); // Menggunakan judul dari URL
        $sheet->setCellValue('E' . $i, $level);
        $sheet->setCellValue('F' . $i, $true);
        $sheet->setCellValue('G' . $i, $wrong);
        $sheet->setCellValue('H' . $i, $score);

        $i++;
    }
    $user = mysqli_query($con, "SELECT name, email FROM user WHERE email='$email'") or die(mysqli_error($con));
    $user_data = mysqli_fetch_array($user);
    $name = $user_data['name'];
    
    $filename = 'Report Hasil Quiz ' . $title . ' - ' . $name . '.xlsx';

    $writer = new Xlsx($spreadsheet);
    $writer->save($filename);

    // Paksa unduh file Excel
    header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
    header('Content-Disposition: attachment;filename="' . $filename . '"');
    header('Cache-Control: max-age=0');
    readfile($filename);
    // Komentari atau hapus baris di bawah ini untuk menjaga file di server
    unlink($filename); // Hapus file setelah diunduh
    exit;
}
?>

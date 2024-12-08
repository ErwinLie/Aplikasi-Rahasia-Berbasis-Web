<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <!-- <title>Ecommerce Dashboard &mdash; Stisla</title> -->
  <title><?= $setting-> nama_web?></title>

  <link href="<?= base_url('img/avatar/' . htmlspecialchars($setting->logo_tab)) ?>" rel="icon">
  
  <!-- General CSS Files -->
  <link rel="stylesheet" href="<?= base_url('modules/bootstrap/css/bootstrap.min.css')?>">
  <link rel="stylesheet" href="<?= base_url('modules/fontawesome/css/all.min.css')?>">

  <!-- CSS Libraries -->
  <link rel="stylesheet" href="<?= base_url('modules/jqvmap/dist/jqvmap.min.css')?>">
  <link rel="stylesheet" href="<?= base_url('modules/summernote/summernote-bs4.css')?>">
  <link rel="stylesheet" href="<?= base_url('modules/owlcarousel2/dist/assets/owl.carousel.min.css')?>">
  <link rel="stylesheet" href="<?= base_url('modules/owlcarousel2/dist/assets/owl.theme.default.min.css')?>">

  <!-- Template CSS -->
  <link rel="stylesheet" href="<?= base_url('css/style.css')?>">
  <link rel="stylesheet" href="<?= base_url('css/components.css')?>">
<!-- Start GA -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-94034622-3"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-94034622-3');
</script>
<!-- /END GA --></head>
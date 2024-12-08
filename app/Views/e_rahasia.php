<main role="main" class="main-content">
    <section class="section">
        <div class="section-header">
            <div class="section-header-back">
                <a href="<?= base_url('home/rahasia') ?>" class="btn btn-icon">
                    <i class="fas fa-arrow-left"></i>
                </a>
            </div>
            <h1>Edit Data Rahasia</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active">
                    <a href="<?= base_url('home/dashboard') ?>">Dashboard</a>
                </div>
                <div class="breadcrumb-item active">
                    <a href="<?= base_url('home/rahasia') ?>">Data Rahasia</a>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-7 col-md-12 col-12 col-sm-12">
                <div class="card shadow mb-4">
                    <div class="card-header">
                        <h4>Edit Data Rahasia</h4>
                    </div>
                    <div class="card-body">
                        <form action="<?= base_url('home/aksi_e_rahasia') ?>" method="POST" enctype="multipart/form-data" id="rahasiaForm">
                            <input type="hidden" name="id_rahasia" value="<?= $rahasia->id_rahasia ?>">

                            <!-- Judul -->
                            <div class="form-group row">
                                <label for="judulRahasia" class="col-sm-3 col-form-label">Judul</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="judulRahasia" name="judul" value="<?= esc($rahasia->judul) ?>" required>
                                </div>
                            </div>

                            <!-- Isi Rahasia -->
                            <div class="form-group row">
                                <label for="isiRahasia" class="col-sm-3 col-form-label">Isi Rahasia</label>
                                <div class="col-sm-9">
                                    <textarea class="form-control" id="isiRahasia" name="isi_rahasia" rows="10" required><?= esc($rahasia->isi_rahasia) ?></textarea>
                                </div>
                            </div>

                            <!-- Foto -->
                            <!-- Foto -->
<!-- Foto -->
<div class="form-group row">
    <label class="col-sm-3 col-form-label">Foto</label>
    <div class="col-sm-9">
        <?php if (!empty($rahasia->foto)): ?>
            <?php 
            // Pisahkan nama file berdasarkan koma
            $fotoArray = explode(',', $rahasia->foto); 
            foreach ($fotoArray as $foto): 
                // Pastikan path sesuai dengan lokasi penyimpanan Anda
            ?>
                <img src="<?= base_url('img/avatar/' . $foto) ?>" alt="Foto Rahasia" class="img-fluid mb-2">
            <?php endforeach; ?>
        <?php else: ?>
            <p>Tidak ada foto tersedia.</p>
        <?php endif; ?>
        <input type="file" name="foto[]" class="form-control" accept=".jpg, .jpeg, .png" multiple>
        <small class="form-text text-muted">
            File yang diizinkan: JPG, JPEG, PNG.
        </small>
    </div>
</div>


                            <!-- Video -->
                            <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Video</label>
                                <div class="col-sm-9">
                                    <?php 
                                    if (!empty($rahasia->video)):
                                        $videos = explode(',', $rahasia->video); // Pisahkan data video
                                        foreach ($videos as $video):
                                    ?>
                                        <video controls class="w-100 mb-2" style="max-height: 300px;">
                                            <source src="<?= base_url('img/avatar/' . trim($video)) ?>" type="video/mp4">
                                            Browser Anda tidak mendukung pemutaran video.
                                        </video>
                                    <?php 
                                        endforeach;
                                    else: 
                                    ?>
                                        <p>Tidak ada video tersedia.</p>
                                    <?php endif; ?>
                                    <input type="file" name="video[]" class="form-control" multiple>
                                    <small class="text-muted">Unggah video baru jika ingin mengganti (bisa lebih dari satu).</small>
                                </div>
                            </div>

                            <!-- Submit Button -->
                            <button type="submit" class="btn btn-primary">Simpan Perubahan</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>

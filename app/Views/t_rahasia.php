<main role="main" class="main-content">
    <section class="section">
        <div class="section-header">
            <div class="section-header-back">
                <a href="<?= base_url('home/dashboard') ?>" class="btn btn-icon">
                    <i class="fas fa-arrow-left"></i>
                </a>
            </div>
            <h1>Tambah Data Rahasia</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active">
                    <a href="<?= base_url('home/dashboard') ?>">Dashboard</a>
                </div>
                <div class="breadcrumb-item active">
                    <a href="<?= base_url('home/rahasia') ?>">Rahasia</a>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-7 col-md-12 col-12 col-sm-12">
                <div class="card shadow mb-4">
                    <div class="card-header">
                        <h4>Tambah Data Rahasia</h4>
                    </div>
                    <div class="card-body">
                        <form action="<?= base_url('home/aksi_t_rahasia') ?>" method="POST" enctype="multipart/form-data" id="rahasiaForm">
                            <div class="form-group row">
                                <label for="judulRahasia" class="col-sm-3 col-form-label">Judul</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="judulRahasia" name="judul" required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="isiRahasia" class="col-sm-3 col-form-label">Isi Rahasia</label>
                                <div class="col-sm-9">
                                    <textarea class="form-control" id="isiRahasia" name="isi_rahasia" rows="5" required></textarea>
                                </div>
                            </div>

                            <div id="imageInputs">
                                <div class="form-group row">
                                    <label class="col-sm-3 col-form-label">Upload Gambar</label>
                                    <div class="col-sm-9 d-flex align-items-center">
                                        <input type="file" class="form-control-file mr-2" name="image[]" accept="image/*">
                                        <button type="button" class="btn btn-success btn-sm addImageInput">
                                            <i class="fas fa-plus"></i> Tambah Gambar
                                        </button>
                                    </div>
                                </div>
                            </div>

                            <div id="videoInputs">
                                <div class="form-group row">
                                    <label class="col-sm-3 col-form-label">Upload Video</label>
                                    <div class="col-sm-9 d-flex align-items-center">
                                        <input type="file" class="form-control-file mr-2" name="video[]" accept="video/*">
                                        <button type="button" class="btn btn-success btn-sm addVideoInput">
                                            <i class="fas fa-plus"></i> Tambah Video
                                        </button>
                                    </div>
                                </div>
                            </div>

                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div> <!-- /.card-body -->
                </div> <!-- /.card -->
            </div> <!-- /.col -->
        </div> <!-- /.row -->
    </section>
</main>

<script>
    // Function to attach event listeners for "Tambah Gambar"
    function attachImageButtonListeners() {
        document.querySelectorAll('.addImageInput').forEach(button => {
            button.onclick = function () {
                const imageInputs = document.getElementById('imageInputs');
                const newInput = document.createElement('div');
                newInput.classList.add('form-group', 'row');
                newInput.innerHTML = `
                    <label class="col-sm-3 col-form-label">Upload Gambar</label>
                    <div class="col-sm-9 d-flex align-items-center">
                        <input type="file" class="form-control-file mr-2" name="image[]" accept="image/*">
                        <button type="button" class="btn btn-danger btn-sm cancelInput">
                            <i class="fas fa-times"></i> Cancel
                        </button>
                    </div>
                `;
                imageInputs.appendChild(newInput);
                attachCancelListeners();
            };
        });
    }

    // Function to attach event listeners for "Tambah Video"
    function attachVideoButtonListeners() {
        document.querySelectorAll('.addVideoInput').forEach(button => {
            button.onclick = function () {
                const videoInputs = document.getElementById('videoInputs');
                const newInput = document.createElement('div');
                newInput.classList.add('form-group', 'row');
                newInput.innerHTML = `
                    <label class="col-sm-3 col-form-label">Upload Video</label>
                    <div class="col-sm-9 d-flex align-items-center">
                        <input type="file" class="form-control-file mr-2" name="video[]" accept="video/*">
                        <button type="button" class="btn btn-danger btn-sm cancelInput">
                            <i class="fas fa-times"></i> Cancel
                        </button>
                    </div>
                `;
                videoInputs.appendChild(newInput);
                attachCancelListeners();
            };
        });
    }

    // Function to attach "Cancel" button listeners
    function attachCancelListeners() {
        document.querySelectorAll('.cancelInput').forEach(button => {
            button.onclick = function () {
                const parent = button.closest('.form-group');
                parent.remove();
            };
        });
    }

    // Initial attach of event listeners
    attachImageButtonListeners();
    attachVideoButtonListeners();
    attachCancelListeners();
</script>

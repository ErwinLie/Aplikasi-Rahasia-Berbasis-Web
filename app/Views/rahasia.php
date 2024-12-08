<div class="main-content">
    <section class="section">
        <div class="section-header">
            <div class="section-header-back">
                <a href="<?= base_url('home/dashboard') ?>" class="btn btn-icon"><i class="fas fa-arrow-left"></i></a>
            </div>
            <h1>Data Rahasia</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="<?= base_url('home/dashboard') ?>">Dashboard</a></div>
                <div class="breadcrumb-item active"><a href="<?= base_url('home/rahasia') ?>">Data Rahasia</a></div>
            </div>
        </div>

        <div class="col-lg-10 col-md-12 col-12 col-sm-12">
            <div class="card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h4>Data Rahasia</h4>

                    <div>

                     <!-- Button to Open the Modal for Adding Kelas -->
                     <a href="<?= base_url('home/t_rahasia') ?>" class="btn btn-success">
    <i class="fas fa-plus"></i> Tambah
</a>
                    </div>
                    <div class="ml-auto">
                        <form class="form-inline">
                            <input id="searchInput" class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                        </form>
                    </div>
                </div>
                <div class="card-body p-0">
                    <div class="table-responsive">
                        <table class="table table-striped mb-0">
                            <thead>
                                <tr>
                                    <th scope="col">No</th>
                                    <th scope="col">Judul</th>
                                    <th scope="col">Aksi</th>
                                </tr>
                            </thead>
                            <tbody id="tableBody">
                                <?php 
                                    $no = 1;
                                    foreach ($rahasia as $item) {
                                ?>
                                <tr>
                                    <td><?= $no++ ?></td>
                                    <td><?= esc($item->judul) ?></td>
                                    <td>
                                    <button type="button" 
        class="btn btn-primary btn-action-edit" 
        data-toggle="tooltip" 
        title="Edit"
        data-id_rahasia="<?= $item->id_rahasia ?>"
        data-judul="<?= esc($item->judul) ?>"
        data-isi_rahasia="<?= esc($item->isi_rahasia) ?>"
        onclick="showOtpModal(this)">
    <i class="fas fa-pencil-alt"></i>
</button>
                                        
                                        <a href="<?= base_url('home/hapus_rahasia/' . $item->id_rahasia) ?>" 
                                           class="btn btn-danger btn-action" 
                                           data-toggle="tooltip" 
                                           title="Delete Data">
                                           <i class="fas fa-trash"></i>
                                        </a>
                                    </td>
                                </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<!-- Modal OTP -->
<div class="modal fade" id="otpModal" tabindex="-1" role="dialog" aria-labelledby="otpModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="otpModalLabel">Masukkan Kode OTP</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="otpForm">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="otpInput">Kode OTP</label>
                        <input type="text" class="form-control" id="otpInput" name="otp" placeholder="Masukkan Kode OTP" required>
                        <small id="otpError" class="text-danger d-none">Kode OTP salah, silakan coba lagi!</small>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Verifikasi</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    function showOtpModal(button) {
        // Ambil data dari atribut tombol
        const idRahasia = button.getAttribute('data-id_rahasia');
        const judul = button.getAttribute('data-judul');
        const isiRahasia = button.getAttribute('data-isi_rahasia');

        // Simpan data ke elemen modal OTP (jika diperlukan)
        $('#otpModal').data('id_rahasia', idRahasia);
        $('#otpModal').data('judul', judul);
        $('#otpModal').data('isi_rahasia', isiRahasia);

        // Kirim permintaan untuk memicu fungsi isiemail
        $.ajax({
            url: '<?= base_url('home/isiemail') ?>',
            type: 'POST',
            dataType: 'json',
            success: function (response) {
                if (response.status === 'success') {
                    alert('Kode OTP telah dikirim ke email Anda.');
                } else {
                    alert('Gagal mengirim OTP: ' + response.message);
                }
            },
            error: function () {
                alert('Terjadi kesalahan saat mengirim OTP.');
            }
        });

        // Tampilkan modal OTP
        $('#otpModal').modal('show');
    }

    $(document).ready(function () {
        $('#otpForm').on('submit', function (e) {
            e.preventDefault();
            const otp = $('#otpInput').val();

            $.ajax({
                url: '<?= base_url('home/verifyOtp') ?>', // Sesuaikan URL ke controller
                type: 'POST',
                data: { otp: otp },
                dataType: 'json',
                success: function (response) {
                    if (response.status === 'success') {
                        const idRahasia = $('#otpModal').data('id_rahasia');

                        // Redirect ke halaman edit dengan id_rahasia
                        window.location.href = `<?= base_url('home/e_rahasia') ?>/${idRahasia}`;
                    } else {
                        // Tampilkan pesan error jika OTP salah
                        $('#otpError').text(response.message).removeClass('d-none');
                    }
                },
                error: function () {
                    alert('Terjadi kesalahan, silakan coba lagi.');
                }
            });
        });

        // Reset pesan error saat modal ditutup
        $('#otpModal').on('hidden.bs.modal', function () {
            $('#otpError').addClass('d-none').text('');
            $('#otpInput').val('');
        });
    });
</script>
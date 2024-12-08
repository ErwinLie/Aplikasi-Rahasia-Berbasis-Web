<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\M_rahasia;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
date_default_timezone_set('Asia/Jakarta');
class Home extends BaseController
{
	public function dashboard()
	{
        if (session()->get('id_level')>0) { 
		$model=new M_rahasia;

		$this->log_activity('User Membuka Dashboard');

		$where = array('id_user' => session()->get('id_user'));
		$data['user'] = $model->getWhere('tb_user', $where);

		$where = array('id_setting' => 1);
		$data['setting'] = $model->getWhere('tb_setting',$where);

		echo view('header', $data);
		echo view('menu', $data);
		echo view('footer');

    }else{
		return redirect()->to('home/login');
	}
    }

	public function signup()
	{
        $model=new M_rahasia;
        $where = array('id_setting' => 1);
		$data['setting'] = $model->getWhere('tb_setting',$where);

        $this->log_activity('User Membuka Sign Up');

		echo view('header',$data);
		echo view('signup',$data);
	}

	public function aksi_signup()
{
    $model = new M_rahasia();

    // Log activity for signup
    $this->log_activity('User melakukan Sign Up');

    // Retrieve form data
    $username = $this->request->getPost('username');
    $password = $this->request->getPost('password');
    $email = $this->request->getPost('email');
    $jk = $this->request->getPost('jk');

    // Check if the email already exists in the database
    $existingUser = $model->getWhere('tb_user', ['email' => $email]);

    if ($existingUser) {
        // Email already exists, show error message
        return redirect()->back()->with('error', 'Email sudah terdaftar. Silakan gunakan email lain.');
    }

    // Prepare data to insert
    $data = array(
        'username' => $username,
        'password' => md5($password),  // Hash the password before storing
        'email' => $email,
        'id_level' => '2',
        'foto' => 'avatar-3.png',
        'jk' => $jk
    );

    // Insert data into 'tb_user' table
    $model->tambah('tb_user', $data);

    // Redirect with success message
    return redirect()->to('Home/login')->with('success', 'Sign Up berhasil.');
}

	public function login()
	{
        // if (session()->get('id_level') > 0) {
		$model=new M_rahasia;
		$where = array('id_setting' => 1);
		$data['setting'] = $model->getWhere('tb_setting',$where);

		$this->log_activity('User ke Halaman Login');

		echo view('header', $data);
		echo view('login', $data);
		// echo view('footer');
    // } else {
    //     return redirect()->to('home/login');
    // }
	}

	public function aksilogin()
    {
        $u = $this->request->getPost('email');
        $p = $this->request->getPost('password');
        $captchaAnswer = $this->request->getPost('captcha_answer');

		$this->log_activity('User melakukan Login');

        $model = new M_rahasia();
        $where = array(
            'email' => $u,
            'password' => md5($p)
        );

        $cek = $model->getWhere('tb_user', $where);

        // Offline CAPTCHA answer (should match the one generated in the view)
        if (!$this->isOnline() && !empty($captchaAnswer)) {
            $correctAnswer = $this->request->getPost('correct_captcha_answer');
            if ($captchaAnswer != $correctAnswer) {
                return redirect()->to('Home/login')->with('error', 'Incorrect offline CAPTCHA.');
            }
        }

        if ($cek > 0) {
            // Handle sessions as usual
            session()->set('id_user', $cek->id_user);
            session()->set('id_level', $cek->id_level);
            session()->set('email', $cek->email);
            session()->set('username', $cek->username);

            // Redirect to the dashboard
            return redirect()->to('Home/dashboard');
        } else {
            return redirect()->to('Home/login');
        }
    }

    // Function to check if the client is online
    private function isOnline()
    {
        // A simple method to check if the client is online (can be more sophisticated)
        return @fopen("http://www.google.com:80/", "r");
    }


	public function logout()
	{
		$this->log_activity('User Melakukan Log Out');
		session()->destroy();
		return redirect()->to('Home/login');
	}

	public function profile()
{
    if (session()->get('id_level') > 0) {
        $model = new M_rahasia();

        $this->log_activity('User Membuka Menu Profile');

        $where = array('id_user' => session()->get('id_user'));
        $data['user'] = $model->getWhere('tb_user', $where);
        
        $where = array('id_user' => session()->get('id_user'));
        $data['darren'] = $model->getwhere('tb_user', $where);

        $where = array('id_setting' => 1);
        $data['setting'] = $model->getWhere('tb_setting',$where);

        echo view('header', $data);
        echo view('menu', $data);
        echo view('profile',$data);
        echo view('footer');
    } else {
        return redirect()->to('home/login');
    }
}

public function editfoto()
{
$model = new M_rahasia(); // Make sure this model handles updates to tb_user

$this->log_activity('User Mengedit Foto Profile');

// Get current user data
$userId = session()->get('id_user'); // Correct the session key
$userData = $model->getById($userId); // Ensure this retrieves the correct user data

// Check if a file was uploaded
if ($file = $this->request->getFile('foto')) {
    if ($file->isValid() && !$file->hasMoved()) {
        $newFileName = $file->getRandomName();
        $file->move(ROOTPATH . 'public/img/avatar/', $newFileName); // Save file to the file system
        
        // If the user already has a profile photo, delete the old one
        if ($userData->foto && file_exists(ROOTPATH . 'public/img/avatar/' . $userData->foto)) {
            unlink(ROOTPATH . 'public/img/avatar/' . $userData->foto);
        }
        
        // Update the database with the new file name
        $userDataUpdate = ['foto' => $newFileName];
        $model->edit('tb_user', $userDataUpdate, ['id_user' => $userId]);
    }
}

return redirect()->to('home/profile');
}

public function aksi_e_profile()
{
    if (session()->get('id_level') > 0) {
        $model = new M_rahasia();

        $this->log_activity('User Melakukan Edit Profile');

        $yoga = $this->request->getPost('username');
        $yoga1 = $this->request->getPost('email');
        $id = session()->get('id_user');

        $where = array('id_user' => $id); // Jika id_user adalah kunci utama untuk menentukan record


        $isi = array(
            'username' => $yoga,
            'email' => $yoga1
        );

        $model->edit('tb_user', $isi, $where);
        return redirect()->to('home/profile');
        
    } else {
        return redirect()->to('home/login');
    }
}

public function resetpassword($id)
{
    $model = new M_rahasia;

    $this->log_activity('User Melakukan Reset Password ke Default');

    $table = 'tb_user';
    $kolom = 'id_user';
    
    // Update the password directly without confirmation
    $data = array(
        'password' => md5('1'), // Note: Using md5, but it's better to use password_hash for security.
    );

    // Update the password in the database
    $model->resetpassword($table, $kolom, $id, $data);
    
    // Redirect back to the user list with a success message
    return redirect()->to('Home/user')->with('success', 'Password reset to default (1) successfully.');
}


    public function aksi_changepass()
    {
        $model = new M_rahasia();

        $this->log_activity('User Mengganti Password Lama ke Baru');

        $oldPassword = $this->request->getPost('old');
        $newPassword = $this->request->getPost('new');
        $userId = session()->get('id_level');

        // Dapatkan password lama dari database
        $currentPassword = $model->getPassword($userId);

        // Verifikasi apakah password lama cocok
        if (md5($oldPassword) !== $currentPassword) {
            // Set pesan error jika password lama salah
            session()->setFlashdata('error', 'Password lama tidak valid.');
            return redirect()->back()->withInput();
        }

        // Update password baru
        $data = [
            'password' => md5($newPassword),
            'update_by' => $userId,
            'update_at' => date('Y-m-d H:i:s')
        ];
        $where = ['id_user' => $userId];

        $model->edit('tb_user', $data, $where);

        // Set pesan sukses
        session()->setFlashdata('success', 'Password berhasil diperbarui.');
        return redirect()->to('home/profile');
    }

    public function setting()
	{
		if(session()->get('id_level') == '1'){
		$model = new M_rahasia;

        $this->log_activity('User Membuka Menu Setting');

        $where = array('id_user' => session()->get('id_user'));
        $data['user'] = $model->getWhere('tb_user', $where);

		$where = array('id_setting' => 1);
		$data['setting'] = $model->getWhere('tb_setting',$where);

		echo view('header',$data);
		echo view('menu',$data);
		echo view('setting', $data);
		echo view('footer');
		// print_r($data);
	}else{
		return redirect()->to('home/error404');
	}
	}

    public function aksi_e_setting()
{
    $model = new M_rahasia();

    $this->log_activity('User Melakukan Edit Setting');

    $a = $this->request->getPost('nama_web');
    $icon = $this->request->getFile('logo_tab');
    $dash = $this->request->getFile('logo_dashboard');
    $login = $this->request->getFile('logo_login');

	// $this->log_activity('User melakukan Setting');

    // Debugging: Log received data
    log_message('debug', 'Website Name: ' . $a);
    log_message('debug', 'Tab Icon: ' . ($icon ? $icon->getName() : 'None'));
    log_message('debug', 'Dashboard Icon: ' . ($dash ? $dash->getName() : 'None'));
    log_message('debug', 'Login Icon: ' . ($login ? $login->getName() : 'None'));

    $data = ['nama_web' => $a];

    if ($icon && $icon->isValid() && !$icon->hasMoved()) {
        $icon->move(ROOTPATH . 'public/img/avatar/', $icon->getName());
        $data['logo_tab'] = $icon->getName();
    }

    if ($dash && $dash->isValid() && !$dash->hasMoved()) {
        $dash->move(ROOTPATH . 'public/img/avatar/', $dash->getName());
        $data['logo_dashboard'] = $dash->getName();
    }

    if ($login && $login->isValid() && !$login->hasMoved()) {
        $login->move(ROOTPATH . 'public/img/avatar/', $login->getName());
        $data['logo_login'] = $login->getName();
    }

    $where = ['id_setting' => 1];
    $model->edit('tb_setting', $data, $where);

    return redirect()->to('home/setting');
}

private function log_activity($activity)
{
	$model = new M_rahasia();
	$data = [
		'id_user'    => session()->get('id_user'),
		'activity'   => $activity,
		'timestamp' => date('Y-m-d H:i:s'),
		'delete_at' => '0'
	];

	$model->tambah('tb_activity', $data);
}

public function activity()
{
	if (session()->get('id_level')>0) {
		$model = new M_rahasia();
		
		$where = array('id_user'=>session()->get('id_user'));
		$data['user'] = $model->getWhere('tb_user', $where);
		
		$where = array('id_setting' => 1);
		$data['setting'] = $model->getWhere('tb_setting',$where);
		
		$this->log_activity('User membuka Log Activity');
		
		$data['erwin'] = $model->join('tb_activity', 'tb_user',
		'tb_activity.id_user = tb_user.id_user',$where);

	echo view('header' ,$data);
	echo view('menu',$data);
	echo view('activity',$data);
	echo view('footer');

	}else{
		return redirect()->to('home/login');
	}
	}

	public function hapus_activity($id){

        $model = new M_rahasia();

        $this->log_activity('User Melakukan Hapus Activity');
    
        $where = array('id_activity'=>$id);
        $model->hapus('tb_activity',$where);
        
        return redirect()->to('Home/activity');
    }

    public function user()
	{
        if (session()->get('id_level') > 0) {
        $model=new M_rahasia;

        $this->log_activity('User Membuka Menu User');

        $where = array('id_user' => session()->get('id_user'));
        $data['user'] = $model->getWhere('tb_user', $where);

        $where = array('id_setting' => 1);
		$data['setting'] = $model->getWhere('tb_setting',$where);

        $where = array('tb_user.delete_at' => NULL);
        // $data['erwin'] = $model->joinuser('tb_user',
		// 'tb_kelas',
		// 'tb_user.id_kelas = tb_kelas.id_kelas', $where);

        // $data['erwin'] = $model->tampil('tb_user');
        $data['erwin'] = $model->getWhere2('tb_user', $where);

		echo view('header', $data);
        echo view('menu', $data);
        echo view('user', $data);
        echo view('footer');
    } else {
        return redirect()->to('home/login');
    }
	}

    public function aksi_t_user()
    {
        $model = new M_rahasia();

        $this->log_activity('User Melakukan Tambah User');

        
            $b = $this->request->getPost('username');
            $c = $this->request->getPost('email');
            $d = $this->request->getPost('level');
            $e = $this->request->getPost('jk');
            
            $isi = array(
                // 'nama' => $a,
                'username' => $b,
                'email' => $c,
                'id_level' => $d,
                'jk' => $e,
                'password' => md5(1),
                'foto' => 'avatar-3.png', // Add default profile picture
            );
            
            $model->tambah('tb_user', $isi);
            return redirect()->to('Home/user')->with('success', 'Data user berhasil ditambahkan.');
            // print_r($isi);
        }
    

        public function aksi_e_user()
        {
            $model = new M_rahasia();
        
            $this->log_activity('User Melakukan Edit User');
        
            $id_user = $this->request->getPost('id_user');
            // $nis = $this->request->getPost('nis');
            $username = $this->request->getPost('username');
            $email = $this->request->getPost('email');
            $level = $this->request->getPost('level');
            $jk = $this->request->getPost('jk');
            // $kelas = $this->request->getPost('kelas');
            $id_session_user = session()->get('id_user');
            $where = ['id_user' => $id_user];
        
            // Fetch old data from tb_user
            $oldData = $model->getWhere('tb_user', $where);
        
            // Backup old data if it exists
            if ($oldData) {
                $backupData = [
                    'id_user' => $oldData->id_user,
                    // 'nis' => $oldData->nis,
                    'username' => $oldData->username,
                    'email' => $oldData->email,
                    'id_level' => $oldData->id_level,
                    'jk' => $oldData->jk,
                    // 'id_kelas' => $oldData->id_kelas,
                     'foto' => $oldData->foto,
                    'update_by' => $oldData->update_by,
                    'password' => $oldData->password,
                    'update_at' => $oldData->update_at,
                    'backup_at' => date('Y-m-d H:i:s'), // current time
                    'backup_by' => $id_session_user
                ];
        
                // Save old data to a backup table
                if ($model->saveToBackup('tb_user_backup', $backupData)) {
                    echo "Data backup berhasil disimpan!";
                } else {
                    echo "Gagal menyimpan data ke backup.";
                }
            } else {
                echo "Data lama tidak ditemukan.";
            }
        
            // Prepare updated data
            $newData = [
                // 'nis' => $nis,
                'username' => $username,
                'email' => $email,
                'id_level' => $level,
                'jk' => $jk,
                // 'id_kelas' => $kelas,
                // 'foto' => $foto,
                // 'password' => $password,
            ];
        
            // Update tb_user with new data
            $model->edit('tb_user', $newData, $where);
            // print_r($backupData);
            return redirect()->to('Home/user')->with('success', 'Data user berhasil diperbarui.');
        }

    public function restore_edit_user()
	{
        if (session()->get('id_level') > 0) {
		$model = new M_rahasia;

        $this->log_activity('User Membuka Menu Restore Edit User');

        $where = array('id_user' => session()->get('id_user'));
        $data['user'] = $model->getWhere('tb_user', $where);

        $where = array('id_setting' => 1);
		$data['setting'] = $model->getWhere('tb_setting',$where);

		$where = array('tb_user_backup.delete_at' => NULL);
		$data['erwin'] = $model->tampilwhere('tb_user_backup', $where);

		echo view ('header', $data);
		echo view ('menu', $data);
		echo view ('restore_edit_user',$data);
		echo view ('footer');

    } else {
        return redirect()->to('home/login');
    }
}

public function restore_data_edit_user($backup_id)
{
    $model = new M_rahasia();

    // Fetch the backup data by the kelas ID
    $backupData = $model->db->table('tb_user_backup')->where('id_user', $backup_id)->get()->getRow();

    if ($backupData) {
        // Prepare the data to restore into tb_kelas
        $data = [
            'username' => $backupData->username,
            'password' => $backupData->password,
            'email' => $backupData->email,
            'id_level' => $backupData->id_level,
            'jk' => $backupData->jk,
            'foto' => $backupData->foto,
            'update_by' => $backupData->backup_by,
            'update_at' => $backupData->backup_at,
        ];

        // Update the tb_kelas table with the backup data
        $model->db->table('tb_user')->where('id_user', $backup_id)->update($data);

        // Delete the backup data after restoration
        $model->db->table('tb_user_backup')->where('id_user', $backup_id)->delete();

        // Log the restore activity
        $this->log_activity('User Restore Data User');

        return redirect()->to('Home/user')->with('success', 'Data user berhasil dipulihkan dari backup.');
    }

    return redirect()->to('Home/user')->with('error', 'Gagal memulihkan data.');
}

public function restore_hapus_user()
{
    if (session()->get('id_level') > 0) {
    $model = new M_rahasia;

    $this->log_activity('User Membuka Menu Restore Hapus User');

    $where = array('id_user' => session()->get('id_user'));
    $data['user'] = $model->getWhere('tb_user', $where);

    // $where = 'tb_mapel.delete_at is not NULL';
    // $data['erwin'] = $model->joinuser('tb_mapel',
    // 'tb_user',
    // 'tb_mapel.id_user = tb_user.id_user', $where);

    $where = 'tb_user.delete_at is not NULL';
    $data['erwin'] = $model->tampilwhere('tb_user', $where);

    $where = array('id_setting' => 1);
    $data['setting'] = $model->getWhere('tb_setting',$where);

    // $where = array('id_level' => 4);
    // $data['u'] = $model->tampilwhere('tb_user', $where);

    echo view ('header', $data);
    echo view ('menu', $data);
    echo view ('restore_hapus_user',$data);
    echo view ('footer');

} else {
    return redirect()->to('home/login');
}
    
}

public function hapus_user($id)
{
    $model = new M_rahasia();

    $this->log_activity('User melakukan Hapus User');

    $id_user = session()->get('id_user');

    $where = array('id_user'=>$id);
    $isi = array(

        'delete_at' => date('Y-m-d H:i:s'),
        'delete_by' => $id_user
);
    $model->edit('tb_user',$isi,$where);
    
    return redirect()->to('Home/user');
}

public function hapus_restore_user($id)
{
    $model = new M_rahasia();

    $this->log_activity('User melakukan Restore User');

    $where = array('id_user'=>$id);
    $isi = array(

        'delete_at' => NULL,
        'delete_by' => NULL,
);
    $model->edit('tb_user', $isi,$where);
    
    return redirect()->to('Home/user');
}

public function hapus_user_permanen($id)
{
    $model = new M_rahasia();

    $this->log_activity('User melakukan Penghapusan Data User Permanen');

    $where = array('id_user'=>$id);
    $model->hapus('tb_user',$where);
    
    return redirect()->to('Home/user');
}

public function rahasia()
{
    if (session()->get('id_level') > 0) {
    $model=new M_rahasia;

    $this->log_activity('User Membuka Menu Rahasia');

    $where = array('id_user' => session()->get('id_user'));
    $data['user'] = $model->getWhere('tb_user', $where);

    $where = array('id_setting' => 1);
    $data['setting'] = $model->getWhere('tb_setting',$where);

    // $where = array('tb_user.delete_at' => NULL);
    // $data['erwin'] = $model->joinuser('tb_user',
    // 'tb_kelas',
    // 'tb_user.id_kelas = tb_kelas.id_kelas', $where);

    $where = array('id_user' => session()->get('id_user'));
    $data['rahasia'] = $model->getWhere2('tb_rahasia',$where);
    // $data['erwin'] = $model->getWhere2('tb_user', $where);

    echo view('header', $data);
    echo view('menu', $data);
    echo view('rahasia', $data);
    echo view('footer');
} else {
    return redirect()->to('home/login');
}
}

public function t_rahasia()
{
    if (session()->get('id_level') > 0) {
    $model=new M_rahasia;

    $this->log_activity('User Membuka Menu Tambah Rahasia');

    $where = array('id_user' => session()->get('id_user'));
    $data['user'] = $model->getWhere('tb_user', $where);

    $where = array('id_setting' => 1);
    $data['setting'] = $model->getWhere('tb_setting',$where);

    // $where = array('id_user' => session()->get('id_user'));
    // $data['rahasia'] = $model->getWhere2('tb_rahasia',$where);

    echo view('header', $data);
    echo view('menu', $data);
    echo view('t_rahasia', $data);
    echo view('footer');
} else {
    return redirect()->to('home/login');
}
}

// public function aksi_t_rahasia()
// {
//     $model = new M_rahasia();

//     $this->log_activity('User Melakukan Tambah Rahasia');

    
//         $b = $this->request->getPost('judul');
//         $c = $this->request->getPost('isi_rahasia');
//         $id_user = session()->get('id_user'); // Ambil id_user dari sesi
        
//         $isi = array(
//             'judul' => $b,
//             'isi_rahasia' => $c,
//             'id_user' => $id_user, // Tambahkan id_user ke data
//         );
        
//         $model->tambah('tb_rahasia', $isi);
//         return redirect()->to('Home/rahasia')->with('success', 'Data user berhasil ditambahkan.');
//     }

public function aksi_t_rahasia()
{
    $model = new M_rahasia();
    $this->log_activity('User Melakukan Tambah Rahasia');

    $judul = $this->request->getPost('judul');
    $isi_rahasia = $this->request->getPost('isi_rahasia');
    $id_user = session()->get('id_user'); // Ambil id_user dari sesi

    // Handle multiple image uploads
    $uploadedImages = [];
    $imageFiles = $this->request->getFileMultiple('image'); // Gunakan getFileMultiple
    if (!empty($imageFiles)) {
        foreach ($imageFiles as $image) {
            if ($image->isValid() && !$image->hasMoved()) {
                $imageName = $image->getRandomName();
                $image->move(ROOTPATH . 'public/img/avatar/', $imageName); // Path untuk menyimpan file
                $uploadedImages[] = $imageName;
            }
        }
    }

    // Handle multiple video uploads
    $uploadedVideos = [];
    $videoFiles = $this->request->getFileMultiple('video'); // Gunakan getFileMultiple
    if (!empty($videoFiles)) {
        foreach ($videoFiles as $video) {
            if ($video->isValid() && !$video->hasMoved()) {
                $videoName = $video->getRandomName();
                $video->move(ROOTPATH . 'public/img/avatar/', $videoName); // Path untuk menyimpan file
                $uploadedVideos[] = $videoName;
            }
        }
    }

    // Convert arrays to string using implode
    $imagesString = implode(',', $uploadedImages);
    $videosString = implode(',', $uploadedVideos);

    // Prepare data for database insertion
    $data = [
        'judul' => $judul,
        'isi_rahasia' => $isi_rahasia,
        'id_user' => $id_user,
        'foto' => $imagesString,
        'video' => $videosString,
    ];

    // Insert data into the database
    $model->tambah('tb_rahasia', $data);

    return redirect()->to('Home/rahasia')->with('success', 'Data rahasia berhasil ditambahkan.');
}

public function e_rahasia($id)
{
    if (session()->get('id_level') > 0) {
    $model=new M_rahasia;

    $this->log_activity('User Membuka Menu Edit Rahasia');

    $where = array('id_user' => session()->get('id_user'));
    $data['user'] = $model->getWhere('tb_user', $where);

    $where = array('id_setting' => 1);
    $data['setting'] = $model->getWhere('tb_setting',$where);

    $where=array('id_rahasia'=>$id);
	$data['rahasia']=$model->getWhere('tb_rahasia', $where);

    // $where = array('id_user' => session()->get('id_user'));
    // $data['rahasia'] = $model->getWhere2('tb_rahasia',$where);

    echo view('header', $data);
    echo view('menu', $data);
    echo view('e_rahasia', $data);
    echo view('footer');
} else {
    return redirect()->to('home/login');
}
}

    public function aksi_e_rahasia()
    {
        if (session()->get('id_level') > 0) {
            $model = new M_rahasia();
            
            // Log activity
            $this->log_activity('User Melakukan Edit Data Rahasia');
            
            // Retrieve data from form input
            $id_rahasia = $this->request->getPost('id_rahasia');
            $judul = $this->request->getPost('judul');
            $isi_rahasia = $this->request->getPost('isi_rahasia');
            
            // Create condition array for update
            $where = ['id_rahasia' => $id_rahasia];
            
            // Create data array to update
            $data = [
                'judul' => $judul,
                'isi_rahasia' => $isi_rahasia,
            ];
            
            // Update data in the database
            $model->edit('tb_rahasia', $data, $where);
            
            return redirect()->to('home/rahasia')->with('success', 'Data rahasia berhasil diubah.');
        } else {
            return redirect()->to('home/login');
        }
    }

    public function hapus_rahasia($id)
{
    $model = new M_rahasia();

    $this->log_activity('User melakukan Penghapusan Data Rahasia');

    $where = array('id_rahasia'=>$id);
    $model->hapus('tb_rahasia',$where);
    
    return redirect()->to('Home/rahasia');
}

    public function verifyOtp()
{
    $model = new M_rahasia();
    $otp = $this->request->getPost('otp'); // Ambil OTP dari input form
    $email = $this->request->getPost('email'); // Ambil OTP dari input form

    // Validasi input
    if (empty($otp)) {
        return $this->response->setJSON(['status' => 'error', 'message' => 'Kode OTP tidak boleh kosong']);
    }

    // Load model atau akses database langsung
    $db = \Config\Database::connect();

    // Cek apakah OTP valid dalam waktu 5 menit
    $query = $db->query("
        SELECT * 
        FROM tb_otp 
        WHERE otp = ? 
          AND waktu >= DATE_SUB(NOW(), INTERVAL 5 MINUTE)
        LIMIT 1
    ", [$otp]);

    $result = $query->getRow();

    if ($result > 0) {
        // Jika OTP valid, hapus dari database untuk satu kali penggunaan
        $db->table('tb_otp')->delete(['id_otp' => $result->id_otp]);
        $data = [
            'email' => $email
        ];
        $where = array('id_user' => session()->get('id_user'));
        $model->edit('tb_user', $data, $where);

        //return $this->response->setJSON(['status' => 'success', 'message' => 'Kode OTP valid']);
        $response['status'] = 'success';
        $response['message'] = 'Kode OTP valid';
        return $this->response->setJSON($response);
    } else {
        return $this->response->setJSON(['status' => 'error', 'message' => 'Kode OTP tidak valid atau kadaluarsa']);
    }
}

public function generateOtp($otp)
{
    $db = \Config\Database::connect();
    $db->table('tb_otp')->insert([
        'otp' => $otp,
        'waktu' => date('Y-m-d H:i:s'),
    ]);
}

public function isiemail()
{
    $model = new M_rahasia();
    $request = service('request');

    // Prepare the response array
    $response = [
        'status' => 'error', // Default status is error
        'message' => 'Terjadi kesalahan saat mengirim OTP.'
    ];

    if ($request->getMethod() == 'post') {
        // Email is fetched from session, no need to get it from the post data
        $email = session()->get('email');

        // Generate OTP (6 digit random number)
        $otp = random_int(100000, 999999);

        // Save OTP and timestamp in the database
        $data = [
            'otp' => $otp,
            'waktu' => date('Y-m-d H:i:s') // Current timestamp
        ];
        $model->tambah('tb_otp', $data);

        // Load Composer's autoloader
        require ROOTPATH . 'vendor/autoload.php';

        $mail = new PHPMailer(true);
        try {
            // Server settings
            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';
            $mail->SMTPAuth = true;
            $mail->Username = 'wlie659@gmail.com'; // Replace with your email
            $mail->Password = 'dfks zkvb cpvw adzu'; // Replace with your app password
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
            $mail->Port = 587; // TLS port

            // Recipients
            $mail->setFrom('wlie659@gmail.com', 'WLIE OFFICIAL');
            $mail->addAddress($email); // Use the email from session

            // Content
            $mail->isHTML(true);
            $mail->Subject = 'Kode OTP WLIEOFFICIAL';
            $mail->Body = 'Kode OTP Anda adalah: <b>' . $otp . '</b><br>Kode ini berlaku selama 5 menit. Jangan berikan kode ini kepada siapa pun.';

            // Send the email
            $mail->send();

            // If email sent successfully
            $response['status'] = 'success';
            $response['otp'] = $otp;
            $response['message'] = 'Kode OTP berhasil dikirim ke email Anda.';
        } catch (Exception $e) {
            // If an error occurs while sending email
            $response['message'] = 'Message could not be sent. Mailer Error: ' . $mail->ErrorInfo . $email;
        }
    }

    // Return the response as JSON
    return $this->response->setJSON($response);
}

public function saveEmail()
{
    $model = new M_rahasia();
    $request = service('request');

    $response = [
        'status' => 'error',
        'message' => 'Terjadi kesalahan saat menyimpan email.'
    ];

    if ($request->getMethod() === 'post') {
        $email = $request->getPost('email'); // Ambil email dari request

        if ($email) {
            // Update email di session (atau database sesuai kebutuhan)
            session()->set('email', $email);

            // Kirim respons berhasil
            $response['status'] = 'success';
            $response['message'] = 'Email berhasil disimpan.';
        } else {
            $response['message'] = 'Email tidak valid.';
        }
    }

    return $this->response->setJSON($response);
}


}

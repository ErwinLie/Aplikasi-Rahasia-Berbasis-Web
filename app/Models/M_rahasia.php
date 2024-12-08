<?php

namespace App\Models;
use CodeIgniter\Model;

Class M_rahasia extends Model
{ 
    public function tampil($tabel){
        return $this->db->table($tabel)
                        ->get()
                        ->getResult();
    }

    public function tampilwhere($tabel, $where){
        return $this->db->table($tabel)
                        ->where($where)
                        ->get()
                        ->getResult();
    }

    public function tampil2($tabel){
        return $this->db->table($tabel)
                        ->orderBy('id_kelas', 'DESC')
                        ->get()
                        ->getResult();
    }
  
	public function edit($tabel, $isi, $where){
        return $this->db->table($tabel)
                        ->update($isi,$where);
    }

    public function updateData($table, $whereColumn, $whereValue, $data)
{
    $builder = $this->db->table($table);
    $builder->where($whereColumn, $whereValue);
    return $builder->update($data);
}

    public function hapus($table,$where)
    {
        return $this->db->table($table)
                        ->delete($where);

    }
    
    public function getWhere($table, $where)
    {
        return $this->db->table($table)
                        ->where($where)
                        ->get()
                        ->getRow();
    }

    public function getWhere2($table, $where)
{
    return $this->db->table($table)
                    ->where($where)
                    ->get()
                    ->getResult(); // Mengembalikan array objek
    // atau
    // ->getResultArray(); // Mengembalikan array asosiatif
}

public function getWhere3($table, $where, $where2, $where3)
{
    return $this->db->table($table)
                    ->where($where)
                    ->where($where2)
                    ->where($where3)
                    ->get()
                    ->getRow(); // Mengembalikan array objek
    // atau
    // ->getResultArray(); // Mengembalikan array asosiatif
}


    public function getById($id)
    {
        return $this->db->table('tb_user')
            ->where('id_user', $id)
            ->get()
            ->getRow();
    }

    public function resetpassword($table,$kolom,$id,$data)
{
    
    $this->db->table($table)->where($kolom, $id)->update($data);
}

    public function getPassword($userId)
    {
        return $this->db->table('tb_user')
            ->select('password')
            ->where('id_user', $userId)
            ->get()
            ->getRow()
            ->password;
    }
    
    public function join($tabel, $tabel2, $on){
        return $this->db->table($tabel)
                        ->join($tabel2, $on, 'left')
                        ->get()
                        ->getResult();
    }
    public function joinWhere($tabel, $tabel2, $on, $where){
        return $this->db->table($tabel)
                        ->join($tabel2, $on, 'left')
                        ->getWhere($where)
                        ->getRow();
    
    }

    public function joinWheregetResult($tabel, $tabel2, $on, $where){
        return $this->db->table($tabel)
                        ->join($tabel2, $on)
                        ->getWhere($where)
                        ->getResult();
    
    }

    public function joinWheregetResult2($tabel, $tabel2, $on, $where, $where1)
{
    return $this->db->table($tabel)
                    ->join($tabel2, $on)
                    ->where($where)  // Apply the first condition
                    ->where($where1) // Apply the second condition
                    ->get()          // Execute the query
                    ->getResult();   // Get the result as an array of objects
}

// public function joinFiveWheregetResult2($tabel, $tabel2, $tabel3, $tabel4, $tabel5, $on, $on2, $on3, $on4, $where, $where1)
// {
//     return $this->db->table($tabel)
//                     ->join($tabel2, $on)
//                     ->join($tabel3, $on2)
//                     ->join($tabel4, $on3)
//                     ->join($tabel5, $on4 )
//                     ->where($where)  // Apply the first condition
//                     ->where($where1) // Apply the second condition
//                     ->get()          // Execute the query
//                     ->getResult();   // Get the result as an array of objects
// }

    public function joinThreeWhere($tabel, $tabel2, $tabel3, $on, $on2, $where){
        return $this->db->table($tabel)
                        ->join($tabel2, $on, 'left')
                        ->join($tabel3, $on2, 'left')
                        ->getWhere($where)
                        ->getRow();
    
    }

    public function joinThreeWheregetResult($tabel, $tabel2, $tabel3, $on, $on2, $where){
        return $this->db->table($tabel)
                        ->join($tabel2, $on)
                        ->join($tabel3, $on2)
                        ->getWhere($where)
                        ->getResult();
    
    }

    public function joinThreeTables($tabel, $tabel2, $tabel3, $on1, $on2){
        return $this->db->table($tabel)
        ->join($tabel2, $on1, 'left')
        ->join($tabel3, $on2, 'left')
        ->get()
        ->getResult();
    }

    public function joinFourWheregetResult($tabel, $tabel2, $tabel3, $tabel4, $on, $on2, $on3, $where){
        return $this->db->table($tabel)
                        ->join($tabel2, $on)
                        ->join($tabel3, $on2)
                        ->join($tabel4, $on3)
                        ->getWhere($where)
                        ->getResult();
    
    }

    public function joinFourTables($tabel, $tabel2, $tabel3, $tabel4, $on1, $on2, $on3){
        return $this->db->table($tabel)
        ->join($tabel2, $on1, 'left')
        ->join($tabel3, $on2, 'left')
        ->join($tabel4, $on3, 'left')
        ->get()
        ->getResult();
     }

     public function joinFourWhere($tabel, $tabel2, $tabel3, $tabel4, $on, $on2, $on3, $where){
        return $this->db->table($tabel)
                        ->join($tabel2, $on, 'left')
                        ->join($tabel3, $on2, 'left')
                        ->join($tabel4, $on3, 'left')
                        ->getWhere($where)
                        ->getRow();
    
    }
     
    public function joinFiveTables($tabel, $tabel2, $tabel3, $tabel4,$tabel5, $on1, $on2, $on3, $on4){
         return $this->db->table($tabel)
         ->join($tabel2, $on1, 'left')
         ->join($tabel3, $on2, 'left')
         ->join($tabel4, $on3, 'left')
         ->join($tabel5, $on4, 'left')
         ->get()
         ->getResult();
      }

      public function joinSixTables($tabel, $tabel2, $tabel3, $tabel4, $tabel5, $tabel6, $on1, $on2, $on3, $on4, $on5) {
        return $this->db->table($tabel)
            ->join($tabel2, $on1, 'left')
            ->join($tabel3, $on2, 'left')
            ->join($tabel4, $on3, 'left')
            ->join($tabel5, $on4, 'left')
            ->join($tabel6, $on5, 'left')
            ->get()
            ->getResult();
    }

      public function joinFiveWhere($tabel, $tabel2, $tabel3, $tabel4, $tabel5, $on, $on2, $on3, $on4, $where){
        return $this->db->table($tabel)
                        ->join($tabel2, $on, 'left')
                        ->join($tabel3, $on2, 'left')
                        ->join($tabel4, $on3, 'left')
                        ->join($tabel5, $on4, 'left')
                        ->getWhere($where)
                        ->getRow();
    
    }

    public function joinFiveWheregetResult($tabel, $tabel2, $tabel3, $tabel4, $tabel5, $on, $on2, $on3, $on4, $where){
        return $this->db->table($tabel)
                        ->join($tabel2, $on, 'left')
                        ->join($tabel3, $on2, 'left')
                        ->join($tabel4, $on3, 'left')
                        ->join($tabel5, $on4, 'left')
                        ->getWhere($where)
                        ->getResult();
    
    }

    public function joinSixWheregetResult($tabel, $tabel2, $tabel3, $tabel4, $tabel5, $tabel6, $on, $on2, $on3, $on4, $on5, $where1, $where2, $where3, $where4)
{
    $builder = $this->db->table($tabel)
                        ->join($tabel2, $on, 'left')
                        ->join($tabel3, $on2, 'left')
                        ->join($tabel4, $on3, 'left')
                        ->join($tabel5, $on4, 'left')
                        ->join($tabel6, $on5, 'left');

    // Apply where conditions
    if (!empty($where1)) {
        $builder->where($where1);
    }
    if (!empty($where2)) {
        $builder->where($where2);
    }
    if (!empty($where3)) {
        $builder->where($where3);
    }
    if (!empty($where4)) {
        $builder->where($where4);
    }

    return $builder->get()->getResult();
}
    
    public function tambah($tabel, $isi){
        return $this->db->table($tabel)
                        ->insert($isi);
    }

    public function upload($photo)
    {
        $imageName = $photo->getName();
        $photo->move(ROOTPATH . 'public/img', $imageName);
    }

    public function cari($tabel,$tabel2,$on,$awal,$akhir, $field){
        return $this->db->table($tabel)
                        ->join($tabel2,$on,'left')
                        ->getwhere($field." between '$awal' and '$akhir'")
                        ->getResult();
    }

public function saveToBackup($table, $data)
{
    $this->db->table($table)->insert($data);
}

public function getNewOrderNumber()
{
    // Retrieve the latest order number from the `tb_pemesanan` table
    $latestOrder = $this->db->table('tb_pemesanan')
        ->select('no_pemesanan')
        ->orderBy('id_pemesanan', 'DESC')
        ->limit(1)
        ->get()
        ->getRow();

    if ($latestOrder) {
        // Extract the numeric part of the order number
        $lastNumber = (int)substr($latestOrder->no_pemesanan, 4);
        $newNumber = $lastNumber + 1;
    } else {
        // If there is no existing order, start with 1
        $newNumber = 1;
    }

    // Format the new order number with prefix "CMP-" and leading zeros
    return 'CMP-' . str_pad($newNumber, 4, '0', STR_PAD_LEFT);
}

public function insertTransaction($data)
    {
        return $this->db->table('tb_transaksi')->insert($data);
    }

}
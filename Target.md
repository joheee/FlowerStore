# TEMA TOKO BUNGA

# TERMS AND CONDITIONS
    [v] halaman home.php
    [] connect mysql
    [v] halaman css

# PERSYARATAN
    [v] ada 8 item yang dijual ke pengunjung
    [v] ada gambar untuk tiap item yang dijual (dari url ajah)
    [v] semua info ditampilkan dari db
    [v] pake table html
    [v] taroh lencana HTML5 dan CSS3 di tiap halaman web

# HALAMAN BERANDA (HOME.PHP)
    [v] link pertama untuk pengguna membeli item
    [] link kedua buat admin untuk mencantumkan semua pembelian
    [v] link ketiga buat admin untuk mencantumkan semua pelanggan

#  HALAMAN SEMUA PEMBELIAN
    [] detail barang yang telah dibeli
    [] tampilin
        [] nama pengunjung
        [] id barang

# HALAMAN SEMUA PELANGGAN
    [v] detail semua pelanggan di database
    [v] tampilin
        [v] nama pengunjung
        [v] id pengunjung

# HALAMAN PEMBELIAN
    [] tampilin item dan harga tiap item yang dijual
    [] pengunjung bisa pilih lebih dari satu item
    [] abis dikirim pilihannya, muncul pop up tiap item dan harganya
        [] harga total tidak termasuk PPN
        [] harga total termasuk PPN (dibulatkan ke sen terdekat)
        [] opsi lanjutkan ke pembelian
            [] tambahin ke db 
            [] pesan transaksi telah selesai
            [] opsi kembali ke halaman beranda
            [] opsi kembali ke halaman pembelian
        [] opsi kembali ke halaman beranda
        [] opsi kembali ke halaman pembelian

# CATATAN
    [] harus produce model data untuk mencerminkan kebutuhan ini


# DATABASE
    ms_flower
        [] flower_id
        [] flower_image
        [] flower_title
        [] flower_price
        [] flower_desc
    

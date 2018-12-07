## Implementasi Raft
1. Nyalakan Web Server 
2. Aktifkan semua storage node untuk melakukan leader election 
3. Buka dari browser setelah run web server pada client: `localhost:5555`
4. Masukkan pesan pada kolom raft editor, lalu klik Write
5. Di terminal akan terlihat pesan yang ditulis pada masing-masing node
6. Jika node ditambah, node tersebut akan otomatis menjadi follower
7. Cek konsistensi data dengan cara buka terminal baru masuk ke folder server
8. Jalankan pada terminal server tersebut 'py com.py get [node_host:node_port]'
9. Akan terlihat value pada node tersebut. Ganti port untuk mengecek pada masing-masing node
10. Klik Read pada browser, maka akan muncul pesan yang ditulis sebelumnya

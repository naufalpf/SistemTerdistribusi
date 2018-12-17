# Cara Running Implementasi
### 1. Install virtualenv

    - $ py -m pip install virtualenv

### 2. Install Dependencies untuk Server & Client pada Windows

    $ virtualenv -p py .env               # Membuat virtual environment menggunakan python3
    $ .env\Scripts\activate.bat           # Mengaktifkan virtual environment
    $ cd server                           # Masuk ke folder server          
    $ pip install -r requirements.txt     # Install semua dependencies yang diperlukan

    $ .env\Scripts\activate.bat && cd server && pip install -r requirements.txt

 Edit file `nodes.txt` untuk mengkonfigurasi dan melihat node mana yang nanti akan digunakan
 Keluar dari folder server dan masuk ke folder cmd

<pre>$ cd cmd                           # Masuk folder cmd</pre>
 
### 3. Jalankan Web Server 
    $ run_web_server.bat                # Untuk menyalakan web server yang digunakan oleh client

    $ .env\Scripts\activate.bat && cd cmd && run_web_server.bat

### 4. Aktifkan Storage Node untuk Lead Election
    Buka pada Terminal lain dan aktifkan virtual environment
    $ .env\Scripts\activate.bat  
    Jalankan node yang digunakan sesuai pada file nodes.txt
    Aktifkan tiap node melalui terminal yang berbeda
    $ start_node_0.bat                  # Untuk start node 0
    $ start_node_1.bat                  # Untuk start node 1
    $ start_node_2.bat                  # Untuk start node 2
    $ start_node_3.bat                  # Untuk start node 3

    Jika ingin menyalakan semua node sekaligus, jalankan fungsi
    $ start_all_nodes.bat               # To start all nodes

##### Aktifkan Storage
    $ .env\Scripts\activate.bat && cd cmd && start_node_0.bat
    $ .env\Scripts\activate.bat && cd cmd && start_node_1.bat
    $ .env\Scripts\activate.bat && cd cmd && start_node_2.bat
    $ .env\Scripts\activate.bat && cd cmd && start_node_3.bat

  Tunggu hingga Leader terpilih

#### 5. Client melakukan pengiriman pesan

- Buka dari browser setelah run web server pada client: `localhost:5555`
- Masukkan pesan berisi angka maupun kata-kata
- Klik "Write"

#### 6. Cek pesan replikasi pada tiap storage
- Masuk ke folder server
   <pre> $ cd cmd </pre>
- Jalankan file python com.py dengan cara
    `py com.py get [node_host:node_port]`
- Contoh:

    $ py com.py get localhost:34572
    $ py com.py get localhost:34573
    $ py com.py get localhost:34574
    
- Jika node ditambah, maka otomatis akan menjadi follower
- Jika client memasukkan pesan lagi, maka akan menggantikan (replace) pesan sebelumnya.
- Ketika client mengklik tombol Read pada browser, maka akan muncul pesan yang ditulis sebelumnya

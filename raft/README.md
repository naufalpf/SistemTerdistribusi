# HOW TO RUN (MASIH ON WORKING)
## INSTALL DEPENDENCIES

### Install virtualenv

    - Linux $ sudo pip install virtualenv
    - Windows $ py -m pip install virtualenv
    
### Install Dependencies untuk Server & Client

    $ virtualenv -p python3 .env         # Creates a virtual environment with python3
    $ source .env/bin/activate           # Activate the virtual environment
    $ cd server                          # Enter folder server
    $ pip install -r requirements.txt    # Install all the dependencies


## Implementasi Raft
1. Nyalakan Web Server dengan cara `$ run_web_server.bat`
2. Aktifkan semua storage node untuk melakukan leader election 
3. Buka dari browser setelah run web server pada client: `localhost:5555`
4. Masukkan pesan pada kolom raft editor, lalu klik Write
5. Di terminal akan terlihat pesan yang ditulis pada masing-masing node
6. Jika node ditambah, node tersebut akan otomatis menjadi follower
7. Buka terminal baru, run .env lagi dan masuk ke folder server
8. Jalankan pada terminal server tersebut `py com.py get [node_host:node_port]`. Contoh: `$ py com.py get localhost:34572`
9. Akan terlihat value pada node tersebut. Ganti port untuk mengecek pada masing-masing node
10. Klik Read pada browser, maka akan muncul pesan yang ditulis sebelumnya
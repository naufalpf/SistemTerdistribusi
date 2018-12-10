HOW TO RUN
INSTALL DEPENDENCIES
# Install virtualenv

    - Linux $ sudo pip install virtualenv
    - Windows $ py -m pip install virtualenv
    
# Install Dependencies untuk Server & Client pada Linux

    $ virtualenv -p python3 .env         # Creates a virtual environment with python3
    $ source .env/bin/activate           # Activate the virtual environment
    $ cd server                          # Enter folder server
    $ pip install -r requirements.txt    # Install all the dependencies

# Install Dependencies untuk Server & Client pada Windows

    $ virtualenv -p py .env
    $ .env\Scripts\activate.bat
    $ cd server
    $ pip install -r requirements.txt

 Edit file `nodes.txt` untuk mengatur node mana yang digunakan
------------------------------MULAI RUNNING
## Linux

- Using Terminal
<pre>$ cd shell                          # Enter folder shell</pre>

## Windows
- Using Terminal
<pre>$ cd cmd                           # Enter folder cmd</pre>

### Jalankan Web Server dan Aktifkan Storage pada Ubuntu
    $ ./run_web_server.sh               # To run web server
    $ source .env/bin/activate 
    $ ./start_all_nodes.sh              # To start all nodes
    $ ./start_node_0.sh                 # To start node 0
    $ ./start_node_1.sh                 # To start node 1
    $ ./start_node_2.sh                 # To start node 2
    $ ./start_node_3.sh                 # To start node 3
    $ ./start_node_4.sh                 # To start node 4
    

### Jalankan Web Server dan Aktifkan Storage pada Ubuntu
    $ run_web_server.bat                # To run web server
    $ .env\Scripts\activate.bat  
    $ start_all_nodes.bat               # To start all nodes
    $ start_node_0.bat                  # To start node 0
    $ start_node_1.bat                  # To start node 1
    $ start_node_2.bat                  # To start node 2
    $ start_node_3.bat                  # To start node 3
    $ start_node_4.bat                  # To start node 4

    Tunggu hingga Leader telah dipilih melalui Leader Election dari semua node
    
## Implementasi Raft
1. Nyalakan Web Server dengan cara $ run_web_server.bat
2. Aktifkan semua storage node untuk melakukan leader election dengan cara $ start_all_nodes.bat 
3. Buka dari browser setelah run web server pada client: `localhost:5555`
4. Masukkan pesan pada kolom raft editor, lalu klik Write
5. Di terminal akan terlihat pesan yang ditulis pada masing-masing node
6. Jika node ditambah, node tersebut akan otomatis menjadi follower
7. Buka terminal baru, run .env lagi dan masuk ke folder server
8. Jalankan pada terminal server tersebut "py com.py get [node_host:node_port]". Contoh: $ py com.py get localhost:34572
9. Akan terlihat value pada node tersebut. Ganti port untuk mengecek pada masing-masing node
10. Klik Read pada browser, maka akan muncul pesan yang ditulis sebelumnya

Folder raft
py -m pip install virtualenv
.env\Scripts\activate.bat && cd server && py -m pip install -r requirements.txt
.env\Scripts\activate.bat && cd cmd && run_web_server.bat

Aktifkan Storage
.env\Scripts\activate.bat && cd cmd && start_node_0.bat
.env\Scripts\activate.bat && cd cmd && start_node_1.bat
.env\Scripts\activate.bat && cd cmd && start_node_2.bat
.env\Scripts\activate.bat && cd cmd && start_node_3.bat
.env\Scripts\activate.bat && cd cmd && start_node_4.bat

Cek pesan
.env\Scripts\activate.bat && cd server && py com.py get localhost:34572
.env\Scripts\activate.bat && cd server && py com.py get localhost:34573
.env\Scripts\activate.bat && cd server && py com.py get localhost:34574
.env\Scripts\activate.bat && cd server && py com.py get localhost:34575
.env\Scripts\activate.bat && cd server && py com.py get localhost:34576
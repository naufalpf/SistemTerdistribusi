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

## Linux

- Using Terminal
<pre>$ cd shell                          # Enter folder shell</pre>

### Function
    $ source .env/bin/activate 
    $ ./run_web_server.sh               # To run web server
    $ ./start_all_nodes.sh              # To start all nodes
    $ ./start_node_0.sh                 # To start node 0
    $ ./start_node_1.sh                 # To start node 1
    $ ./start_node_2.sh                 # To start node 2
    $ ./start_node_3.sh                 # To start node 3
    $ ./start_node_4.sh                 # To start node 4
    
## Windows
- Using Terminal
<pre>$ cd cmd                          # Enter folder cmd</pre>
### Function
    $ .env\Scripts\activate.bat  
    $ run_web_server.bat                # To run web server
    $ start_all_nodes.bat               # To start all nodes
    $ start_node_0.bat                  # To start node 0
    $ start_node_1.bat                  # To start node 1
    $ start_node_2.bat                  # To start node 2
    $ start_node_3.bat                  # To start node 3
    $ start_node_4.bat                  # To start node 4

## Implementasi Raft
1. Buka dari browser setelah run web server pada client: `localhost:5555`
2. Masukkan angka pada kolom raft editor, lalu klik Write
3. Di terminal pada masing-masing node, akan terlihat port. Masukkan port tersebut pada kolom raft editor di browser
4. Klik Read pada browser, maka akan muncul angka yang ditulis sebelumnya
5. Di terminal akan muncul angka tersebut pada masing-masing node

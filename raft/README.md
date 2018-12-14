# Using virtualenv

    $ sudo pip install virtualenv
    
# Installing Dependencies Server & Client

    $ virtualenv -p python3 .env         # Creates a virtual environment with python3
    $ source .env/bin/activate           # Activate the virtual environment
    $ cd server                          # Enter folder server
    $ pip install -r requirements.txt    # Install all the dependencies
    
# How To Run Project

1. Edit file `nodes.txt` to specific node that want to start

## Linux

1. Using Terminal

<pre>$ cd shell                          # Enter folder shell</pre>
    
### Function
    $ ./run_web_server.sh               # To run web server
    $ ./start_all_nodes.sh              # To start all nodes
    $ ./start_node_0.sh                 # To start node 0
    $ ./start_node_1.sh                 # To start node 1
    $ ./start_node_2.sh                 # To start node 2
    $ ./start_node_3.sh                 # To start node 3
    $ ./start_node_4.sh                 # To start node 4
    
## Windows

1. Using cmd

<pre>$ cd cmd                            # Enter folder cmd</pre>
    
### Function
    $ run_web_server.bat                # To run web server
    $ start_all_nodes.bat               # To start all nodes
    $ start_node_0.bat                  # To start node 0
    $ start_node_1.bat                  # To start node 1
    $ start_node_2.bat                  # To start node 2
    $ start_node_3.bat                  # To start node 3
    $ start_node_4.bat                  # To start node 4

## Try RAFT
Open from your browser after run web server for the client: `localhost:5555`

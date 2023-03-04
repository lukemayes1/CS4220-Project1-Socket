# CS4220-Project1-Socket

* Group Members:
    * Luke Mayes
    * Isaac Poole
    * Lauren Houghland
* I have neither given nor received unauthorized assistance on this work.
* What’s included
    * Server
      * Creating the server socket used AF_INET which defines the IPv4 standard and SOCK_STREAM which is connection oriented (appears like TCP)
      * Defining the server address initializes a struct to contain the standard AF_INET, the listening port 9002 (via htons(9002)), and a listener for all addresses delineated by INADDR_ANY
      * Binding the socket with the function bind() and passing the struct given its size (thanks C memory management)
      * Listening for incoming traffic; we set the backlog arg to 5 and it worked so it was not changed
      * Client_socket is initialized to listen for clients attempting to connect
      * Send includes the message we want the client to receive
      * Closing the socket to prevent left open connections
    * Client
      * Many of the initial functions are the same like, initializing the network socket and specifying an address
      * The client diverges where instead of binding the socket, it instead attempts to connect to the socket
      * We included error checking if the connection failed
      * Recv receives a message from the server if the connection succeeded
      * We print the response assuming the connection was successful
    * README.md file
      * This file!
      * An explanation of our program and the assignment with basic instructions 
* How to connect the socket 
    * Open 2 windows of the VM (blanca, etc.)
    * Login to the server 
    * Navigate to CS4220-Project1-Socket
    * Run “make server.c” in one window and “make client.c” in the other to check for updates 
    * In one window run “./server” in your window for the server 
    * Then run “./client” in your window for the client
    * You should see a message appear on the client side that reads “You have reached the server!”
* Challenges
    * Understanding the basics of a socket 
    * Setting up the C programming environment (we eventualy decided to use the blanca server
    * Looking into C libraries that allow for socket programming and understanding them
* Sources:
    * https://www.youtube.com/watch?v=LtXEMwSG5-8 
    * https://www.youtube.com/watch?v=mStnzIEprH8
    * Tanenbaum, A. S., Feamster, N., and Wetherall, D. (2021). Computer networks. Pearson. Sections: 6.1.3 Berkeley Sockets; 6.1.4 An Example of Socket Programming: An Internet File  Server; 6.5.2 The TCP Service Model

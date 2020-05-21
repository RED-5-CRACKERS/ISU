#!/bin/python3
import argparse
import socket
import sys
from time import sleep
pars=argparse.ArgumentParser(description=' [ _______________________  Simple Port Scaner  _______________________ ]',epilog='''EG:
    [ isu -l 127.0.0.1 -p 4444 ] OR
    [ isu -l 127.0.0.1 -f 80 -t 4444 ]''')
pars.add_argument('-l',dest='host',required='true',help='[ specefi the listening host . _______________________ ]')
pars.add_argument('-p',type=int,dest='port',help='[ specify port .______________________________________ ] ')
pars.add_argument('-f',dest='frm',type=int,help='[ scan open port "-f" from ... _______________________ ]')
pars.add_argument('-t',dest='to',type=int,help='[ ... "-t" to  ports . ________________________________ ]')
arg=pars.parse_args()
host = arg.host
port = arg.port
frm = arg.frm
to  = arg.to
def _check_(_host_,_port_,_s_,_min_,_max_):
    try:
        if _s_ == 0:
            _socket_=socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            if _socket_.connect_ex((_host_,_port_)):
                print("[\u001b[31;1mPort\u001b[0m] : {} is Close".format(_port_))
            else:
                print("[\u001b[31;1mPort\u001b[0m] : {} is Open".format(_port_))
        if _s_ == 1:
            for __port__ in range(_min_,_max_):
                _socket_=socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                if _socket_.connect_ex((_host_,__port__)):
                    pass
                else:
                    print("[\u001b[31;1mPort\u001b[0m] : {} is Open".format(__port__))
    except:
        print("\u001b[31;1m"+str(sys.exc_info()[1])+"\u001b[32;1m Use --help\u001b[0m")
if frm != None and to != None:
    _check_(host,0,1,frm,to)
else:
    _check_(host,port,0,0,0)

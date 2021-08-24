#! /usr/bin/env python3
import sys;
import datetime;
import time;

def timestamp(timeString):
    # d = datetime.datetime.strptime(timeString, "%Y-%m-%d %H:%M:%S.%f")
    d = datetime.datetime.strptime(timeString, "%Y-%m-%d %H:%M:%S")
    t = d.timetuple()
    return int(time.mktime(t))

def main(args):
    t1 = timestamp(args[1])
    t2 = timestamp(args[2])
    return t2-t1
    
print(main(sys.argv))

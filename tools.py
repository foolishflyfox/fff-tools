#! /usr/bin/env python3
import os;
import sys;

def main(args):
    if len(args) < 2:
        return
    cmdName = args[0]
    if args[1] == "readlink":
        return os.readlink(args[2])


print(main(sys.argv), end="")

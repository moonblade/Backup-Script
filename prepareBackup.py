#!/usr/local/bin/python3
import csv
import shutil, errno

def copyFileOrDir(src, dst):
    try:
        shutil.copytree(src, dst)
    except OSError as exc: # python >2.5
        if exc.errno == errno.ENOTDIR:
            shutil.copy(src, dst)
        else: raise

print("Preparing backup")
with open('mapping.csv') as mappingFile:
    mappings = csv.reader(mappingFile)
    for source, destination in mappings:
        print("Copying " + source + " to " + destination)
        copyFileOrDir(source, destination)


        
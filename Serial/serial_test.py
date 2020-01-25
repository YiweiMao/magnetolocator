import serial
import time

ser = serial.Serial("COM3", 115200)
t1 = time.time() + 1
counter = 0 
while(1):
    #while(ser.inWaiting()):
    #print(ser.readline())
    ser.readline()
    counter += 1
    if time.time() > t1:
        print(counter)
        counter = 0
        t1 = time.time() + 1
    
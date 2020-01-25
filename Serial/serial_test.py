import serial


ser = serial.Serial("COM3", 9600)

while(1):
    print(ser.readline())
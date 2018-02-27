import threading
import time

ans = -1

def wait_in():
  while(ans < 0):
    print("nut")
    time.sleep(1)
  print("hey bud")

th1 = threading.Thread(None, wait_in, "Thread-1")
th1.start()

print(th1.is_alive())

ans = int(input("I should be blocking the program, but until you enter an int the alternate thread is still running\n"))

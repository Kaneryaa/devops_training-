import os 

current_dir = os.getcwd()
print(f"Cuurent directory:{current_dir}")

files = os.listdir()
print(f"files in current directory:{files}")

file_path = 'examples.txt'
if os.path.exists(file_path):
    print(f"{file_path} exists")

 
os.system('ls -l')

pid = os.getpid()
print(f"Process ID: {pid}")


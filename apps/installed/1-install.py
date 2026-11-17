import os
import subprocess

path = os.path.dirname(os.path.abspath(__file__))

def system(commands):
	result = subprocess.run(commands, shell=True, cwd=path)
	return (result.returncode == 0)

def prompt(package):
	print(f"\nDo you want to install {package}?")
	print("Type YES to continue: ", end="")
	confirm = input().upper().strip()

	if (confirm == "YES"):
		if (package == "Xerox Phaser"):
			file = "Xerox_Phaser_3020.sh"

		elif (package == "Areal RNIDS"):
			file = "ArealRNIDS-otf.sh"

		elif (package == "OOoTranslit"):
			file = "OOoTranslit-25.02.1.sh"

		elif (package == "AnyDesk"):
			file = "anydesk-7.1.4-amd64.sh"

		full_path = os.path.join(path, file)

		if (system(f"bash {full_path}")):
			system(f"rm -- '{full_path}'")
		else:
			print(f"Installation of {package} failed!")

prompt("Xerox Phaser")
prompt("Areal RNIDS")
prompt("OOoTranslit")
prompt("AnyDesk")

system(f"bash {os.path.join(path, 'security-check.sh')}")
system(f"rm {os.path.join(path, 'security-check.sh')}")
system(f"rm {os.path.join(path, '1-install.py')}")
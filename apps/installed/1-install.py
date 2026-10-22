import os
import subprocess

path = os.path.dirname(os.path.abspath(__file__))

def run_command(command):
	result = subprocess.run(command, shell=True, cwd=path)
	return result.returncode == 0

def prompt(package):
	print(f"\nDo you want to install {package}?")
	print("Type YES to continue: ", end="")
	confirm = input().upper().strip()

	if ("YES" == confirm):
		if ("Xerox Phaser" == package):
			file = "Xerox_Phaser_3020.sh"

		elif ("Areal RNIDS" == package):
			file = "ArealRNIDS-otf.sh"

		elif ("OOoTranslit" == package):
			file = "OOoTranslit-25.02.1.sh"

		elif ("AnyDesk" == package):
			file = "anydesk-7.1.4-amd64.sh"

		full_path = os.path.join(path, file)

		if (run_command(f"bash {full_path}")):
			os.remove(full_path)
		else:
			print(f"Installation of {package} failed!")

prompt("Xerox Phaser")
prompt("Areal RNIDS")
prompt("OOoTranslit")
prompt("AnyDesk")

run_command(f"bash '{os.path.join(path, 'security-check.sh')}'")
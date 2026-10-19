import os
import subprocess

def run_command(command):
	result = subprocess.run(command, shell=True, capture_output=True, text=True)
	return result.returncode == 0

def prompt(package):
	print(f"Do you want to install {package}?")
	print("Type YES to continue: ", end="")
	confirm = input().upper()

	if ("YES" == confirm):
		path = os.path.expanduser("~/sync/apps/installed/")

		if ("Xerox Phaser" == package):
			file = "Xerox_Phaser_3020.sh"
		elif ("Areal RNIDS" == package):
			file = "ArealRNIDS-otf.sh"
		elif ("OOoTranslit" == package):
			file = "OOoTranslit-25.02.1.sh"
		elif ("AnyDesk" == package):
			file = "anydesk-7.1.4-amd64.sh"

		full_path = path + file
		if (run_command(f"bash {full_path}")):
			run_command(f"rm {full_path}")

prompt("Xerox Phaser")
prompt("Areal RNIDS")
prompt("OOoTranslit")
prompt("AnyDesk")

run_command("bash ~/sync/apps/installed/security-check.sh")
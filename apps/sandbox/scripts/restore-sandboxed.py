import os
import subprocess

def run_command(command):
	result = subprocess.run(command, shell=True, capture_output=True, text=True)
	return result.returncode == 0

sandbox_running = run_command("firejail --ls=sandbox ~/downloads/")
counter = 0

if (sandbox_running):
	os.chdir(os.path.expanduser("~/downloads/restored-sandbox/"))
	files_output = run_command("firejail --ls=sandbox ~/downloads/")

	files = []
	for line in files_output.splitlines()[2:]:
		parts = line.split(maxsplit = 4)
		if (len(parts) >= 5):
			files.append(parts[4])

	for file in files:
		print(f"Processing: {file}...")
		run_command(f"firejail --get=sandbox ~/downloads/\"{file}\"")
		counter += 1

else:
	print("Sandbox is not running!")
	exit()

if (counter == 0):
	print("Sandbox is empty!")
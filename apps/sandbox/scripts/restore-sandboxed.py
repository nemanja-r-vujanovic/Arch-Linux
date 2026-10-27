import os
import shlex
import subprocess

def run_command(command):
	result = subprocess.run(command, shell=True)
	return result.returncode == 0

listing = subprocess.run(
	"firejail --ls=sandbox ~/downloads/",
	shell=True,
	capture_output=True,
	text=True
)

counter = 0

if (listing.returncode == 0):
	path = os.path.expanduser("~/downloads/restored-sandbox/")
	os.makedirs(path, exist_ok=True)
	os.chdir(path)

	files = []
	for line in listing.stdout.splitlines():
		parts = line.split(maxsplit=4)

		if (len(parts) == 5 and parts[0].startswith("-")):
			files.append(parts[4])

	for file in files:
		print(f"Processing: {file}...\n", flush=True)
		source = os.path.expanduser("~/downloads/") + file

		if (run_command(f"firejail --get=sandbox {shlex.quote(source)}")):
			counter += 1
		else:
			print(f"Failed to restore: {file}!")

	if (not files):
		print("Sandbox directory has no regular files!")
	else:
		print(f"\nRestored files: {counter}.")

else:
	print("Cannot access sandbox!")
	print(listing.stderr.strip() or listing.stdout.strip())

import subprocess
import sys

filename = "core_rpg_mechanics"
dir_git = "git"
dir_repo = f"{dir_git}/Kingcheeses-Random-Projects.github.io"
dir_main = f"{dir_repo}/gamemaker stuff"
dir_proj = f"{dir_main}/{filename}"
args = len(sys.argv)

def zip():
    subprocess.run(['zip', '-r', f"{filename}.yyz", '.', '-i' f"{filename}/*"], cwd = dir_main)
    subprocess.run(['mv', f"{filename}.yyz", f"{filename}/"], cwd = dir_main)
    subprocess.run(['find', '.', '!', '-name', f"{filename}.yyz", '-type', 'f', '-exec', 'rm', '-f', '{}', '+'], cwd = dir_proj)
    subprocess.run(['find', '.', '-mindepth', '1', '-maxdepth', '1', '-type', 'd', '-exec', 'rm', '-rf', '{}', '+'], cwd = dir_proj)

def unzip():
    subprocess.run(['unzip', f"{filename}.yyz", '-d', '..'], cwd = dir_proj)
    subprocess.run(['rm', '-rf', f"{filename}.yyz", '-y'], cwd = dir_proj)

def pull():
    subprocess.run(['git', 'pull', 'origin', 'main'], cwd = dir_git)

def commit():
    add("-a")
    message = input("What would you like to label your commit? ")
    subprocess.run(['git', 'commit', "-m", message], cwd = dir_repo)

def push():
    commit()
    subprocess.run(['git', 'push', 'origin', 'main'], cwd = dir_repo)

def reset():
    z = input("Are you sure you want to continue? This will reset your local repo to the cloud and cannot be undone. (y/n) ")
    if z == 'y':
        subprocess.run(['git', 'reset', '--hard', 'main'], cwd = dir_git)

def change(_arg):
    z = input(f"What would you like to change '{_arg}' to? ")
    if _arg == "filename":
        target = f'filename = "{z}"'
        line = 4
    elif _arg == "dir_git":
        target = "dir_git = " + '"' + z + '"'
        line = 5
    elif _arg == "dir_repo":
        #dir_repo = f"{dir_git}/[z]"
        target = "dir_main = f" + '"{dir_git}/' + z +'"'
        line = 6
    elif _arg == "dir_main":
        #dir_main = f"{dir_repo}/gamemaker stuff"
        target = "dir_main = f" + '"{dir_repo}/' + z +'"'
        line = 7

    linetarget = f"{line}s/.*/"
    subprocess.run(['sed', '-i', linetarget + target + '/', 'git.py'])

def add(file):
    if args > 2:
        if file == "-a":
            subprocess.run(['git', 'add', '--all'], cwd = dir_repo)
        

if args > 1:
    arg = sys.argv[1]
    if arg == "zip":
        zip()
    elif arg == "unzip":
        unzip()
    elif arg == "pull":
        pull()
    elif arg == "commit":
        commit()
    elif arg == "push":
        push()
    elif arg == "reset":
        reset()
    elif arg == "help":
        subprocess.run(['echo', 'Arguments are: zip, unzip, pull, commit, push, and reset.'])
    elif arg == "change":
        if args > 2:
            change(sys.argv[2])
        else: subprocess.run(['echo', 'Exception thrown: Missing argument.'])
    elif arg == "add":
        add(sys.argv[2])
    elif arg == "status":
        subprocess.run(['git', 'status'], cwd = dir_repo)
            
else:
    subprocess.run(['echo', 'Exception thrown: Missing argument.'])
    subprocess.run(['echo', 'Arguments are: zip, unzip, pull, commit, push, reset, and change.'])

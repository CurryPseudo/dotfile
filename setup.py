import os
import subprocess
import shutil
root = os.getcwd()
def home_path(name):
    return os.path.join(os.getenv("HOME"), name)

def config_path(name):
    return os.path.join(home_path(".config"), name)

def root_path(name):
    return os.path.join(root, name)

def delete_folder_or_link(path):
    if os.path.exists(path):
        if os.path.islink(path):
            os.unlink(path)
        else:
            shutil.rmtree(path)

def delete_file_or_link(path):
    if os.path.exists(path):
        if os.path.islink(path):
            os.unlink(path)
        else:
            os.remove(path)

def setup_folder(name):
    delete_folder_or_link(config_path(name))
    os.symlink(root_path(name), config_path(name))

def setup_file(name):
    delete_file_or_link(home_path(name))
    os.symlink(root_path(name), home_path(name))

setup_folder("fish")
setup_folder("nvim")
setup_folder("alacritty")
setup_folder("sxhkd")
setup_folder("bspwm")
setup_folder("script")
setup_folder("rofi")
setup_folder("polybar")
subprocess.call("./setup.sh", cwd=config_path("polybar"))
setup_folder("picom")
setup_folder("feh")
setup_folder("dunst")
setup_file(".xinitrc")
setup_file(".profile")
setup_file(".Xmodmap")

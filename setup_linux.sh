sudo add-apt-repository -y ppa:deadsnakes/ppa
sudo apt update
sudo apt-get -y install python3.10-dev
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1
sudo apt -y install python3.10-distutils
export PATH="$HOME/.local/bin:$PATH"
sudo apt-get -y install python-apt
cd /usr/lib/python3/dist-packages
sudo ln -s apt_pkg.cpython-38-x86_64-linux-gnu.so apt_pkg.so
curl -sS https://bootstrap.pypa.io/get-pip.py | sudo python3.10
sudo apt-get -y install python3.10-tk
sudo apt -y install ffmpeg
pip install -r requirements.txt
pip uninstall onnxruntime onnxruntime-gpu -y
pip install torch torchvision torchaudio --force-reinstall --index-url https://download.pytorch.org/whl/cu118
pip install onnxruntime-gpu
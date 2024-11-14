1.Isaac Gym仿真默认在ubuntu20.04（18.04，没试过）下面跑，  windows下在WSL Terminal配置环境

```
cd sim
conda create --name kscale-sim-library python=3.8.19

sudo wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /opt/conda-installer.sh
bash /opt/miniconda-installer.sh
conda create --name kscale-sim-library python=3.8.19
eval "$(/home/kjsut/miniconda3/bin/conda shell.bash hook)"
conda create --name kscale-sim-library python=3.8.19
conda activate kscale-sim-library
cd /mnt/d/Codes/zeroth-bot/sim/
make install-dev
sudo apt install make

sudo vim /etc/apt/sources.list.tsinghua
sudo mv /etc/apt/sources.list /etc/apt/sources.list.bac
sudo mv /etc/apt/sources.list.tsinghua /etc/apt/sources.list
sudo apt update
make install-dev
pip install --verbose -e '.[dev]' --trusted-host mirrors.aliyun.com

tar -xvf IsaacGym_Preview_4_Package.tar.gz
conda env config vars set ISAACGYM_PATH=`pwd`/isaacgym
conda deactivate
conda activate kscale-sim-library
make install-third-party-external
sudo vim ~/.pip/pip.conf
pip config list
export MODEL_DIR=sim/resources/stompymini
sudo apt install g++
python sim/train.py --task=stompymini --num_envs=4

sudo wget https://developer.download.nvidia.com/compute/cuda/12.6.2/local_installers/cuda_12.6.2_560.35.03_linux.run
sudo chmod +x cuda_12.6.2_560.35.03_linux.run
sudo sh ./cuda_12.6.2_560.35.03_linux.run

nvcc --version

```

```
You don't directly install NVIDIA drivers on WSL.

The key to using NVIDIA GPUs in WSL is to install the appropriate NVIDIA driver on your Windows host system. This driver will enable GPU passthrough to your WSL distribution, allowing it to access the GPU's capabilities.
```
这是一个悲伤的故事， 宿主机windows cuda装了12.6，不想换了，后续直接切换双系统之ubuntu完成操作.

<div align="center" style="text-align: center;">

  <h1>Zeroth Bot</h1>  (WIP)

<p> The most hackable, affordable, and powerful 3D-printed open-source humanoid robot platform for sim-to-real and RL. Fully open-source from hardware design to model training, with Python SDK and NVIDIA Isaac simulation/training environment. BoM starts at $350. </p>

<p> This project is built by the open-source community and is currently work in progress. We welcome your feedback, issues, and pull requests in our <a href="https://discord.gg/G6KP76uha5">Discord</a>. </p>

<h3>
  <a href="https://docs.zeroth.bot">Docs</a>
  <span> · </span>
  <a href="https://docs.zeroth.bot/roadmap">Roadmap</a>
  <span> · </span>
  <a href="https://discord.gg/G6KP76uha5">Contribute</a>
  <span> · </span>
  <a href="https://discord.gg/G6KP76uha5">Community</a>
</h3>

<img width="1491" alt="image" src="https://github.com/user-attachments/assets/ff98aa6e-3eb9-48b9-829b-6eed9ad62690">

</div>

---

### To start using Zeroth Bot
- Please see the Getting Started documentation at [https://docs.zeroth.bot](https://docs.zeroth.bot).


### To start developing Zeroth Bot
Zeroth Bot is developed by the open-source community. We welcome both pull requests and issues on GitHub.

- Join the community [Discord](https://discord.gg/G6KP76uha5)
- Documentation at [https://docs.zeroth.bot](https://docs.zeroth.bot)

### License
This project is licensed under the MIT License.

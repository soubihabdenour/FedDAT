
# Setting Up the Project

## Forking and Cloning the Repository
1. Fork the repository from the original source: [https://github.com/HaokunChen245/FedDAT](https://github.com/HaokunChen245/FedDAT).
2. Clone your forked repository:
   ```bash
   git clone https://github.com/soubihabdenour/FedDAT.git
   ```

## Creating a Virtual Environment
1. Create a new virtual environment for the project:
   ```bash
   conda create -n feddat python=3.9
   ```
2. Activate the virtual environment:
   ```bash
   conda activate feddat
   ```

## Installing PyTorch
Install PyTorch and related packages using `conda`:
   ```bash
   conda install pytorch torchvision pytorch-cuda=11.8 -c pytorch -c nvidia
   ```

## Installing Python Requirements
Install the required Python packages:
   ```bash
   pip install -r requirements.txt
   ```

## Installing Adapters
Follow the necessary steps to install adapters as per project requirements.
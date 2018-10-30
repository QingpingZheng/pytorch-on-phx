# .bashrc

export LC_ALL=en_AU.UTF-8
export LANG="$LC_ALL"

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
module add CUDA/9.0.176
module add cuDNN/7.0-CUDA-9.0.176
#module add imkl/2017.1.132-iompi-2017.1-OpenMPI-1.6.5
#module add CMake
module load EasyBuild
#module load Tk

# Python virtual env manager settings below

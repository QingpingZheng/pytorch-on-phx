# Running DL project with pyenv+pytorch+tensorboardX on Phoenix HPC

## Table of Contents

* **[Phoenix Login](#phoenix-login)**
* **[Install pyenv](#install-pyenv)**
* **[Install pytorch](#install-pytorch)**
* **[Run pytorch on Phoenix](#run-pytorch-on-phoenix)**

## Phoenix Login
Register for an account by submitting a form [on this page](https://www.adelaide.edu.au/phoenix/register/).

After your account is activated, login and copy [this file] into your home folder. 

## Install pyenv
Pyenv is an easy to use Python version management tool integrating [virtualenv](https://github.com/pyenv/pyenv-virtualenv) and Anaconda. To install it, simply use [pyenv installer](https://github.com/pyenv/pyenv-installer).

Since there is limited space under home folder on phx. It is recommended to install pyenv under `\fast` partition. To so do, set `PYENV_ROOT` environment variable to be your fast folder:

```sh
$ echo 'export PYENV_ROOT=/fast/users/a17XXXXX/.pyenv' >> ~/.bashrc
source ~/.bashrc
```

Now you can install pyenv from Git:


```sh
$ curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
```

Remember to make pyenv take effect by modifying `.bashrc` again:

```sh
$ echo 'export PATH="$PYENV_ROOT/bin:$PATH"\neval "$(pyenv init -)"\n eval "$(pyenv virtualenv-init -)"
source ~/.bashrc
```

How we can install desired Python version. The best behaviour is to use conda mostly because of off the shelf mkl support. However, latest conda-3 uses Python 3.7 which is not officially supported by TensorFlow. So just install `3.6.6` for now.

```sh
pyenv install 3.6.6
```

Use this python globally:

```sh
pyenv global 3.6.6
```

## Install PyTorch
We will use PyTorch in this demo. Install it with conda:

```sh
conda install pytorch torchvision -c pytorch
```

We will use [tensorboardX](https://github.com/lanpa/tensorboardX) for visualization:

```sh
pip install git+https://github.com/lanpa/tensorboardX
```

## Run pytorch on Phoenix
Please refer to `word_language_model` folder for further instructions.

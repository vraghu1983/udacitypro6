#setup Python 3.7
wget https://repo.anaconda.com/miniconda/Miniconda3-py37_4.9.2-Linux-x86_64.sh 
sh Miniconda3-py37_4.9.2-Linux-x86_64.sh 
export PATH=~/miniconda3/bin:$PATH

#setup ssh
ssh-keygen -t rsa
cat .ssh/id_rsa.pub

#cloning and setup github repo
git clone git@github.com:vraghu1983/udacitypro6.git
git config --global user.name "your name"
git config --global user.email "example@mail.com"


#azure app service
az webapp up --name vraghu-flask-webapp --resource-group pro6 --runtime "PYTHON:3.7"

#setup virtual enviroment
# python -m venv ~/.myrepo
# source ~/.myrepo/bin/activate

#logs
# az webapp log tail -n vraghu-flask-webapp -g pro6

#! /bin/bash

if [ -z "$1" ]
then
      venv=$1
else
      venv="py38dev"
fi

if [ ! -d "./$venv" ]; then
  echo "Creating virtual environment $venv"
  tox -c tox_dev.ini
  source $venv/bin/activate
fi

# Enter the python virtual enviro on the current shell
echo "Entering virtual environment $venv"
bash --rcfile <(echo '. ./py37dev/Scripts/activate')

# use echo $BASHPID to check the bash prompt process id

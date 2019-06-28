#!/bin/bash

if [ ! -f debug0 ]; then
  touch debug0

  if [ -e requirements_os.txt ]; then
    apt-get install -y $(cat requirements_os.txt)

   fi
   if [-e requirements.txt ]; then
    pip3 install -r requirements.txt
   fi

  while getopts 'hd:' flag; do
    case "${flag}" in
      h)
        echo "options:"
        echo "-h        show brief help"
        echo "-d        debug mode, no nginx or uwsgi, direct start with 'python3 app/app.py'"
        exit 0
        ;;
      d)
        touch debug1
        ;;
      *)
        break
        ;;
    esac
  done
fi

if [ -e debug1 ]; then
  echo "Running app in debug mode!"
  python3 app/app.py
else
  echo "Running app in production mode!"
  nginx && uwsgi --ini /app.ini
fi

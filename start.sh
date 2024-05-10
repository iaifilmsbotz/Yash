if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/iaifilmsbotz/WiseCinema.git /WiseCinema
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /WiseCinema
fi
cd /WiseCinema
pip3 install -U -r requirements.txt
echo "Starting WiseCinema...."
python3 bot.py

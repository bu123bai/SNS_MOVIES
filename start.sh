if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/bu123bai/SNS_MOVIES.git /SNS_MOVIES
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SNS_MOVIES
fi
cd /SNS_MOVIES
pip3 install -U -r requirements.txt
echo "Starting SNS MOVIES...."
python3 bot.py

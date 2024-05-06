if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/TEJA-US/SSOUTHCINEMA21-FILE-SHARE-BOT /SSOUTHCINEMA21-FILE-SHARE-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SSOUTHCINEMA21-FILE-SHARE-BOT
fi
cd /Advance-File-Share-Bot
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py

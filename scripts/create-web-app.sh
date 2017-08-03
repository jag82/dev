#Create and serve a web application
#-----------------------------------

echo "1. installing npm"
sudo apt update
sudo apt upgrade -y
sudo apt install npm

echo "2. creating an npm project"
#2017-08-02-jc --force and --yes are not available in npm 1.4.21 (the latest for raspbian), so we can't skip npm init's prompts
# so we just paste a good package.json instead
#npm init 
echo "
{
  \"name\": \"website\",
  \"version\": \"0.0.0\",
  \"description\": \"ERROR: No README data found!\",
  \"main\": \"index.js\",
  \"scripts\": {
    \"start\": \"node index.js\"
  },
  \"author\": \"\",
  \"license\": \"ISC\"
}
" > package.json


echo "3. installing express"
npm install --save express

echo "4. writing simple web app"
echo "
const express = require('express');
const app = express();

app.get('/', function(req, res, next){
	res.send('Hello World');
});

const PORT = 3000;
app.listen(PORT, function(){
	console.log('quick start app listening on port ' + PORT);
});
" > index.js



#2017-08-02-jc until we get node running as a service, we are putting the summary before step 5
echo "SUMMARY:"

echo "local access @ localhost:3000"

BROADCAST_LINE=`ifconfig | grep Bcast`
IP_INTERNAL=`expr match "$BROADCAST_LINE" '.*inet addr:\(.*\)Bcast'`
echo "lan access @ $IP_INTERNAL"

IP_EXTERNAL=`curl ipinfo.io/ip`
echo "internet access @ $IP_EXTERNAL"



echo "5. starting web app"
node index.js


#!/bin/sh
# for control statt service 

ROOT=`pwd`
serverAppPath="/usr/share/nginx/html/master/server/app"
gmAppPath="/usr/share/nginx/html/master/gm/server/app"
robotPath="/root/Work/robot"
ROBOT_PLAYER=10
OPEN_ROBOT=false

if [ "${1}" == "" ]; then
  echo -e " [Error]: Use parameter 'start'/'stop' to enable/disable services by nohup."
  echo -e " [Error]: Use parameter 'pm2start'/'pm2stop' to enable/disable services by pm2."
fi

if [ ! -d "$serverAppPath" ]; then
  echo -e " [Error]: Cannot find the server app path. Please conforim the config."  
  exit
fi

if [ "${1}" == "start" ]; then
  echo -e "start run services:"
  cd "$serverAppPath"
  nohup node bstApp.js & nohup node apiApp.js & nohup node calApp.js & nohup node gsApp.js &  nohup node gtsApp.js & nohup node gwApp.js & nohup node monitorApp.js &

  if [ -d "$gmAppPath" ]; then
      cd "$gmAppPath"
      nohup channelApp.js & nohup  adminApp.js &
  fi
  echo -e "All server services begin run."
  #ps -eaf | grep App.js
fi


if [ "${1}" == "stop" ]; then
  echo -e 'Server services has begun to close:'
  ps -eaf | grep App.js | grep -v grep | awk '{print $2}' | xargs kill
  ps aux | grep robot | awk '{print $2}' | xargs kill -9
  echo -e 'All server services are closed.'
fi


if [ "${1}" == "start_test" ]; then
  cd "$sereverAppPath"
  nohup node bstApp.js & nohup node apiApp.js & nohup node calApp.js & nohup node gsApp.js & ohup node gwApp.js & nohup node monitorApp.js &
 # nohup node gtsApp.js & 

  echo -e "All server services begin run."
  ps -eaf | grep App.js
fi

if [ "${1}" == "pm2start" ]; then
  #echo -e "Delete the existing services:"
  #pm2 delete all
  pm2 delete bonusApp bstApp apiApp calApp cal2App calApp_match gsApp gwApp gtsApp monitorApp swApp swMonitorApp ppApp swApp2 swApp3 swApp4 swApp5 swApp6 alertApp bbApp traffic_reporter swApp118 swApp119 swApp120 swApp121 swApp122 swApp123 swApp124 swApp125 swApp126 swApp127 swApp128 swApp129 swApp130 swApp131 swApp132 swApp133 swApp134 swApp135 swApp136 swApp137 swApp138 swApp139 swApp140 swApp141 swApp142 swApp143 swApp144 swApp145 swApp146 swApp152 swApp153 swApp154 swApp155 swApp156swApp10 swApp11 swApp12 swApp10 swApp11 swApp12

  cd $ROOT
  pm2 start traffic-reporter

  echo -e "start pm2 start services:"
  
  if [ -d "$serverAppPath" ]
  then

  cd "$ROOT"/alert/app
  pm2 start alertApp.js

  cd "$ROOT"/bb-api/app
  pm2 start bbApp.js

  cd "$ROOT"/bonus/app
  pm2 start bonusApp.js

  cd "$ROOT"/sw/app
  pm2 start swApp.js
  pm2 start swApp2.js
  pm2 start swApp3.js
  pm2 start swApp4.js
  pm2 start swApp5.js
  pm2 start swApp6.js
  pm2 start swApp7.js
  pm2 start swApp8.js
  pm2 start swApp9.js
  pm2 start swApp10.js
  pm2 start swApp118.js
  pm2 start swApp119.js
  pm2 start swApp120.js
  pm2 start swApp121.js
  pm2 start swApp122.js
  pm2 start swApp123.js
  pm2 start swApp124.js
  pm2 start swApp125.js
  pm2 start swApp126.js
  pm2 start swApp127.js
  pm2 start swApp128.js
  pm2 start swApp129.js
  pm2 start swApp130.js
  pm2 start swApp131.js
  pm2 start swApp132.js
  pm2 start swApp133.js
  pm2 start swApp134.js
  pm2 start swApp135.js
  pm2 start swApp136.js
  pm2 start swApp137.js
  pm2 start swApp138.js
  pm2 start swApp139.js
  pm2 start swApp140.js
  pm2 start swApp141.js
  pm2 start swApp142.js
  pm2 start swApp143.js
  pm2 start swApp144.js
  pm2 start swApp145.js
  pm2 start swApp146.js
  pm2 start swApp152.js
  pm2 start swApp153.js
  pm2 start swApp154.js
  pm2 start swApp155.js
  pm2 start swApp156.js
  pm2 start swApp10.js
  pm2 start swApp11.js
  pm2 start swApp12.js
  pm2 start swApp10.js
  pm2 start swApp11.js
  pm2 start swApp12.js
  pm2 start swMonitorApp.js

  cd "$ROOT"/api/app
  pm2 start bstApp.js
  pm2 start apiApp.js

  cd "$ROOT"/cal/app
  pm2 start calApp.js
  pm2 start cal2App.js
  pm2 start calApp_match.js
  
  cd "$ROOT"/gsServer/app
  pm2 start gsApp.js
	
  cd "$ROOT"/gts/app
  pm2 start gtsApp.js

  cd "$ROOT"/gw/app
  pm2 start gwApp.js
  pm2 start monitorApp.js

  cd "$ROOT"/pp-api/app
  pm2 start ppApp.js


  fi

  pm2 delete channelApp adminApp govApp tjApp

  if [ -d "$gmAppPath" ]
  then
    cd "$gmAppPath"
    pm2 start channelApp.js
    pm2 start adminApp.js
    pm2 start govApp.js
    pm2 start tjApp.js
  fi
  
  if [ -d "$robotPath" ]; then
    pm2 delete robot-gs-baccarat robot-gs-baccarat2 robot-gs-dragon-tiger robot-gs-roulette robot-gs-Sic-Bo

    cd $robotPath/baccarat
    pm2 start robot-gs-baccarat.js

    if [ $OPEN_ROBOT == true ]
    then
      node robot_api_test.js r $ROBOT_PLAYER >> /dev/null &
    fi

    #cd $robotPath/baccarat2
    #pm2 start robot-gs-baccarat2.js

    #if [ $OPEN_ROBOT == true ]
    #then
      #node robot_api_test2.js r $ROBOT_PLAYER >> /dev/null &
    #fi

    sleep 2

    cd $robotPath/dragon-tiger
    pm2 start robot-gs-dragon-tiger.js

    
    #if [ $OPEN_ROBOT == true ]
    #then
      #node robot_api_test.js r $ROBOT_PLAYER >> /dev/null &
    #fi

    sleep 2

    cd $robotPath/roulette
    pm2 start robot-gs-roulette.js

    #if [ $OPEN_ROBOT == true ]
    #then
      #node robot_api_test.js r $ROBOT_PLAYER >> /dev/null &
    #fi

    sleep 2

    cd $robotPath/sic-bo
    pm2 start robot-gs-Sic-Bo.js

    #if [ $OPEN_ROBOT == true ]
    #then
      #node robot_api_test.js r $ROBOT_PLAYER >> /dev/null &
    #fi 

    sleep 5
    pm2 start robot-gs-Sic-Bo robot-gs-baccarat robot-gs-baccarat2 robot-gs-dragon-tiger robot-gs-roulette
  fi
fi


if [ "${1}" == "pm2stop" ]; then
  echo -e "stop  services:"
  pm2 delete all
  echo -e "All server services stop."
fi

systemctl stop firewalld.service


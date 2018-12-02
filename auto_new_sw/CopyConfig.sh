#!/bin/sh

set -e


ROOT=`pwd`

#config path
CONFIG_FOLDER=${ROOT}/Config_Backup
CLIENT=${CONFIG_FOLDER}/project.json.h5
RUN_TIME=${CONFIG_FOLDER}/runtime.json
CLIENT_PC=${CONFIG_FOLDER}/project.json.pc
CLIENT_PCS=${CONFIG_FOLDER}/project.json.pcs
CLIENT_GS=${CONFIG_FOLDER}/project.json.gs
CLIENT_GS_MAKATI=${CONFIG_FOLDER}/project_makati.json.gs
SERVER=${CONFIG_FOLDER}/diff.js.server
GM=${CONFIG_FOLDER}/diff.js.gm
CRT=${CONFIG_FOLDER}/ebetapp.crt
KEY=${CONFIG_FOLDER}/ebetapp.key
GS_VALID=${CONFIG_FOLDER}/project-valid.json


cp -f ${GS_VALID} gs/project-valid.json

cp -f ${CLIENT} h5/project.json
cp -f ${CLIENT_PC} pc/project.json
#cp -f ${CLIENT_PCS} pcs/project.json
cp -f ${CLIENT_GS} gs/project.json
cp -f ${CLIENT_GS_MAKATI} gs_makati/project.json
cp -f ${SERVER} server/config/diff.js
cp -f ${SERVER} alert/config/diff.js
cp -f ${SERVER} api/config/diff.js
cp -f ${SERVER} bb-api/config/diff.js
cp -f ${SERVER} cal/config/diff.js
cp -f ${SERVER} gsServer/config/diff.js
cp -f ${SERVER} gts/config/diff.js
cp -f ${SERVER} gw/config/diff.js
cp -f ${SERVER} pp-api/config/diff.js
cp -f ${SERVER} sw/config/diff.js
cp -f ${SERVER} bonus/config/diff.js
cp -f ${CONFIG_FOLDER}/cfg-* server/config/
cp -f ${CONFIG_FOLDER}/cfg-* alert/config/
cp -f ${CONFIG_FOLDER}/cfg-* api/config/
cp -f ${CONFIG_FOLDER}/cfg-* bb-api/config/
cp -f ${CONFIG_FOLDER}/cfg-* cal/config/
cp -f ${CONFIG_FOLDER}/cfg-* gsServer/config/
cp -f ${CONFIG_FOLDER}/cfg-* gts/config/
cp -f ${CONFIG_FOLDER}/cfg-* gw/config/
cp -f ${CONFIG_FOLDER}/cfg-* pp-api/config/
cp -f ${CONFIG_FOLDER}/cfg-* sw/config/
cp -f ${CONFIG_FOLDER}/cfg-* bonus/config/
cp -f ${CONFIG_FOLDER}/cfg-* gm/server/config/
cp -f ${CONFIG_FOLDER}/config.js server/config/
cp -f ${CONFIG_FOLDER}/config.js alert/config/
cp -f ${CONFIG_FOLDER}/config.js api/config/
cp -f ${CONFIG_FOLDER}/config.js bb-api/config/
cp -f ${CONFIG_FOLDER}/configs.json bb-api/modules/g-bb-api/bbAPI/configs.json
cp -f ${CONFIG_FOLDER}/config.js cal/config/
cp -f ${CONFIG_FOLDER}/config.js gsServer/config/
cp -f ${CONFIG_FOLDER}/config.js gts/config/
cp -f ${CONFIG_FOLDER}/config.js gw/config/
cp -f ${CONFIG_FOLDER}/config.js pp-api/config/
cp -f ${CONFIG_FOLDER}/config.js sw/config/
cp -f ${CONFIG_FOLDER}/config.js bonus/config/
cp -f ${CONFIG_FOLDER}/config.js.gm gm/server/config/config.js
cp -f ${GM} gm/server/config/diff.js
cp -f ${RUN_TIME} h5/runtime.json
cp -f ${RUN_TIME} .
cp -f ${CRT} server/ebetapp.crt
cp -f ${KEY} server/ebetapp.key

# copy single wallet sw2
cp -f sw/app/swApp.js sw/app/swApp2.js
cp -f sw/app/swApp.js sw/app/swApp3.js
cp -f sw/app/swApp.js sw/app/swApp4.js
cp -f sw/app/swApp.js sw/app/swApp5.js
cp -f sw/app/swApp.js sw/app/swApp6.js
cp -f sw/app/swApp.js sw/app/swApp7.js
cp -f sw/app/swApp.js sw/app/swApp8.js
cp -f sw/app/swApp.js sw/app/swApp9.js
cp -f sw/app/swApp.js sw/app/swApp10.js
cp -f sw/app/swApp.js sw/app/swApp118.js
cp -f sw/app/swApp.js sw/app/swApp119.js
cp -f sw/app/swApp.js sw/app/swApp120.js
cp -f sw/app/swApp.js sw/app/swApp121.js
cp -f sw/app/swApp.js sw/app/swApp122.js
cp -f sw/app/swApp.js sw/app/swApp123.js
cp -f sw/app/swApp.js sw/app/swApp124.js
cp -f sw/app/swApp.js sw/app/swApp125.js
cp -f sw/app/swApp.js sw/app/swApp126.js
cp -f sw/app/swApp.js sw/app/swApp127.js
cp -f sw/app/swApp.js sw/app/swApp128.js
cp -f sw/app/swApp.js sw/app/swApp129.js
cp -f sw/app/swApp.js sw/app/swApp130.js
cp -f sw/app/swApp.js sw/app/swApp131.js
cp -f sw/app/swApp.js sw/app/swApp132.js
cp -f sw/app/swApp.js sw/app/swApp133.js
cp -f sw/app/swApp.js sw/app/swApp134.js
cp -f sw/app/swApp.js sw/app/swApp135.js
cp -f sw/app/swApp.js sw/app/swApp136.js
cp -f sw/app/swApp.js sw/app/swApp137.js
cp -f sw/app/swApp.js sw/app/swApp138.js
cp -f sw/app/swApp.js sw/app/swApp139.js
cp -f sw/app/swApp.js sw/app/swApp140.js
cp -f sw/app/swApp.js sw/app/swApp141.js
cp -f sw/app/swApp.js sw/app/swApp142.js
cp -f sw/app/swApp.js sw/app/swApp143.js
cp -f sw/app/swApp.js sw/app/swApp144.js
cp -f sw/app/swApp.js sw/app/swApp145.js
cp -f sw/app/swApp.js sw/app/swApp146.js
cp -f sw/app/swApp.js sw/app/swApp152.js
cp -f sw/app/swApp.js sw/app/swApp153.js
cp -f sw/app/swApp.js sw/app/swApp154.js
cp -f sw/app/swApp.js sw/app/swApp155.js
cp -f sw/app/swApp.js sw/app/swApp156.js
cp -f sw/app/swApp.js sw/app/swApp10.js
cp -f sw/app/swApp.js sw/app/swApp11.js
cp -f sw/app/swApp.js sw/app/swApp12.js
cp -f sw/app/swApp.js sw/app/swApp10.js
cp -f sw/app/swApp.js sw/app/swApp11.js
cp -f sw/app/swApp.js sw/app/swApp12.js
cp -f sw/app/swApp.js sw/app/swApp10.js
cp -f sw/app/swApp.js sw/app/swApp11.js
cp -f sw/app/swApp.js sw/app/swApp12.js
cp -f sw/app/swApp.js sw/app/swApp10.js
cp -f sw/app/swApp.js sw/app/swApp11.js
cp -f sw/app/swApp.js sw/app/swApp12.js
cp -f sw/app/swApp.js sw/app/swApp10.js
cp -f sw/app/swApp.js sw/app/swApp11.js
cp -f sw/app/swApp.js sw/app/swApp12.js
cp -f cal/app/calApp.js cal/app/calApp_match.js
cp -f cal/app/calApp.js cal/app/cal2App.js

# copy gs validation gs2
#cp -f server/app/gsApp.js server/app/gsApp2.js

# test slot
#cp -f ${CONFIG_FOLDER}/g-pp-api.js pp-api/modules/g-pp-api/bin/

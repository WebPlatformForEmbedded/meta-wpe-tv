# Enable TV Control in WPE Framework plugins
ENABLE_DVB 			?= "false"
FREQUENCY_LIST 		?= "575"
COUNTRY_REGION_ID 	?= "0"
COUNTRY_CODE 		?= "GBR"
TUNE_PARAM 			?= "SYMBOL_RATE=6900000"

PACKAGECONFIG_append = " tvcontrol"

PACKAGECONFIG[tvcontrol] = "-DWPEFRAMEWORK_PLUGIN_TVCONTROL=ON \
							-DWPEFRAMEWORK_PLUGIN_TVCONTROL_DVB=${ENABLE_DVB} \
							-DWPEFRAMEWORK_PLUGINS_TVCONTROL_FREQUENCY_LIST=${FREQUENCY_LIST} \
    						-DWPEFRAMEWORK_PLUGINS_TVCONTROL_COUNTRY_REGION_ID=${COUNTRY_REGION_ID} \
    						-DWPEFRAMEWORK_PLUGINS_TVCONTROL_COUNTRY_CODE=${COUNTRY_CODE} \
    						-DWPEFRAMEWORK_PLUGINS_TVCONTROL_TUNE_PARAM=${TUNE_PARAM} \
							,-DWPEFRAMEWORK_PLUGIN_TVCONTROL=OFF,sqlite,dvb-apps inotify-tools gstreamer1.0-plugins-bad-dvb gstreamer1.0-libav"
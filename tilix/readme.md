# export current config
dconf dump /com/gexperts/Tilix/ > tilixConf.dconf

# import config
dconf load /com/gexperts/Tilix/ < tilixConf.dconf

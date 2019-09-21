ls ./*py |while read id;do echo $(basename ${id} '.py').test;done  ### transfer suffix '.py' into '.test'

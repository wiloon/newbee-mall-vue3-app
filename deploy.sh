#!/bin/bash
rm -rf dist
npm run build
package_name="newbee-mall-app.tar.gz"
gtar zcvf ${package_name} -C dist .
scp ${package_name} aliyun:/tmp
cp ${package_name} /Users/wiloon/tmp
ansible -i 'wiloon.com,' all  -m shell -a 'tar zxvf /tmp/newbee-mall-app.tar.gz -C /root/volumes/nginx-www/_data/newbee-mall-app/' -u root


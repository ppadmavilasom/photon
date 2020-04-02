#!/bin/bash

pushd /etc/yum.repos.d
for repo in $(ls *.repo)
do
sed -i 's|dl.bintray.com/vmware|packages.vmware.com/photon/$releasever|' $repo
done
popd

cat /etc/yum.repos.d/*.repo | grep baseurl

tdnf list bash

#!/bin/bash
jenkinsServerELB=$1
jenkinsServerPublicIp=$2
bitBucketServerELB=$3
bitBucketServerPublicIp=$4
NETVARSFILE=$5
sed -i "s|jenkins_public_ip.*.$|jenkins_public_ip=\"$jenkinsServerPublicIp\"|g" $NETVARSFILE
sed -i "s|bitbucket_public_ip.*.$|bitbucket_public_ip=\"$bitBucketServerPublicIp\"|g" $NETVARSFILE
sed -i "s|jenkins_elb.*.$|jenkins_elb=\"$jenkinsServerELB\"|g" $NETVARSFILE
sed -i "s|bitbucket_elb.*.$|bitbucket_elb=\"$bitBucketServerELB\"|g" $NETVARSFILE

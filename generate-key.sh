#!/bin/bash

#echo "### removing any old keys"
rm -rf /tmp/$$
rm -rf /tmp/$$.pub

echo "### Create key (RSA format 4096 bits)"
ssh-keygen -t rsa -b 4096 -N '' -q -f /tmp/$$

echo "### Your private key:"
cat /tmp/$$

echo "### Your public key:"
cat /tmp/$$.pub

#echo "### Removing keys"
rm -rf /tmp/$$
rm -rf /tmp/$$.pub

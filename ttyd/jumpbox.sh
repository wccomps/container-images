#!/bin/sh

echo -e "Welcome to the jumpbox! You can also connect by running \`ssh jumpbox.wccomps.org\` from your local machine.\n"
exec ssh -l "" jumpbox.wccomps.org

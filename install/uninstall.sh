#!/bin/bash

sudo rm -rf \
  /Applications/Utilities/web-eid.app \
  /Applications/Utilities/web-eid-safari.app \
  /Library/Google/Chrome/NativeMessagingHosts/eu.webeid.batch.json \
  /Library/Application\ Support/Mozilla/NativeMessagingHosts/eu.webeid.batch.json \
  /Library/Application\ Support/Google/Chrome/External\ Extensions/adgngflncndhggolkdfiggnbhpdenfhg.json
PLIST=/Library/Preferences/org.mozilla.firefox.plist
sudo defaults write ${PLIST} ExtensionSettings \
  -dict-add "'batch-signing@hia'" "{ 'installation_mode' = 'blocked'; }"

*** Settings ***
### Libraries
Library     AppiumLibrary    timeout=60
Library     DateTime
Library     Collections

### Utils
Resource    utils/openApp.resource
Resource    utils/custom.resource

### Pages
Resource    pages/tasksPage.resource

*** Variables ***
${PLATFORM_NAME}    android
${DEVICE_NAME}      Google Pixel API 33
${REMOTE_URL}       http://localhost:4723/wd/hub
${AUTOMATION_NAME}  UIAutomator2
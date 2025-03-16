*** Settings ***
Resource    ../common.resource

*** Keywords ***
Open App
    Open Application
    ...    remote_url=${REMOTE_URL}
    ...    automationName=${AUTOMATION_NAME}
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    app=${CURDIR}${/}..${/}app${/}todo-2-3-4.apk
    ...    disableIdLocatorAutocompletion=${True}
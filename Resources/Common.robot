*** Settings ***
Library  AppiumLibrary
Resource  ../Resources/PO/Landing.robot
Resource  ../Resources/PO/Numpad.robot
Resource  ../Resources/PO/CallScreen.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/ContactsList.robot
Resource  ../Resources/PO/Search.robot

*** Variables ***
${APPIUM_SERVER_URL}  http://localhost:4723/wd/hub
${PLATFORM_NAME}      Android
${PLATFORM_VERSION}   8.0.0
${UDID}               BH902VBP8Z
${DEVICE_NAME}        Abdurahman
${APP_PACKAGE}        com.orange.phone
${APP_ACTIVITY}       com.orange.phone.DialtactsActivity

${PHONE_TO_CALL}      01002003001
${CONTACT_TO_SEARCH}  Test


*** Keywords ***
Start Application
    Set Appium Timeout  10 seconds
    open application  http://localhost:4723/wd/hub  platformName=${PLATFORM_NAME}
    ...  platformVersion=${PLATFORM_VERSION}  udid=${UDID}  deviceName=${DEVICE_NAME}
    ...  appPackage=${APP_PACKAGE}  appActivity=${APP_ACTIVITY}
    Landing.Skip to main page

End Test
    close application


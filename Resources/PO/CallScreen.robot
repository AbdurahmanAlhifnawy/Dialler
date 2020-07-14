*** Settings ***
Resource  ../Resources/Common.robot

*** Variables ***
${CallScreen_EndCallButton}   floating_end_call_action_button
${CallScreen_ContactName}  name


*** Keywords ***
Verify Call is registered
    wait until page contains element  ${CallScreen_EndCallButton}
    click element                     ${CallScreen_EndCallButton}

Verify Contact name is displayed correctly
    [Arguments]  ${CONTACT_TO_SEARCH}
    element text should be  ${CallScreen_ContactName}  ${CONTACT_TO_SEARCH}  ignore_case=true
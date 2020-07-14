*** Settings ***
Resource  ../Resources/Common.robot

*** Variables ***
${Search_CallButton}  primary_action_zone

*** Keywords ***
Call a searched Contact
    click element  ${Search_CallButton}
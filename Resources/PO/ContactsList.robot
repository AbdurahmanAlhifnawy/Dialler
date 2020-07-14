*** Settings ***
Resource  ../Resources/Common.robot

*** Variables ***
${ContactsList_AddContactButton}  floating_action_button_container

*** Keywords ***
Add a Contact
    #TODO Requires refinement
    [Arguments]  ${CONTACT_TO_ADD}  ${PHONE_TO_CALL}
    click element  ${ContactsList_AddContactButton}
    wait until page contains element  //*[@text='Phone']
    click element  //*[@text='Phone']
    wait until page contains element  com.samsung.android.contacts:id/button2
    click element  com.samsung.android.contacts:id/button2
    wait until page contains element  com.samsung.android.contacts:id/nameEdit
    input text  com.samsung.android.contacts:id/nameEdit  ${CONTACT_TO_ADD}
    input text  /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.widget.ScrollView/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout[3]/android.widget.LinearLayout/android.widget.RelativeLayout  ${PHONE_TO_CALL}
    click element  menu_done
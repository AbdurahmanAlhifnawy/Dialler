*** Settings ***
Resource  ../Resources/Common.robot

*** Variables ***
${Numpad_sim1}          dialpad_dual_floating_action_buttonSim1
${Numpad_sim2}          dialpad_dual_floating_action_buttonSim2
${Numpad_Down}          //android.widget.LinearLayout[@content-desc="Close dialpad"]/android.widget.ImageButton
${Numpad_DeleteButton}  deleteButton
${Numpad_dialpad}       digits


*** Keywords ***
Enter Number
    [Arguments]  ${PHONE_TO_CALL}
    wait until page contains element  ${Numpad_dialpad}
    Clear Text                        ${Numpad_dialpad}
    Input Text                        ${Numpad_dialpad}  ${PHONE_TO_CALL}

Delete Numbers
    Long Press  ${Numpad_DeleteButton}

Call Someone
    click element  ${Numpad_sim2}

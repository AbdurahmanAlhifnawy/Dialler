*** Settings ***
Resource  ../Resources/Common.robot


*** Variables ***
${Landing_ContinueBTN}                              popup_positive
${Landing_CloseBTN}                                 dialog_negative_button
${Landing_DiscoverBTN}                              dialog_positive_button
${Landing_Numpad}                                   floating_action_button_container
${Landing_FirstContactThreeVertical_Dots}           xpath=(//android.widget.ImageView[@content-desc="VIEW CONTACT"])[1]
${Landing_ContactFavouriteButton}                   contact_card_title_favorite_button
${Landing_FirstFavouriteContactThreeVertical_Dots}  xpath=(//android.widget.ImageView[@content-desc="VIEW CONTACT"])[5]
${Landing_MainText}                                 speed_dial_empty_text_main
${Landing_TopNavBar}                                invisibleTopView
${Landing_CallReminderButton}                       call_reminder_bouncing_button
${Landing_CloseCallReminder}                        back_button


*** Keywords ***
Skip to main page
    click element                     ${Landing_ContinueBTN}
#    wait until page contains element  ${Landing_CloseBTN}
#    click element                     ${Landing_CloseBTN}

Go to Numpad
    click element  ${Landing_Numpad}

Add First Contact to Favourites
    wait until page contains element  ${Landing_FirstContactThreeVertical_Dots}
    click element                     ${Landing_FirstContactThreeVertical_Dots}
    wait until page contains element  ${Landing_ContactFavouriteButton}
    Swipe By Percent  50  95  50  10
    click element                     ${Landing_ContactFavouriteButton}
    Swipe By Percent  50  10  50  95
    Swipe By Percent  50  10  50  95

Remove Contact from Favourites
    wait until page contains element  ${Landing_FirstFavouriteContactThreeVertical_Dots}
    click element                     ${Landing_FirstFavouriteContactThreeVertical_Dots}
    Swipe By Percent  50  95  50  10
    wait until page contains element  ${Landing_ContactFavouriteButton}
    click element                     ${Landing_ContactFavouriteButton}
    Swipe By Percent  50  10  50  95
    Swipe By Percent  50  10  50  95


Press the top Navigation Bar
    click element  ${Landing_TopNavBar}

Verify Contact is added to favourites
    page should not contain element  ${Landing_MainText}

Verify Contact is removed from favourites
    page should contain element  ${Landing_MainText}

*** Settings ***
Resource  ../Resources/Common.robot

Suite Setup  Start Application
Suite Teardown  End Test

*** Test Cases ***
Call a Contact
    Landing.Go to Numpad
    Numpad.Enter Number  ${PHONE_TO_CALL}
#    Numpad.Call Someone
#    CallScreen.Verify Call is registered

#Add & remove a contact from Favourties
#    Landing.Add First Contact to Favourites
##    Landing.Press the top Navigation Bar
#    Landing.Verify Contact is added to favourites
#    Landing.Remove Contact from Favourites
##    Landing.Press the top Navigation Bar
#    Landing.Verify Contact is removed from favourites
#
#Search & call a contact
#    TopNav.Search for a Contact  ${CONTACT_TO_SEARCH}
#    Search.Call a searched Contact
#    CallScreen.Verify Call is registered
#    CallScreen.Verify Contact name is displayed correctly  ${CONTACT_TO_SEARCH}
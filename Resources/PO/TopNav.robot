*** Settings ***
Resource  ../Resources/Common.robot

*** Variables ***
${TopNav_FavouritesList}  //*[@content-desc="Favorites, tab 1 of 4"]
${TopNav_RecentsList}     //*[@content-desc="Recents, tab 2 of 4"]
${TopNav_ContactsList}    //*[@content-desc="Contacts, tab 3 of 4"]
${TopNav_ContactsList}    //*[@content-desc="Voicemail, tab 4 of 4"]
${TopNav_SearchButton}    action_bar_search
${TopNav_SearchBar}       action_bar_search_edittext

*** Keywords ***
Go to Favourites
    click element  ${TopNav_FavouritesList}

Go to Recents
    click element  ${TopNav_RecentsList}

Go to Contacts
    click element  ${TopNav_ContactsList}

Search for a Contact
    [Arguments]  ${CONTACT_TO_SEARCH}
    click element  ${TopNav_SearchButton}
    input text     ${TopNav_SearchBar}  ${CONTACT_TO_SEARCH}
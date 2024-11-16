*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Set counter value to ten
    Go To  ${HOME_URL}
    Input Text  value  10
    Click Button  aseta
    Page Should Contain  nappia painettu 10 kertaa

Counter value does not change if value is not a number
    Go To  ${HOME_URL}
    Input Text  value  x
    Click Button  aseta
    Page Should Contain  nappia painettu 10 kertaa
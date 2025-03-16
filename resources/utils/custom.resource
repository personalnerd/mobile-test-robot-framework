*** Settings ***
Resource    ../common.resource

*** Keywords ***
## BDD em português
Dado ${keyword}
    Run Keyword    ${keyword}

Quando ${keyword}
    Run Keyword    ${keyword}

Então ${keyword}
    Run Keyword    ${keyword}

E ${keyword}
    Run Keyword    ${keyword}

## Long Press
LongPress
    [Arguments]    ${Locator}    ${duration}=3000
    ${location}=    Get Element Rect    ${Locator}
    ${height}=    Get From Dictionary    ${location}    height
    ${width}=     Get From Dictionary    ${location}    width
    ${x}=         Get From Dictionary    ${location}    x
    ${y}=         Get From Dictionary    ${location}    y
    @{firstFinger}=    Create List    ${height}    ${width}
    @{secondFinger}=   Create List    ${x}    ${y}
    @{fingerPositions}  create list      ${secondFinger}    ${firstFinger}
    Tap With Positions    ${duration}    @{fingerPositions}
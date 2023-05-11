*** Settings ***
Library  SeleniumLibrary
Library    XML

*** Variables ***
${Browser}  Chrome
${URL}  https://www.service.nsw.gov.au/

*** Test Cases ***
UITest
    Open Browser                                ${URL}        ${Browser}
    Set Selenium Speed                          2s
    Maximize Browser Window
    Wait Until Element Is Visible               xpath=/html/body/div[1]/main/div/article/section[1]/div/div[1]/header/div[2]/div/form/div[1]/input        10s
    Click Element                               xpath=/html/body/div[1]/main/div/article/section[1]/div/div[1]/header/div[2]/div/form/div[1]/input
    Input Text                                  xpath=/html/body/div[1]/main/div/article/section[1]/div/div[1]/header/div[2]/div/form/div[1]/input        Apply for a number plate 
    Wait Until Element Is Visible               xpath=/html/body/div[1]/main/div/article/section[1]/div/div[1]/header/div[2]/div/form/div[2]/button       10s    
    Click Button                                xpath=/html/body/div[1]/main/div/article/section[1]/div/div[1]/header/div[2]/div/form/div[2]/button    
    Wait Until Page Contains Element            xpath=/html/body/div[1]/main/div/article/section/div/div/div/div/div/div[1]/h2                            10s             
    Wait Until Element Is Visible               xpath=/html/body/div[1]/div[3]/div/header/div[2]/div/nav/ul/li[4]
    Click Element                               xpath=/html/body/div[1]/div[3]/div/header/div[2]/div/nav/ul/li[4]
    Wait Until Element Is Visible               xpath=/html/body/div[1]/main/div/article/section[1]/div/div/div/div/div/form/div/div/div[1]/input
    Click Element                               xpath=/html/body/div[1]/main/div/article/section[1]/div/div/div/div/div/form/div/div/div[1]/input
    Input Text                                  xpath=/html/body/div[1]/main/div/article/section[1]/div/div/div/div/div/form/div/div/div[1]/input        Sydney 2000
    Wait Until Element Is Visible               xpath=/html/body/div[1]/main/div/article/section[1]/div/div/div/div/div/form/div/div/div[2]/div/button   10s  
    Click Element                               xpath=/html/body/div[1]/main/div/article/section[1]/div/div/div/div/div/form/div/div/div[2]/div/button
    Wait Until Page Contains Element            xpath=/html/body/div[1]/main/div/article/section[1]/div/div/div/div/div/div[2]/div[1]/div/div/div[1]/a
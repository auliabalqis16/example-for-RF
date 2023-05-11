*** Settings ***
Library  RequestsLibrary
Library  Collections

*** Variables ***
${base_url}    http://api.weatherbit.io
${req_url}    /v2.0/forecast/hourly?

*** Test Cases ***
Test123
    Create Session    mysession    ${base_url}    verify=true
    ${params}    Create Dictionary    lat=51.5072    lon=-0.1276    key=094f5a59666c4bb28189a74674643670
    ${response}=    GET request  mysession    ${req_url}    params=${params}
    Log To Console    ${response.status_code}
    Status Should Be  200  ${response}
*** Settings ***
Resource           ../resources/main.robot

*** Test Cases ***
CT01.01 - Get all products
    [Tags]    products
    get all products
    receiver status 200 in response
    valid return is not empty

CT01.02 - Get a single product
    [Tags]    products
    get a single product 1
    receiver status 200 in response
    valid id of product equals "1"
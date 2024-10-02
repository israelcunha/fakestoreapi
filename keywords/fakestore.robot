*** Settings ***

Resource    main.robot

*** Variables ***
${URL_BASE_FAKE}    https://fakestoreapi.com/

*** Keywords ***
get all products
   Set Task Variable    ${url}         ${URL_BASE_FAKE}products
   solicito a consulta sem parametro

valid return is not empty
    Set Test Variable    ${json_response}    ${resposta.json()}
    Should not be Empty  ${json_response}

get a single product ${id}
    Set Task Variable    ${url}         ${URL_BASE_FAKE}products/${id}
    solicito a consulta sem parametro

valid id of product equals ${id}
    Set Test Variable    ${product_id}    ${resposta.json()['id']}
    Should Be Equal      "${product_id}"    ${id}

receiver status ${statusCode} in response
    Status Should Be    ${statusCode}  ${resposta}

create body
    ${body}        Create Dictionary
    ...            title=test
    Set Test Variable    ${body}

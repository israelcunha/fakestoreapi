*** Settings ***
Resource      ../resources/main.robot

*** Keywords ***
solicito a consulta
    ${resposta}     GET
    ...                 expected_status=any
    ...                 headers=${headers}
    ...                 params=${query_params}
    ...                 url=${url}
    Set test variable    ${resposta}

solicito a consulta sem parametro
    ${resposta}     GET
    ...                 expected_status=any
    ...                 url=${url}
     Set test variable    ${resposta}

solicito a sua criação
    ${resposta}     POST
    ...                 params=${query_params}
    ...                 json=${body}
    ...                 expected_status=any
    ...                 url=${url}
    Set test variable    ${resposta}

solicito sua criação sem parametro
    ${resposta}     POST
    ...                 json=${body}
    ...                 expected_status=any
    ...                 url=${url}
    Set test variable    ${resposta}
    
solicito a sua remoção
    ${resposta}     DELETE
    ...                 expected_status=any
    ...                 url=${url}
    Set test variable    ${resposta}

solicito a sua atualização
    ${resposta}     PUT
    ...                 params=${query_params}
    ...                 json=${body}
    ...                 expected_status=any
    ...                 headers=${headers}
    ...                 url=${url}
    Set test variable    ${resposta}

solicito a sua atualização sem parametros
    ${resposta}     PUT
    ...                 json=${body}
    ...                 expected_status=any
    ...                 headers=${headers}
    ...                 url=${url}
    Set test variable    ${resposta}

solicito a sua atualização parcial
    ${resposta}     PATCH
    ...                 json=${body}
    ...                 expected_status=any
    ...                 headers=${headers}
    ...                 url=${url}
    Set test variable    ${resposta}
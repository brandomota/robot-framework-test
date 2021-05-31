*** Settings ***
Library     Browser
Library     ../Libs/CorreiosLib.py

*** Variables ***
${HEADLESS}    false


*** Keywords ***

Clicar em elemento ${selector}
    click  ${selector}    force=true    noWaitAfter=true

Abrir Navegador ${navegador} em modo invisivel ${invisivel}
    New Browser    ${navegador}    headless=${invisivel}

Aguardar elemento ${selector} estar disponivel
    wait for elements state    ${selector}    timeout=3

digitar em ${selector} o texto ${value}
    type text    selector=${selector}    txt=${value}    clear=true

aguardar navegacao
    wait until network is idle    timeout=30

ir para nova pagina
    switch page    NEW

obter valor de elemento ${selector}
    ${elemento}=    get text    selector=${selector}
    [return]  ${elemento}

enviar resultado de ${rua} ${bairro} ${estado}
    mostrar resultado     ${rua}    ${bairro}    ${estado}

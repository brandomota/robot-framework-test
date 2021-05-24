*** Settings ***
Library     Browser


*** Keywords ***

Clicar em elemento ${selector}
    click  ${selector}

Abrir Navegador ${navegador} em modo invisivel ${invisivel}
    New Browser    ${navegador}    headless=${invisivel}


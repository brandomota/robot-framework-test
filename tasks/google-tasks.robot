*** Settings ***
Resource    ../resources/config.robot
Suite Setup   Abrir Navegador firefox em modo invisivel false

*** Tasks ***

Abrir navegador
    New Page    http://google.com



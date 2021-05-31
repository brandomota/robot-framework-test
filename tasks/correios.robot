*** Settings ***
Resource   ../resources/config.robot
Suite Setup    Abrir Navegador firefox em modo invisivel ${HEADLESS}


*** Variables ***
${CEP}    69077741
${INPUT_BUSCA_CEP}    div.mais-acessados > div > div:nth-child(2) > div.campo > form > input[type=text]
${BTN_PESQUISA_CEP}    div.mais-acessados > div > div:nth-child(2) > div.campo > form > button
${ELEMENTO_NOME_RUA}    \#resultado-DNEC > tbody > tr > td:nth-child(1)
${ELEMENTO_NOME_RUA}    \#resultado-DNEC > tbody > tr > td:nth-child(1)
${ELEMENTO_NOME_BAIRRO}    \#resultado-DNEC > tbody > tr > td:nth-child(2)
${ELEMENTO_NOME_CIDADE}    \#resultado-DNEC > tbody > tr > td:nth-child(3)

*** Tasks ***

Acessar pagina de busca endereco por cep
    New Page    https://correios.com.br
    Aguardar elemento ${INPUT_BUSCA_CEP} estar disponivel
    digitar em ${INPUT_BUSCA_CEP} o texto ${CEP}
    clicar em elemento ${BTN_PESQUISA_CEP}
    ir para nova pagina
    aguardar navegacao
    ${result_rua}=    obter valor de elemento ${ELEMENTO_NOME_RUA}
    ${result_bairro}=    obter valor de elemento ${ELEMENTO_NOME_BAIRRO}
    ${result_cidade}=    obter valor de elemento ${ELEMENTO_NOME_CIDADE}
    enviar resultado de ${result_rua} ${result_bairro} ${result_cidade}

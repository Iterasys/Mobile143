*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Entao exibe a pagina do carrinho com o nome preco quantidade e total
    Wait Until Page Contains Element    id=com.saucelabs.mydemoapp.android:id/productTV
    ${titulo_pagina_carrinho} =    Set Variable     id=com.saucelabs.mydemoapp.android:id/productTV
    ${titulo_pagina_carrinho_atual}    Get Text    ${titulo_pagina_carrinho}
    Should Be Equal    ${titulo_pagina_carrinho_atual}    My Cart

    ${titulo_produto_carrinho} =    Set Variable     id=com.saucelabs.mydemoapp.android:id/titleTV
    ${titulo_produto_carrinho_atual}    Get Text    ${titulo_produto_carrinho}

    ${preco_produto_carrinho} =    Set Variable     id=com.saucelabs.mydemoapp.android:id/priceTV
    ${preco_produto_carrinho_atual}   Get Text    ${preco_produto_carrinho}
    Should Be Equal     ${preco_produto_carrinho_atual}    $ 29.99    

    ${quantidade} =    Set Variable     id=com.saucelabs.mydemoapp.android:id/noTV
    ${quantidade_atual}    Get Text    ${quantidade}
    Should Be Equal    ${quantidade_atual}    1

    ${preco_total} =    Set Variable     id=com.saucelabs.mydemoapp.android:id/totalPriceTV
    ${preco_total_atual}   Get Text    ${preco_total}
    Should Be Equal     ${preco_total_atual}    $ 29.99  
 


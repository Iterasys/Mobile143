*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Entao confirma
    [Arguments]    ${titulo_produto_esperado}    ${preco_produto_esperado}
    ${titulo_produto} =    Set Variable     id=com.saucelabs.mydemoapp.android:id/productTV
    # Sleep    10
    # Wait Until Element Is Visible    ${titulo_produto}    20000ms
    Wait Until Page Contains Element    ${titulo_produto} 
    ${titulo_produto_atual}    Get Text    ${titulo_produto}
    Should Be Equal    ${titulo_produto_atual}    ${titulo_produto_esperado}


    ${preco_produto} =    Set Variable     id=com.saucelabs.mydemoapp.android:id/priceTV
    ${preco_produto_atual}    Get Text    ${preco_produto}
    Should Be Equal    ${preco_produto_atual}    ${preco_produto_esperado}


Quando adiciono o produto ao carrinho
    ${botao_adicionar_carrinho} =    Set Variable     accessibility_id=Tap to add product to cart
    Click Element    ${botao_adicionar_carrinho}

Entao o icone do carrinho exibe a 
    [Arguments]    ${quantidade_esperada}
    # ${icone_quantidade_carrinho} =    Set Variable     android=new UiSelector().className("android.widget.ImageView").instance(3)
    ${icone_quantidade_carrinho} =    Set Variable     id=com.saucelabs.mydemoapp.android:id/cartTV
    ${icone_quantidade_carrinho_atual}    Get Text    ${icone_quantidade_carrinho}
    Should Be Equal    ${icone_quantidade_carrinho_atual}    ${quantidade_esperada}

Quando clico no carrinho de compras
    ${icone_carrinho} =    Set Variable     id=com.saucelabs.mydemoapp.android:id/cartIV
    Click Element    ${icone_carrinho}
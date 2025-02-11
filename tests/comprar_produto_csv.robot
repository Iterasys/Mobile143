# This sample code supports Appium Robot client >=2
# pip install robotframework-appiumlibrary
# Then you can paste this into a file and simply run with Robot
#
# Find keywords at: http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html
#
# If your tests fails saying 'did not match any elements' consider using 'wait activity' or
# 'wait until page contains element' before a click command
 
*** Settings ***
Library           AppiumLibrary
Library           DataDriver    file=../fixtures/csv/massa_produtos.csv    dialect=excel    delimiter=,
Library           Screenshot    
Test Template     Cenario Comprar Mochila
Test Teardown     Close Application

Resource    ../screens/inventory_screen_csv.resource
Resource    ../screens/inventory_item_screen_csv.resource
Resource    ../screens/cart_screen_csv.resource

*** Variables ***
${quantidade_esperada}    1 

*** Test Cases ***
TC ${INDEX}    ${id}    ${titulo_produto}    ${preco_produto}

*** Keywords ***
Cenario Comprar Mochila
    [Arguments]    ${id}    ${titulo_produto}    ${preco_produto}    
    Dado que abri o app
    Entao exibe a tela inicial com o texto Products    ${id}
    Quando seleciono o produto     ${titulo_produto}
    Entao confirma    ${titulo_produto}    ${preco_produto}  
    Quando adiciono o produto ao carrinho    ${id}
    Entao o icone do carrinho exibe a    ${quantidade_esperada} 
    Quando clico no carrinho de compras
    Entao exibe a pagina do carrinho com    ${id}    ${titulo_produto}    ${preco_produto}    ${quantidade_esperada}    


*** Keywords ***
    # Inventory Item Ok
    # Inventory Item Ok
    # Cart
    
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
Test Teardown     Close Application

Resource    ../screens/inventory_screen.resource
Resource    ../screens/inventory_item_screen.resource
Resource    ../screens/cart_screen.resource
 
*** Test Cases ***
Cenario Comprar Mochila
    Dado que abri o app
    Entao exibe a tela inicial com o texto Products
    Quando seleciono o produto mochila
    Entao confirma o nome e o preco do produto
    Quando adiciono o produto ao carrinho
    Entao o icone do carrinho exibe a quantidade como um
    Quando clico no carrinho de compras
    Entao exibe a pagina do carrinho com o nome preco quantidade e total


*** Keywords ***
    # Inventory Item Ok
    # Inventory Item Ok
    # Cart
    
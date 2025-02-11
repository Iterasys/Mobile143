*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Dado que abri o app
    # abre o app com as configurações do Appium Inspector
    Open Application    http://127.0.0.1:4723    
    ...    platformName=Android 
    ...    appium:platformVersion=9.0    
    ...    appium:deviceName=emulator5554    
    ...    appium:deviceOrientation=portrait    
    ...    appium:appPackage=com.saucelabs.mydemoapp.android    
    ...    appium:appActivity=com.saucelabs.mydemoapp.android.view.activities.SplashActivity    
    ...    appium:automationName=UiAutomator2    
    ...    browserName=    
    ...    appium:ensureWebviewsHavePages=${True}    
    ...    appium:nativeWebScreenshot=${True}    
    ...    appium:newCommandTimeout=${3600}    
    ...    appium:connectHardwareKeyboard=${True}
       
    Set Appium Timeout    60    # Implicitly Wait - Esperar até 10s todos os elementos

Entao exibe a tela inicial com o texto Products
    # Inventory / Catalog
    ${titulo_pagina} =    Set Variable     id=com.saucelabs.mydemoapp.android:id/productTV
    Wait Until Element Is Visible    ${titulo_pagina}    20000ms
    ${titulo_pagina_atual}    Get Text    ${titulo_pagina}
    Should Be Equal    ${titulo_pagina_atual}    Products

Quando seleciono o produto mochila        
    ${imagem_produto} =    Set Variable     accessibility_id=Sauce Lab Back Packs
    Click Element    ${imagem_produto}
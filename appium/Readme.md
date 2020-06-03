Mobile_automation

1 - Instalar Java 8 (JDK)

2 - Instalar Android Studio

3 - Variáveis de ambiente:
    
    3.1 - Android
        
        ex.: nova variavel de ambiente
            
            nova variavel de sistema
                
                variavel nome: "ANDROID_HOME"

                variavel value: "%LOCALAPPDATA%\Android\Sdk"
    
    3.2 - Java
        
        ex.: nova variavel de ambiente
            
            nova variavel de sistema
                
                variavel nome: "JAVA_HOME"

                variavel value: "C:\Program Files\Java\jdk-14.0.1"

    3.3 - Incluir variaveis no path do sistema
        
        ex.: editar variavel de ambiente path
            
            Nova: %ANDROID_HOME%\platform-tools

            Nova: %ANDROID_HOME%\tools

            Nova: %ANDROID_HOME%\tools\bin

            Nova: %ANDROID_HOME%\tools\lib

            Nova: %JAVA_HOME%\bin

4 - Instalar Ruby

5 - Instalar NodeJS

6 - Instalar Appium

    ex.: npm install -g appium

7 - Instalar Appium-doctor

    ex.: npm install -g appium-doctor

8 - Clone or download repository

9 - Instalar bundle "gem intall bundle"

10 - Instalar as demais gems "bundle install"

11 - Correção da instalção do eventmachine

    11.1 - Desisntalar eventmachine

        ex.: "gem uninstall eventmachine"

    11.2 - Reinstalar eventmachine

        ex.: "gem install eventmachine --platform ruby"

    11.3 - Diagnostico da instalação

        ex.: "appium-doctor --android"

12 - Configurar device no arquivo: "base_mobile_automation\appium\features\support\caps\appium.txt"

13 - Execução dos testes:

Obs.: Está configurada a execução atraves do chrome_headless para CI.

    13.1 - Executar os testes de forma padrão:

     ex.: "cucumber -t @Login"

          "cucumber"

    13.2 - Run and send report in email:

    ex.: "cucumber -t @Login & rake enviar_report"

         "cucumber & rake enviar_report"

    Obs.: O relatório pode ser enviado sob demanda, através do comando "sh bundle exec rake enviar_report"
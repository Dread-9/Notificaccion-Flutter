# Proyecto vue-ionic-firebase


# Requisitos
Instalar node js
Instalar Ionic 
Instalar visual studios o Editor de codigo a preferencia 

## Objetivos de la Aplicacion
Crear aplición híbrida con framework ionic
Conectar aplicación con Firebase y generar notificación Push

## Proyecto Notificaccion Flutter 

````
#--------------Dependencias---------------
Visiaul Studios
Android stuios
extencion de Dart y flutter

````
````
#--------------Dependencias---------------
Descargar sdk de fluter y localizar en path

````
````
--------------Levantar servicio-------------
Mediante emulador de android studios 
````
````
--------------Integrar Firebase----------------
Cambiar id de aplicaccion 
Build grandle
Android manifest xmlMain activity Kt
````
````
--------------Sha1----------------------
cd android && ./gradlew signingReport
````
````
--------------Importar firabase a archivo yaml--------------------
 firebase_core: "^1.10.0"
 firebase_messaging: ^11.1.0
 
````
````
-----------------Conseguir token  -----------------------------------
await Firebase.initializeApp();
    token = await FirebaseMessaging.instance.getToken();
    print('Token :$token');

## Author
Dread/Berdrago

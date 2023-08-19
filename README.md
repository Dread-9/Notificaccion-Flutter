# Proyecto 
# Requisitos
Visual Studios
Android stuios
Extencion de Dart y flutter


## Objetivos de la Aplicacion
Crear aplición híbrida con Flutter
Conectar aplicación con Firebase y generar notificación Push

## Proyecto Notificaccion Flutter 

````
#--------------Levantar servicio-------------
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
     
````
````

## Author
Dread/Berdrago

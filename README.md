README – App de Reconocimiento de Orquídeas (Santuario Histórico de Machu Picchu)

Este proyecto implementa una aplicación móvil para reconocer especies de orquídeas utilizando un modelo de Machine Learning (TensorFlow Lite). La app está diseñada para funcionar offline y optimizar el trabajo de los guardaparques del SERNANP. Se emplea una arquitectura Clean Architecture + MVVM para mantener un proyecto escalable, ordenado y fácil de mantener.

------------------------------------------------------------
ESTRUCTURA DEL PROYECTO
------------------------------------------------------------

plant_identifier_app/
│
├── android/
├── ios/
├── lib/
│   ├── core/
│   ├── data/
│   ├── domain/
│   ├── presentation/
│   └── main.dart
│
├── assets/
│   ├── models/
│   ├── labels/
│   └── images/
│
├── pubspec.yaml
└── README.txt


------------------------------------------------------------
DESCRIPCIÓN DE CARPETAS
------------------------------------------------------------

------------------------------------------------------------
1. /lib/
Carpeta principal donde se encuentra el código de la aplicación.

------------------------------------------------------------
1.1 /lib/core/
Contiene utilidades y configuraciones globales que pueden ser usadas por cualquier capa.
Incluye:
- constantes globales
- validadores
- clases auxiliares
- manejo de errores

No incluye lógica de negocio ni acceso a datos.

------------------------------------------------------------
1.2 /lib/data/
Capa encargada del acceso y manejo de datos.

Estructura:
- datasources/
     - local/ -> base de datos local, caché, almacenamiento
     - ml/ -> carga y ejecución del modelo .tflite, preprocesamiento de imágenes
- models/ -> modelos usados en esta capa
- repositories_impl/ -> implementación de los repositorios definidos en “domain”

Esta capa define cómo se obtienen los datos.

------------------------------------------------------------
1.3 /lib/domain/
Define la lógica de negocio del sistema. No depende de frameworks ni de la UI.

Incluye:
- entities/ -> representaciones puras de datos
- repositories/ -> interfaces de los repositorios
- usecases/ -> acciones principales (ej. classify_orchid_image)

Es la capa más limpia del proyecto.

------------------------------------------------------------
1.4 /lib/presentation/
Contiene la interfaz de usuario.

Incluye:
- pages/ -> pantallas (Home, Cámara, Resultados, etc.)
- viewmodels/ -> lógica de estado usando MVVM
- widgets/ -> componentes visuales reutilizables

No contiene lógica de ML ni acceso directo a bases de datos.

------------------------------------------------------------
1.5 /lib/main.dart
Punto de entrada de la aplicación. Carga temas, rutas y configuración inicial.

------------------------------------------------------------
2. /assets/
Contiene recursos estáticos utilizados por la app.

Estructura:
- models/ -> archivos del modelo TFLite (ej: orchid_model.tflite)
- labels/ -> lista de especies reconocidas (labels.txt)
- images/ -> imágenes estáticas, íconos, guías

No debe contener imágenes del dataset de entrenamiento.

------------------------------------------------------------
3. pubspec.yaml
Archivo donde se configuran las dependencias, assets y paquetes utilizados en la aplicación.

------------------------------------------------------------
RESUMEN
------------------------------------------------------------
La arquitectura está diseñada para:
- trabajar offline
- integrar IA sin mezclarla con UI
- mantener el código modular y claro
- escalar a más especies en el futuro
- permitir desarrollo colaborativo ordenado


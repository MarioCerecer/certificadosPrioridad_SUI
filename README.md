# certificadosPrioridad_SUI
Proyecto para bootcamp de SUI y Zona Tres, mediante el que se implementa blockchain para la creación y gestión de certificados de prioridad de Cámara de Joyería Jalisco.

En Cámara de Joyería Jalisco somo los responsables del evento de Joyería más importante de Ámerica Latina: Expo JOYA. 
Dentro de nuestro evento realizamos la venta de stands para la siguiente Exposición. El órden en que un expositor puede seleccionar stands para la próxima edición se rige por medio de "Prioridades", mismas que constan de un documento (físico) único, con un único dueño a la vez y que suelen venderse y transferirse entre los expositores.

El smart contract cuenta con dos structs; uno para crear una lista de prioridades, lo que permite a Cámara de Joyería llevar un control de los certificados de prioridad creados y su órden. (Esto permite enumerarles, en caso de ser necesario).
El segundo struct es para crear objetos de tipo Prioridad, que serán nuestros certificados de prioridad en sí.

Función crear_registro: será ejecutada una sola vez, para almacenar en este nuevo objeto las direcciones de las prioridades que generemos posteriormente.

Función crear_prioridad: genera instancias referentes a los certificados de prioridad.

Función registrar_prioridad: permite sumar elementos al objeto "registro". De esta manera hacer crecer nuestra lista, indicando las direcciones de las prioridades generadas.

Función actualizar_precio: permite al propietario de una prioridad realizar un cambio de precio de la misma.

Función asignar_prioridad: permite transferir el objeto prioridad a una nueva dirección (owner)


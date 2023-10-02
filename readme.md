

<table><tr><th colspan="4" valign="top">Módulo</th><th colspan="3" valign="top">Nivel de Dificultad</th></tr>
<tr><td colspan="4" valign="top">Desarrollo de aplicaciones JEE conSpring Framework</td><td colspan="3" valign="top">Medio</td></tr>
<tr><td colspan="4" valign="top">Tema: Java Persistence API</td><td colspan="3" valign="top">JPA</td></tr>
<tr><td colspan="7" valign="top">Intención del aprendizaje o aprendizaje esperado:</td></tr>
<tr><td colspan="7" valign="top"><p></p><p>- Configura un proyecto Java utilizando el gestor Maven e incorporando las dependencias requeridas para obtener un proyecto Spring Framework MVC.</p><p>- Codifica vistas y controladores que permitan el despliegue de contenidos estáticos para permitir la navegación web de un usuario.</p><p>- Aplica las configuraciones básicas de log en un proyecto Spring utilizando las librerías de logging para que el aplicativo pueda generar registros de log.</p></td></tr>
<tr><td colspan="7" valign="top">Planteamiento del Problema:</td></tr>
<tr><td colspan="7" valign="top"><p></p><p>Una empresa de asesorías en prevención de riesgos necesita contar con un sistema de información que le permita administrar los principales procesos que se llevan a cabo en ella día a día.</p><p></p><p>Hasta el momento se han definido las siguientes funcionalidades en el sistema:</p></td></tr>
<tr><td colspan="1" rowspan="9" valign="top"></td><td colspan="1" valign="top"><b>ID</b></td><td colspan="1" valign="top"><b>Nombre</b></td><td colspan="2" valign="top"><b>Detalle</b></td><td colspan="1" valign="top"><b>Actor(es)</b></td><td colspan="1" rowspan="9" valign="top"></td></tr>
<tr><td colspan="1" valign="top">1</td><td colspan="1" valign="top"><b>Inicio</b></td><td colspan="2" valign="top"><p>Página  de  inicio  del  portal  con</p><p>información relevante del proyecto</p><p>que se está realizando.</p></td><td colspan="1" valign="top"><p>Cliente	/</p><p>Administrativo	/</p><p>Profesional</p></td></tr>
<tr><td colspan="1" valign="top">2</td><td colspan="1" valign="top"><b>Contacto</b></td><td colspan="2" valign="top"><p>Formulario de contacto para realizar</p><p>consultas.</p></td><td colspan="1" valign="top">Cliente</td></tr>
<tr><td colspan="1" valign="top">3</td><td colspan="1" valign="top"><b>Crear Capacitación</b></td><td colspan="2" valign="top"><p>Formulario	para	crear	una</p><p>capacitación en el sistema.</p></td><td colspan="1" valign="top">Cliente</td></tr>
<tr><td colspan="1" valign="top">4</td><td colspan="1" valign="top"><b>Listar Capacitaciones</b></td><td colspan="2" valign="top">Listado de capacitaciones registradas.</td><td colspan="1" valign="top">Cliente</td></tr>
<tr><td colspan="1" valign="top">5</td><td colspan="1" valign="top"><b>Listado de Usuarios</b></td><td colspan="2" valign="top"><p>Listado con los usuarios existentes en</p><p>plataforma.</p></td><td colspan="1" valign="top">Administrativo</td></tr>
<tr><td colspan="1" valign="top">6</td><td colspan="1" valign="top"><b>Crear Usuario</b></td><td colspan="2" valign="top"><p>Formulario que permitirá crear un</p><p>usuario en sistema.</p></td><td colspan="1" valign="top">Administrativo</td></tr>
<tr><td colspan="1" valign="top">7</td><td colspan="1" valign="top"><b>Editar Cliente</b></td><td colspan="2" valign="top"><p>Formulario que permite modificar los</p><p>datos de un usuario de tipo cliente.</p></td><td colspan="1" valign="top">Administrativo</td></tr>
<tr><td colspan="1" valign="top">8</td><td colspan="1" valign="top"><b>Editar Administrativo</b></td><td colspan="2" valign="top"><p>Formulario que permite modificar los</p><p>datos	de	un	usuario	de	tipo administrativo.</p></td><td colspan="1" valign="top">Administrativo</td></tr>
<tr><td colspan="7" valign="top"></td></tr>
</table>

![](Aspose.Words.5531f293-8478-4b00-91f5-c78b335fa0f3.001.png)

|9|**Editar Profesional**|<p>Formulario que permite modificar los</p><p>datos	de	un	usuario	de	tipo profesional.</p>|Administrativo|
| :- | :- | :- | :- |
|10|**Listado Visitas**|<p>Lista de todas las visitas realizadas a cada uno de los clientes. Además,</p><p>posee un formulario que permite agregar nuevas visitas a sistema.</p>|Profesional|
|11|**Responder checklist**|Listado de chequeos de una visita.|Profesional|
|12|**Listado Pago**|Lista de todos los pagos realizados por los clientes.|Administrativo|
|13|**Crear Pago**|Permitirá agregar un pago al sistema.|Administrativo|
|14|**Listado Asesorías**|Lista con las asesorías realizadas hasta el momento.|Profesional|
|15|**Crear Asesorías**|Contiene un formulario para agregar una nueva asesoría.|Profesional|
|16|**Reportes**|Despliega reportes específicos.|Profesional|
|17|**Administrar Asistentes**|<p>Administración de asistentes a una</p><p>capacitación; incluye listarlos, poder agregar asistentes y eliminarlos.</p>|Cliente|
|18|**Login**|<p>Contendrá un acceso a un usuario al</p><p>portal a través de un RUT de usuario y una clave.</p>|<p>Cliente	/</p><p>Administrativo	/</p><p>Profesional</p>|
|19|**Gestionar accidentes**|<p>Listado con todos los accidentes registrados en plataforma. Además, permite editarlos, agregar uno nuevo y eliminarlos.  En  esta  sección  cada</p><p>cliente administra sus propios accidentes.</p>|Cliente|
|20|**Administrar chequeos**|<p>Permite mostrar los distintos chequeos realizados a cada cliente en una visita a terreno, y permite agregar</p><p>uno nuevo, y cambiar su estado.</p>|Administrativo|


Como parte de este ejercicio se pide realizar lo siguiente:

1. Cree un proyecto nuevo para Spring MVC. Se recomienda el uso de STS para esta labor.
1. Cree tres paquetes dentro de “src”: controlador, modelo y servicio.
1. Implemente las funcionalidades necesarias para dar soporte al caso de uso Listar Capacitaciones.

El entregable debe ser un proyecto Java Web, comprimido en ZIP o en RAR.

**Nota 1:** En este caso sí es necesario que la plataforma se conecte a la base de datos.

**Nota 2:** Es fundamental en este ejercicio que use JPA. El Datos de apoyo al planteamiento

|<p></p><p>**Ejecución**: Grupal (equipo de no más 4 personas)</p><p></p><p>**Componentes para evaluar**: Se deberá entregar un archivo comprimido con el proyecto.</p>|
| :- |
|Preguntas guía:|
||
|Recursos Bibliográficos:|
|<p></p><p>**Spring MVC: Configuración**</p><p><https://www.javatutoriales.com/2015/12/spring-mvc-parte-1-configuracion.html></p><p></p><p>**Introducción a MVC en Spring**</p><p><http://www.jtech.ua.es/j2ee/publico/spring-2012-13/sesion03-apuntes.html></p><p></p><p>**Crear un proyecto MVC con Spring Tool Suite (STS)**</p><p><https://www.youtube.com/watch?v=eMG9qi061D8></p><p></p><p>**Spring MVC - Cómo incluir archivos CSS o JS en una página JSP**</p><p><https://mkyong.com/spring-mvc/spring-mvc-how-to-include-js-or-css-files-in-a-jsp-page/></p><p></p><p>**Log con log4j**</p><p><https://www.es.w3ki.com/spring/logging_with_log4j.html></p>|



![Static Badge](https://img.shields.io/badge/Ejercicio%20Grupal%206%20-%20Modulo%206%20-%20%23FFFFFF?color=abcdef&cacheSeconds=3200)


![GitHub last commit](https://img.shields.io/badge/Integrantes%20%3A%20-%20%237E7E73?cacheSeconds=7200
) ![GitHub code size in bytes](https://img.shields.io/badge/Bastian%20Mariangel%20-%20%2350CAC0?cacheSeconds=7200
)
![GitHub last commit](https://img.shields.io/badge/Ivan%20Mieres%20-%20%23D8DA31?cacheSeconds=7200
)
![GitHub last commit](https://img.shields.io/badge/Patricio%20Bonnin%20-%20%23E87215?cacheSeconds=7200
)
![GitHub last commit](https://img.shields.io/badge/Roberto%20Rivas%20-%20%23F70910?cacheSeconds=7200
)
![GitHub last commit](https://img.shields.io/badge/Angelica%20Romero%20-%20%23A613DB?color=rgba(181%2C%2028%2C%20230%2C%200.8)&cacheSeconds=7200
)

## Información de Archivos del proyecto

• Si desea conectarse a la base de datos del proyecto recuerde cambiar la contraseña y Usuario de MySQL
en el archivo application.yml en la ruta: 

src\main\java\resources\application.yml

• La base de datos se encuentra en :  src\main\resources\prev_riesgo.sql

![image](https://github.com/RobertoRivasL/Ejercicio_Grupal_6_Modulo_6/assets/131497718/fdd87164-2920-4545-834e-69bc6f0c197f)
![image](https://github.com/RobertoRivasL/Ejercicio_Grupal_6_Modulo_6/assets/131497718/5bcd8089-716d-400e-82f4-04af12d5c2ef)
![image](https://github.com/RobertoRivasL/Ejercicio_Grupal_6_Modulo_6/assets/131497718/87dfc45c-db4c-4098-aae1-848060645b3d)
![image](https://github.com/RobertoRivasL/Ejercicio_Grupal_6_Modulo_6/assets/131497718/b1c64b0e-ca7f-4c56-be42-eb82eca81eb6)
![image](https://github.com/RobertoRivasL/Ejercicio_Grupal_6_Modulo_6/assets/131497718/69146514-e6b7-4113-88f5-66ed4ef56fab)
![image](https://github.com/RobertoRivasL/Ejercicio_Grupal_6_Modulo_6/assets/131497718/9585aca6-44cb-448a-b674-ce4208175a12)
![image](https://github.com/RobertoRivasL/Ejercicio_Grupal_6_Modulo_6/assets/131497718/c036089c-8281-4d8f-ba9c-2dae8ff8334c)
![image](https://github.com/RobertoRivasL/Ejercicio_Grupal_6_Modulo_6/assets/131497718/de0c6ac5-2985-435e-bb54-6d8800146770)
![image](https://github.com/RobertoRivasL/Ejercicio_Grupal_6_Modulo_6/assets/131497718/6cd5767d-016f-4a50-bfe5-a846ae5b56fc)
![image](https://github.com/RobertoRivasL/Ejercicio_Grupal_6_Modulo_6/assets/131497718/2f8b08f0-c9b7-4561-b43c-a6f89d8d9046)
![image](https://github.com/RobertoRivasL/Ejercicio_Grupal_6_Modulo_6/assets/131497718/9d6c44ef-dbe0-4c07-bfb8-8c5a79b1c49f)
![image](https://github.com/RobertoRivasL/Ejercicio_Grupal_6_Modulo_6/assets/131497718/489f84f0-db79-454c-a37d-a6eb14614dc2)














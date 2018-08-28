Institution.create!([
    {
        name: "Universidad de Santiago"
    },
    {
        name: "Universidad de Chile"
    },
    {
        name: "Universidad Técnica Federico Santa María"
    },
    {
        name: "Pontificia Universidad Católica"
    },
    {
        name: "Universidad Adolfo Ibáñez"
    },
    {
        name: "Universidad Andrés Bello"
    },
    {
        name: "Universidad Diego Portales"
    },
    {
        name: "Universidad Finis Terrae"
    },
    {
        name: "Universidad Técnica Federico Santa María"
    },
    {
        name: "Universidad de Concepción"
    },
    {
        name: "Universidad de Talca"
    },
    {
        name: "Universidad Católica de Valparaíso"
    }
])


Semester.create!([
    {
        year: 2018,
        number: 2
    },
    {
        year: 2018,
        number: 1
    },
    {
        year: 2017,
        number: 2
    },
    {
        year: 2017,
        number: 1
    },
    {
        year: 2016,
        number: 2
    },
    {
        year: 2016,
        number: 1
    },
    {
        year: 2015,
        number: 2
    },
    {
        year: 2015,
        number: 1
    },
    {
        year: 2014,
        number: 2
    },
    {
        year: 2014,
        number: 1
    }
].reverse)

Student.create!([
    {
        institution_id: 1,
        email: "david.sanhueza.a@usach.cl",
        password: "holamundo",
        first_name: "David",
        last_name: "Sanhueza",
        rut: "19.411.979-8",
        address: "Melipilla",
        phone: "+56973229533"

    },
    {
        institution_id: 1,
        type: "Mentor",
        email: "daniel.morales.m@usach.cl",
        password: "holamundo",
        first_name: "Daniel",
        last_name: "Morales Miguel",
        rut: "18.463.821-5",
        address: "Santiago",
        phone: "+56951177602",
        specialty: "Frontend Development, UI/UX, APIs, ",
        motivation: "Me encanta enseñar y ayudar a otros a llevar a cabo sus proyectos"
    },
    {
        institution_id: 1,
        email: "alejandro.camus@usach.cl",
        password: "holamundo",
        first_name: "Alejandro",
        last_name: "Camus",
        rut: "18.923.245-4",
        address: "Quilicura",
        phone: "+56977353684"
    },
    {
        institution_id: 1,
        type: "Mentor",
        email: "rodolfo.zuniga@usach.cl",
        password: "holamundo",
        first_name: "Rodolfo",
        last_name: "Zuñiga",
        rut: "17.989.983-2",
        address: "Macul",
        specialty: "Inteligencia artificial",
        motivation: "Aplicar la metodología para el aprendizaje de redes neuronales"
    },
    {
        institution_id: 1,
        email: "alonso.maripi@usach.cl",
        password: "holamundo",
        first_name: "Alonso",
        last_name: "Maripi",
        rut: "19.515.478-3",
        address: "Puente Alto",
        phone: "+56970071643",
    },
    {
        institution_id: 1,
        type: "Mentor",
        email: "mauricio.delrio@usach.cl",
        password: "holamundo",
        first_name: "Mauricio",
        last_name: "del Rio",
        rut: "17.832.428-k",
        address: "San Bernardo",
        specialty: "Programación avanzada",
        motivation: "Ayudar a los alumnos a entender el punto de vista de un programador"
    },
    {
        institution_id: 1,
        email: "francisca.fuentes@usach.cl",
        password: "holamundo",
        first_name: "Francisca",
        last_name: "Fuentes",
        rut: "19.478.291-0",
        address: "Macul",
        phone: "+56982751492"
    },
    {
        institution_id: 1,
        type: "Mentor",
        email: "jorge.torres@usach.cl",
        password: "holamundo",
        first_name: "Jorge",
        last_name: "Torres",
        rut: "18.190.275-2",
        address: "La Cisterna",
        specialty: "Testing",
        motivation: "Compartir el conocimiento de la tecnicas de testing para nuestros programas"
    },
    {
        institution_id: 1,
        email: "javier.rubina@usach.cl",
        password: "holamundo",
        first_name: "Javier",
        last_name: "Rubina",
        rut: "19.789.182-6",
        address: "Lo Prado",
        phone: "+5697284612"
    },
    {
        institution_id: 1,
        type: "Mentor",
        email: "fernanda.sepulveda@usach.cl",
        password: "holamundo",
        first_name: "Fernanda",
        last_name: "Sepúlveda",
        rut: "18.234.812-9",
        address: "La Reina",
        specialty: "Criptografía",
        motivation: "Enseñar los criptosistemas que se usan actualmente"
    },
    {
        institution_id: 1,
        email: "sandra.santis@usach.cl",
        password: "holamundo",
        first_name: "Sandra",
        last_name: "Santis",
        rut: "19.782.156-k",
        address: "Estación Central",
        phone: "+56981236722"
    },
    {
        institution_id: 1,
        type: "Mentor",
        email: "marcela.loyola@usach.cl",
        password: "holamundo",
        first_name: "Marcela",
        last_name: "Loyola",
        rut: "18.291.318-0",
        address: "Lo Valledor",
        specialty: "Simulación computacional",
        motivation: "Compartir los conocimientos para realizar simulaciones computacionales"
    },
    {
        institution_id: 1,
        email: "elena.andreus@usach.cl",
        password: "holamundo",
        first_name: "Elena",
        last_name: "Andréus",
        rut: "13.048.347-4",
        address: "Estación Central",
        phone: "+56987253692"
    },
    {
        institution_id: 1,
        email: "camilo.acevedo@usach.cl",
        password: "holamundo",
        first_name: "Camilo",
        last_name: "Acevedo",
        rut: "18.459.192-8",
        address: "Puente Alto",
        phone: "+56982614922"
    },
    {
        institution_id: 1,
        email: "sofia.contreras@usach.cl",
        password: "holamundo",
        first_name: "Sofia",
        last_name: "Contreras",
        rut: "18.293.512-k",
        address: "El Bosque",
        phone: "+5698123758"
    },
    {
        institution_id: 1,
        email: "camila.munoz@usach.cl",
        password: "holamundo",
        first_name: "Camila",
        last_name: "Muñoz",
        rut: "19.123.487-1",
        address: "Estación Central",   
        phone: "+56912479133"
    },
    {
        institution_id: 1,
        email: "tamara.penaloza@usach.cl",
        password: "holamundo",
        first_name: "Tamara",
        last_name: "Peñaloza",
        rut: "19.682.851-2",
        address: "La Cisterna",
        phone: "`56904272811"
    },
    {
        institution_id: 1,
        email: "felipe.plaza@usach.cl",
        password: "holamundo",
        first_name: "Felipe",
        last_name: "Plaza",
        rut: "19.741.820-8",
        phone: "+5698733192"
    }
])

Workshop.create!([
    {
        institution_id: 1,
        mentor_id: 2,
        title: "Taller de Javascript",
        description: "Desarrollo web con javascript",
        schedule: "Martes 11:30 - 12:50 hrs",
        quotas: 5,
        semester_id: Semester.last.id-1
    },
    {
        institution_id: 1,
        mentor_id: 2,
        title: "Taller de React Native",
        description: "Desarrollo de aplicaciones hibridas con React Native",
        schedule: "Miércoles 11:30 - 12:50 hrs",
        quotas: 6,
        semester_id: Semester.last.id
    },
    {
        institution_id: 1,
        mentor_id: 4,
        title: "Inteligencia Artificial",
        description: "Desarrolo de programas utilizando inteligencia artificial",
        schedule: "Martes 13:50 - 15:20 hrs",
        quotas: 6,
        semester_id: Semester.last.id-1
    },
    {
        institution_id: 1,
        mentor_id: 4,
        title: "Redes Neuronales",
        description: "Predicción de problemas sin una función definida",
        schedule: "Martes 15:30 - 17:00 hrs",
        quotas: 6,
        semester_id: Semester.last.id
    },
    {
        institution_id: 1,
        mentor_id: 6,
        title: "Programación avanzada",
        description: "Aplicación de métodos de programación avanzada",
        schedule: "Jueves 11:20 - 12:50 hrs",
        quotas: 6,
        semester_id: Semester.last.id-1
    },
    {
        institution_id: 1,
        mentor_id: 6,
        title: "Redes de petri",
        description: "Aplicación de las redes de petri en la vida real",
        schedule: "Viernes 13:50 - 15:20 hrs",
        quotas: 6,
        semester_id: Semester.last.id
    },
    {
        institution_id: 1,
        mentor_id: 8,
        title: "Testing",
        description: "Tecnicas de testing",
        schedule: "Martes 15:30 - 17:00 hrs",
        quotas: 6,
        semester_id: Semester.last.id-1
    },
    {
        institution_id: 1,
        mentor_id: 8,
        title: "Pruebas unitarias",
        description: "Desarrollo de pruebas unitarias a nuestro programa",
        schedule: "Viernes 11:20 - 12:50 hrs",
        quotas: 6,
        semester_id: Semester.last.id
    },
    {
        institution_id: 1,
        mentor_id: 10,
        title: "Criptografía",
        description: "Base matemática de la criptografía utilizada actualmente",
        schedule: "Lunes 15:30 - 17:00 hrs",
        quotas: 6,
        semester_id: Semester.last.id-1   
    },
    {
        institution_id: 1,
        mentor_id: 10,
        title: "Curvas elípticas",
        description: "Estudio de las curvas elipticas de 256 bits",
        schedule: "Viernes 09:40 - 11:10 hrs",
        quotas: 6,
        semester_id: Semester.last.id
    },
    {
        institution_id: 1,
        mentor_id: 12,
        title: "Simulación computacional",
        description: "Técnicas de simulación computacional",
        schedule: "Miércoles 09:40 - 11:10",
        quotas: 6,
        semester_id: Semester.last.id-1
    },
    {
        institution_id: 1,
        mentor_id: 12,
        title: "Variables discretas",
        description: "Utilización de las variables discretas en la simulación",
        schedule: "lunes 09:40 - 11:10",
        quotas: 6,
        semester_id: Semester.last.id
    }
])

Enrollment.create([
    {
        student_id: 1,
        workshop_id: 1,
        confirmed: true
    },
    {
        student_id: 1,
        workshop_id: 3,
        confirmed: true
    },
    {
        student_id: 1,
        workshop_id: 2,
        confirmed: true
    },
    {
        student_id: 1,
        workshop_id: 4,
        confirmed: true
    },
    {
        student_id: 3,
        workshop_id: 5,
        confirmed: true
    },
    {
        student_id: 3,
        workshop_id: 11,
        confirmed: true
    },
    {
        student_id: 3,
        workshop_id: 8,
        confirmed: true
    },
    {
        student_id: 3,
        workshop_id: 12,
        confirmed: true
    },
    {
        student_id: 5,
        workshop_id: 7,
        confirmed: true
    },
    {
        student_id: 5,
        workshop_id: 9,
        confirmed: true
    },
    {
        student_id: 5,
        workshop_id: 6,
        confirmed: true
    },
    {
        student_id: 5,
        workshop_id: 10,
        confirmed: true
    },
    {
        student_id: 7,
        workshop_id: 1,
        confirmed: true
    },
    {
        student_id: 7,
        workshop_id: 3,
        confirmed: true
    },
    {
        student_id: 7,
        workshop_id: 2,
        confirmed: true
    },
    {
        student_id: 7,
        workshop_id: 4,
        confirmed: true
    },
    {
        student_id: 9,
        workshop_id: 5,
        confirmed: true
    },
    {
        student_id: 9,
        workshop_id: 11,
        confirmed: true
    },
    {
        student_id: 9,
        workshop_id: 8,
        confirmed: true
    },
    {
        student_id: 9,
        workshop_id: 12,
        confirmed: true
    },
    {
        student_id: 11,
        workshop_id: 7,
        confirmed: true
    },
    {
        student_id: 11,
        workshop_id: 9,
        confirmed: true
    },
    {
        student_id: 11,
        workshop_id: 6,
        confirmed: true
    },
    {
        student_id: 11,
        workshop_id: 10,
        confirmed: true
    },
    {
        student_id: 13,
        workshop_id: 1,
        confirmed: true
    },
    {
        student_id: 13,
        workshop_id: 3,
        confirmed: true
    },
    {
        student_id: 13,
        workshop_id: 2,
        confirmed: true
    },
    {
        student_id: 13,
        workshop_id: 4,
        confirmed: true
    },
    {
        student_id: 14,
        workshop_id: 5,
        confirmed: true
    },
    {
        student_id: 14,
        workshop_id: 11,
        confirmed: true
    },
    {
        student_id: 14,
        workshop_id: 8,
        confirmed: true
    },
    {
        student_id: 14,
        workshop_id: 12,
        confirmed: true
    },
    {
        student_id: 15,
        workshop_id: 7,
        confirmed: true
    },
    {
        student_id: 15,
        workshop_id: 9,
        confirmed: true
    },
    {
        student_id: 15,
        workshop_id: 6,
        confirmed: true
    },
    {
        student_id: 15,
        workshop_id: 19,
        confirmed: true
    },
    {
        student_id: 16,
        workshop_id: 1,
        confirmed: true
    },
    {
        student_id: 16,
        workshop_id: 3,
        confirmed: true
    },
    {
        student_id: 16,
        workshop_id: 2,
        confirmed: true
    },
    {
        student_id: 16,
        workshop_id: 4,
        confirmed: true
    },
    {
        student_id: 17,
        workshop_id: 5,
        confirmed: true
    },
    {
        student_id: 17,
        workshop_id: 11,
        confirmed: true
    },
    {
        student_id: 17,
        workshop_id: 8,
        confirmed: true
    },
    {
        student_id: 17,
        workshop_id: 12,
        confirmed: true
    },
    {
        student_id: 18,
        workshop_id: 7,
        confirmed: true
    },
    {
        student_id: 18,
        workshop_id: 9,
        confirmed: true
    },
    {
        student_id: 18,
        workshop_id: 6,
        confirmed: true
    },
    {
        student_id: 18,
        workshop_id: 10,
        confirmed: true
    },
])

Topic.create!([
    {
        workshop_id: 1,
        title: "Configuración de entorno",
        description: "Instalación de entorno de desarrollo",
        student_id: 2
    },
    {
        workshop_id: 1,
        title: "Instalación de editor",
        description: "Instalación de Visual Studio Code",
        student_id: 1
    },
    {
        workshop_id: 2,
        title: "Ejecutar aplicación en smartphone",
        description: "Correr aplicación en mi propio smartphone",
        student_id: 7
    },
    {
        workshop_id: 2,
        title: "Agregar Imágen a la aplicación",
        description: "Cómo agregar una imágen a nuestra aplicación",
        student_id: 2
    },
    {
        workshop_id: 3,
        title: "Configuración de entorno",
        description: "Instalación de entorno de desarrollo",
        student_id: 4
    },
    {
        workshop_id: 3,
        title: "Instalación de editor",
        description: "Instalación de matlab",
        student_id: 13
    },
    {
        workshop_id: 4,
        title: "Como ejecutar el programa",
        description: "Como ejecutar el programa escrito en matlab",
        student_id: 16
    },
    {
        workshop_id: 4,
        title: "Error al compilar con la lista entregada",
        description: "Matlab me arroja error cuando ejecuto el programa con la lista entregada",
        student_id: 1
    },
    {
        workshop_id: 5,
        title: "Configuración de entorno",
        description: "Instalación de entorno de desarrollo",
        student_id: 6
    },
    {
        workshop_id: 5,
        title: "Complejidad del ejercicio 4",
        description: "¿Cuál es la complejidad del ejercicio 4?",
        student_id: 9
    },
    {
        workshop_id: 6,
        title: "Programa para simulación de redes de petri",
        description: "Configuración del programa para la simulación de redes de petri",
        student_id: 6
    },
    {
        workshop_id: 6,
        title: "Nodo de evaluación",
        description: "Cómo cambiar el nodo de evaluación para una simulación más eficiente",
        student_id: 15
    },
    {
        workshop_id: 7,
        title: "Configuración de entorno",
        description: "Instalación de entorno de desarrollo",
        student_id: 8
    },
    {
        workshop_id: 7,
        title: "Ejecutar prueba en código de ruby",
        description: "¿Cómo ejecuto el código de ruby en el programa?",
        student_id: 18
    },
    {
        workshop_id: 8,
        title: "Cambio de parámetro altera la salida del programa",
        description: "¿Por qué al cambiar el parámetro de la variable x altera la salida del programa?",
        student_id: 14
    },
    {
        workshop_id: 8,
        title: "Solución para compilación",
        description: "Necesito ayuda para realizar la compilación",
        student_id: 17
    },
    {
        workshop_id: 9,
        title: "Configuración de entorno",
        description: "Instalación de entorno de desarrollo",
        student_id: 10
    },
    {
        workshop_id: 9,
        title: "Código para emular RSA",
        description: "En el standar de NIS hay un código para emular RSA",
        student_id: 5
    },
    {
        workshop_id: 10,
        title: "Representación de una EC en los reales",
        description: "¿Cómo se representa una EC en los reales?",
        student_id: 15
    },
    {
        workshop_id: 10,
        title: "Insertar EC en dispositivos pequeños",
        description: "¿Puedo insertar una EC de 512 en una tarjeta de crédito?",
        student_id: 11
    },
    {
        workshop_id: 11,
        title: "Configuración de entorno",
        description: "Instalación de entorno de desarrollo",
        student_id: 12
    },
    {
        workshop_id: 11,
        title: "Correr simulación en Arena",
        description: "¿Cómo puedo correr una simulación en Arena?",
        student_id: 14
    },
    {
        workshop_id: 12,
        title: "Solución ejercio 2 de la guía",
        description: "Si tengo una población menor, ¿puedo cambiar los otros parámetros?",
        student_id: 17
    },
    {
        workshop_id: 12,
        title: "Resultados por variable z",
        description: "Al aumentar la variable z, ¿por qué me da sigue dando el mismo resultado?",
        student_id: 14
    }
])

Comment.create!([
    {
        topic_id: 1,
        content: "Lorem ipsum dolor sit amet",
        student_id: 1,
    },
    {
        topic_id: 2,
        content: "Hola mundo!",
        student_id: 2, 
    }
])

Material.create!([
    {
        title: "Instrucciones de ejecución de código",
        workshop_id: 1
    },
    {
        title: "Instrucciones de conección a una API",
        workshop_id: 2

    }
])

Moderator.create!([
    {
        institution_id: 1,
        first_name: "Rosa",
        last_name: "Barrera",
        email: "rosa.barrera@usach.cl",
        password: "holamundo",
        role: "Jefa de Carrera"
    }
])
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Semester.create!([
    {
        year: 2018,
        number: 1
    },
    {
        year: 2018,
        number: 2
    }
])

Student.create!([
    {
        email: "david.sanhueza.a@usach.cl",
        password: "holamundo",
        first_name: "David",
        last_name: "Sanhueza",
        rut: "19.411.979-8",
        address: "Melipilla",
        phone: "+56x973229533"

    },
    {
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
    }
])

Workshop.create!([
    {
        mentor_id: 2,
        title: "Taller de Javascript",
        description: "Desarrollo web con javascript",
        schedule: "Martes 11:30 - 12:50 hrs",
        quotas: 5,
        semester_id: 1
    },
    {
        mentor_id: 2,
        title: "Taller de React Native",
        description: "Desarrollo de aplicaciones hibridas con React Native",
        schedule: "Miércoles 11:30 - 12:50 hrs",
        quotas: 6,
        semester_id: 2
    }
])

Enrollment.create!([
    {
        student_id: 1,
        workshop_id: 1
    },
    {
        student_id: 2,
        workshop_id: 2
    }
])

Topic.create!([
    {
        workshop_id: 1,
        title: "Configuración de entorno",
        description: "Instalación de entorno de desarrollo",
        student_id: 1
    },
    {
        workshop_id: 2,
        title: "Exportar APK",
        description: "Cómo exportar archivo de aplicación para android",
        student_id: 2
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
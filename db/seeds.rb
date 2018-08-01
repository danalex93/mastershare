# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Active_storage_attachment.create([
    {
        name: "",
        record_type: "",
        record_id: ,
        blob_id: 
    },
    {
        name: "",
        record_type: "",
        record_id: ,
        blob_id:
    }
])

p "Created #{Active_storage_attachment.count} entries"

Active_storage_blob.create([
    {
        key: "",
        filename: "",
        content_type: "",
        metadata: "",
        byte_size: ,
        checksum: 
    },
    {
        key: "",
        filename: "",
        content_type: "",
        metadata: "",
        byte_size: ,
        checksum:
    }
])

p "Created #{Active_storage_blob.count} entries"

Comment.create([
    {
        content: "",
        student_id: ,
    },
    {
        content: "",
        student_id: , 
    }
])

p "Created #{Comment.count} entries"

Enrollment.create([
    {
        student_id: 1,
        workshop_id: 1
    },
    {
        student_id: 2,
        workshop_id: 2
    }
])

p "Created #{Enrollment.count} entries"


Material.create([
    {
        title: "Instrucciones de ejecución de código",
        workshop_id: 1
    },
    {
        title: "Instrucciones de conección a una API",
        workshop_id: 2

    }
])

p "Created #{Material.count} entries"

Semester.create([
    {
        year: 2018,
        number: 1
    },
    {
        year: 2018,
        number: 2
    }
])

p "Created #{Semester.count} entries"

Student.create([
    {
        email: "david.sanhueza.a@usach.cl",
        encrypted_password: "",
        first_name: "David",
        last_name: "Sanhueza",
        rut: "19.411.979-8",
        address: "Melipilla",
        phone: "973229533",
        specialty: "",
        motivation: ""

    },
    {
        email: "daniel.morales.m@usach.cl",
        encrypted_password: "",
        first_name: "Daniel",
        last_name: "Morales",
        rut: "",
        address: "Santiago",
        phone: "",
        specialty: "",
        motivation: ""
    }
])

p "Created #{Student.count} entries"

Topic.create([
    {
        workshop_id: 1,
        title: "Configuración de entorno",
        description: "Instalación de entorno de desarrollo",
        student_id: 1
    },
    {
        workshop_id: 2,
        title: "Exportar apk",
        description: "Cómo exportar archivo de aplicación para android",
        student_id: 2
    }
])

p "Created #{Topic.count} entries"

Workshop.create([
    {
        mentor_id: 1,
        title: "Taller de Javascript",
        description: "Desarrollo web con javascript",
        schedule: "Martes 11:30 - 12:50 hrs",
        quotas: 5,
        semester_id: 1
    },
    {
        mentor_id: 1,
        title: "Taller de React Native",
        description: "Desarrollo de aplicaciones hibridas con React Native",
        schedule: "Miércoles 11:30 - 12:50 hrs",
        quotas: 6,
        semester_id: 2
    }
])

p "Created #{Workshop.count} entries"


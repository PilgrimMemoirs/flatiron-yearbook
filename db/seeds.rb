User.create(email: "jamie@pilgrim.com", password: "something")
Course.create(title: "SE01")
UsersCourse.create(user: User.first, course: Course.first)

Project.create(title: "Something Awesome")
Student.create(course: Course.first, project: Project.first, first_name: "Jam")
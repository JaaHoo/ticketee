admin_user = User.create(email: "admin@example.com",
													name: "Admin",
													password: "password",
													admin: true)

Project.create(name: "Ticketee Beta")
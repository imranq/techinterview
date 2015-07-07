Problem.create!([
  {title: "Expected value of dice", body: "What would you pay me to give you the same number of dollars on a dice roll", answer: 3.5, misc: nil}
])
User.create!([
  {email: "imranq02@gmail.com", password_hash: "$2a$10$3xj09p9PYJMakU3CcKBdbeQNj428XnhFzeth9WK0DK7S4IcwpUYCq", password_salt: "$2a$10$3xj09p9PYJMakU3CcKBdbe", admin: true}
])

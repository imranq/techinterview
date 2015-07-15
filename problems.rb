Problem.create!([
  {title: "Expected Value", body: "Find the expected value of a die when its rolled\r\n\r\n\\[\\int_a^b F(x) - \\zeta (x) \\]\r\n\r\n\\[ \\int_c^d G(x) = g(c)-g(d) \\]", answer: "3.5", solution: nil, videolink: nil},
  {title: "Tower of Hanoi", body: "You have three towers, one with 64 rings on it. How much will it take to move from one twoer to the next knowing that you can not put a bigger ring on a smaller ring?\r\n\r\n\\[2^x+x\\]", answer: "62^2", solution: "$2^n -2$ tower of power", videolink: ""}
])
User.create!([
  {email: "imranq02@gmail.com", password_hash: "$2a$10$NYGsZLzHtI8fB40soyMKn.PoZ2ffw8GWblmJ.HW/SyRpR3vcEBph6", password_salt: "$2a$10$NYGsZLzHtI8fB40soyMKn.", admin: true}
])

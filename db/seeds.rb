Problem.create!([
  {title: "Infinite exponentials", body: "In the infinite exponential sequence of:\r\n\\[x^{x^{x^{^{.^{.}}}}}=2\\] \r\n\r\nSolve for $x$", answer: "sqrt(2)", solution: "Since we are dealing with an infinite sequence, remove one step of the exponentials and still use the original equation:\r\n\r\n\\[x^{x^{x^{^{.^{.}}}}}=2\\] \r\n\\[x^{x^{x^{x^{.^{.}}}}}=2\\]\r\n\\[x^{2}=2\\]\r\n\\[x=\\sqrt2\\] ", videolink: ""},
  {title: "Classic Coin Puzzle", body: "You have 8 coins which are all the same weight, except for one which is slightly heavier than the others (you don't know which coin is heavier). \r\n\r\nYou also have an old‐style balance, which allows you to weigh two piles of coins to see which one is heavier (or if they are of equal weight). What is the fewest number of weighings that you can make which will tell you which coin is the heavier one?\r\n", answer: "2", solution: "Weigh three coins with three different coins (6 coins altogether) against each other. If there is one pile unequal, take the heavier coins and weigh any one against one. If those are equal then the third coin is clearly the heavier one. If they are unequal then the \r\n\r\nIf the three vs three are equal, then weigh the remaining two against each other and you have your answer.\r\n\r\nNotice that at no point did we require more than 2 weighings.", videolink: ""},
  {title: "Solution in a Solution", body: "You have two containers with equal quantities of water and alcohol, respectively. A small portion of water is poured into the alcohol containers, and then the same small portion is moved in to the water jug again so that the final volumes of the solutions are the same.\r\n\r\nWhat is the relationship between the final concentrations of alcohol in the water jug and water in the alcohol jug?\r\n\r\n", answer: "Equal", solution: "Imagine both containers hold $V$ amount of liquid. So no matter how much liquid moves, as long as the final volumes are $V$, the amount of water displaced must be replaced by alcohol and vice-versa (i.e. where else is all that water going to go?).\r\n\r\n--\r\n\r\nYou can solve it via algebra, though its not necessary. Again we start with $V$ amount of liquid in each container. Let's pour $P$ amount of water into the alcohol, so that the water in the alcohol is $\\frac{P}{V+P}$\r\n\r\nThat also means that there is $\\frac{V}{V+P}$ of alcohol in the alcohol container. So let's pour P of the whole mixture back into the water so that its volume is back to $V$. So now the amount of alcohol in the water is:\r\n\\[\\frac{V \\cdot P}{V+P}\\]\r\nSo that the percentage of alcohol in the water is \r\n\\[\\frac{\\frac{V \\cdot P}{V+P}}{V} = \\frac{P}{V+P}\\]\r\n\r\nSo the concentrations are the same", videolink: ""},
  {title: "Worm in a cube", body: "A worm is stuck at one corner of a $1m \\times 1m \\times 1m$ cube. It has to get to the hole at the opposite corner. What's the fastest way to get there? Remember, you have to crawl along the sides of the cube.  ", answer: "sqrt(5)", solution: "Since you're limited to a 2d surface, break apart the cube into a surface. Take a look at one corner to another so by pythagorean theorem, you get \\[\\sqrt5\\]", videolink: ""},
  {title: "Unshelling a Rubik's cube", body: "You have a $10\\times10\\times10$ Rubik's cube composed of 1000 $1\\times1\\times1$ cubes that you want to make a little easier. To take out the outer shell, how many cubes do you have to take out?", answer: "488", solution: "Since you are taking out the outer layer, you are removing two cubes from the height, width, and length. This means that the resulting cube is an $8\\times8\\times8$ cube. The amount of unit cubes you have to take out, therefore, is \\[10^3 = 8^3 = 488\\]", videolink: ""}
])
Tag.create!([
  {name: "Apple", taggings_count: 0},
  {name: "Microsoft", taggings_count: 0},
  {name: "Google", taggings_count: 1},
  {name: "test", taggings_count: 0},
  {name: "math", taggings_count: 2},
  {name: "cs", taggings_count: 0},
  {name: "probability", taggings_count: 0},
  {name: "Jane Street", taggings_count: 0},
  {name: "PIMCO", taggings_count: 1},
  {name: "trading", taggings_count: 0},
  {name: "probability Jane Street PIMCO trading", taggings_count: 0},
  {name: "coins", taggings_count: 1},
  {name: "logic", taggings_count: 1},
  {name: "brainteaser", taggings_count: 1},
  {name: "brainteasers", taggings_count: 2}
])
Tagging.create!([
  {tag_id: 9, taggable_id: 15, taggable_type: "Problem", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 5, taggable_id: 15, taggable_type: "Problem", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 3, taggable_id: 16, taggable_type: "Problem", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 12, taggable_id: 16, taggable_type: "Problem", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 13, taggable_id: 16, taggable_type: "Problem", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 14, taggable_id: 17, taggable_type: "Problem", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 15, taggable_id: 18, taggable_type: "Problem", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 5, taggable_id: 19, taggable_type: "Problem", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 15, taggable_id: 19, taggable_type: "Problem", tagger_id: nil, tagger_type: nil, context: "tags"}
])

admin_user = User.create(email: "imranq02@gmail.com", password: "test", password_confirmation: "test", admin: true)

UserMetric.create!([
  {user_id: nil, problem_id: 14, answered_correctly: false, time_accessed: "2015-07-16 07:18:54", time_submitted: "2015-07-16 07:19:13"},
  {user_id: nil, problem_id: 14, answered_correctly: false, time_accessed: "2015-07-16 07:49:33", time_submitted: "2015-07-16 07:49:37"},
  {user_id: nil, problem_id: 14, answered_correctly: false, time_accessed: "2015-07-16 07:49:37", time_submitted: "2015-07-16 07:49:40"},
  {user_id: nil, problem_id: 14, answered_correctly: false, time_accessed: "2015-07-16 07:49:40", time_submitted: "2015-07-16 07:49:41"},
  {user_id: nil, problem_id: 14, answered_correctly: false, time_accessed: "2015-07-16 07:49:41", time_submitted: "2015-07-16 07:49:42"},
  {user_id: nil, problem_id: 14, answered_correctly: false, time_accessed: "2015-07-16 07:49:41", time_submitted: "2015-07-16 07:49:42"},
  {user_id: nil, problem_id: 14, answered_correctly: false, time_accessed: "2015-07-16 07:49:41", time_submitted: "2015-07-16 07:49:43"},
  {user_id: nil, problem_id: 14, answered_correctly: false, time_accessed: "2015-07-16 07:49:41", time_submitted: "2015-07-16 07:49:43"},
  {user_id: nil, problem_id: 14, answered_correctly: false, time_accessed: "2015-07-16 07:49:41", time_submitted: "2015-07-16 07:49:43"},
  {user_id: nil, problem_id: 14, answered_correctly: false, time_accessed: "2015-07-16 07:49:43", time_submitted: "2015-07-16 07:49:44"},
  {user_id: nil, problem_id: 14, answered_correctly: false, time_accessed: "2015-07-16 07:49:44", time_submitted: "2015-07-16 07:49:45"},
  {user_id: nil, problem_id: 14, answered_correctly: false, time_accessed: "2015-07-16 07:49:45", time_submitted: "2015-07-16 07:49:46"},
  {user_id: nil, problem_id: 15, answered_correctly: false, time_accessed: "2015-07-17 06:53:52", time_submitted: "2015-07-17 06:53:55"},
  {user_id: nil, problem_id: 16, answered_correctly: true, time_accessed: "2015-07-17 07:06:59", time_submitted: "2015-07-17 07:07:08"},
  {user_id: nil, problem_id: 16, answered_correctly: false, time_accessed: "2015-07-17 07:07:08", time_submitted: "2015-07-17 07:07:13"},
  {user_id: nil, problem_id: 16, answered_correctly: true, time_accessed: "2015-07-17 07:07:13", time_submitted: "2015-07-17 07:07:17"},
  {user_id: nil, problem_id: 19, answered_correctly: false, time_accessed: "2015-07-17 21:46:43", time_submitted: "2015-07-17 21:46:57"},
  {user_id: nil, problem_id: 15, answered_correctly: true, time_accessed: "2015-07-17 21:47:23", time_submitted: "2015-07-17 21:48:00"},
  {user_id: nil, problem_id: 19, answered_correctly: true, time_accessed: "2015-07-17 21:51:29", time_submitted: "2015-07-17 21:51:32"}
])

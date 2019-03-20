d = User.create(username: 'David A. Black', email: 'david@gmail.com')
m = User.create(username: 'Michael Hartl', email: 'michael@gmail.com')
c = Category.create(name: "C++")
r = Category.create(name: "Ruby")
ror = Category.create(name: "Ruby on Rails")

postr = Post.create(
		title: 'How do I become an expert in Ruby and Ruby on Rails?', 
		content: "Use Rails Guides! Here you can find everything about Rails and also a tutorial",
		category_ids: [])
	
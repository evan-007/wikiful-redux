# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
categories = Category.create([
                { name: 'History'}, {name: 'Biology'}, {name: 'Literature'},
                { name: 'Mathematics'}, { name: 'Music Theory'}, { name: 'Computer Science'},
                { name: 'Sociology'}, {name: 'Chemistry'}
        ])

for i in 0..20
        title = Faker::Lorem.sentence(rand(2..10)).chomp('.')
        content = Faker::Lorem.paragraph(word_count=250)

        # randomly assign one of the categories we just created
        category = Category.first(offset: rand(Category.count))
        a = Article.create(title: title, content: content, categories: [category,])
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = [
    {
        name: "Ruby Programming Language"
    },
    {
        name: "Java Script Programming Language"
    }
]

categories.map do |category|
    Category.find_or_create_by(name: category[:name]) do |c|
        c.name = category[:name]
        puts "Category #{c.name} has been created"
    end
end

quizzes = [
    {
        name: "Starting with Ruby",
        category_id: 1
    },
    {
        name: "Ruby on Rails",
        category_id: 1
    },
    {
        name: "Vanila Java Script",
        category_id: 2
    }
]

quizzes.map do |quiz|
    Quiz.find_or_create_by(name: quiz[:name]) do |q|
        q.name = quiz[:name]
        q.category_id = quiz[:category_id]
        puts "Quiz #{q.name} has beed created!"
    end
end

questions = [
    {
        content: "Return value of 'puts !true' in Ruby?",
        quiz_id: 1
    },
    {
        content: "Return value of method '.each' called on array. 
        [1,2,3,4].each do |element|
             element * 2
        end
            ",
        quiz_id: 1
    },
    {
        content: "Return value of method '.map' called on array. 
        [1,2,3,4].map do |element|
             element * 2
        end
            ",
        quiz_id: 1
    },
    {
        content: "What are 'falsy' values in Ruby?",
        quiz_id: 1
    },
    {
        content: "console.log(1 + '1')",
        quiz_id: 3
    },
    {
        content: "What will console.log(!!undefined) log to console?",
        quiz_id: 3
    },
    {
        content: "What will 'console.log('1' == 1)' log to the console",
        quiz_id: 3
    }
]
i = 0
questions.map do |question|
    Question.find_or_create_by(content: question[:content]) do |q|
        q.content = question[:content]
        q.quiz_id = question[:quiz_id]
        i +=1
    end
end
puts "#{i} questions have been made!"

options = [
    # question 1
    {
        question_id: 1,
        content: "nil",
        is_correct: true
    },
    {
        question_id: 1,
        content: "false"
    },
    {
        question_id: 1,
        content: "true"
    },
    {
        question_id: 1,
        content: "This will return an error."
    },
    # question 2
    {
        question_id: 2,
        content: "[1,2,3,4]",
        is_correct: true
    },
    {
        question_id: 2,
        content: "[2,4,6,8]"
    },
    {
        question_id: 2,
        content: "[nil,nil,nil,nil]"
    },
    {
        question_id: 2,
        content: "[1,4,9,16]"
    },
    # question 3
    {
        question_id: 3,
        content: "[1,2,3,4]"
    },
    {
        question_id: 3,
        content: "[2,4,6,8]",
        is_correct: true
    },
    {
        question_id: 3,
        content: "[nil,nil,nil,nil]"
    },
    {
        question_id: 3,
        content: "[1,4,9,16]"
    },
    # question 4
    {
        question_id: 4,
        is_correct: true,
        content: "'false' and 'nil'"
    },
    {
        question_id: 4,
        content: "'false', 'nil' and ''(empty string)"
    },
    {
        question_id: 4,
        content: "'false', '{}'(empty hash) and ''(empty string)"
    },
    {
        question_id: 4,
        content: "'0', 'nil' and 'false'"
    },
    # question 5
    {
        question_id: 5,
        is_correct: true,
        content: "11"
    },
    {
        question_id: 5,
        content: "2"
    },
    {
        question_id: 5,
        content: "This will retun an error."
    },
    {
        question_id: 5,
        content: "0"
    },
    # question 6
    {
        question_id: 6,
        content: "false",
        is_correct: true
    },
    {
        question_id: 6,
        content: "true"
    },
    {
        question_id: 6,
        content: "undefined"
    },
    {
        question_id: 6,
        content: "!!undefined"
    },
    # question 7
    {
        question_id: 7,
        content: "true",
        is_correct: true
    },
    {
        question_id: 7,
        content: "false"
    },
    {
        question_id: 7,
        content: "1 (as string)"
    },
    {
        question_id: 7,
        content: "1 (as number)"
    }
]
opt_num = 0
options.map do |option|
    Option.find_or_create_by(content: option[:content], question_id: option[:question_id]) do |o|
        o.question_id = option[:question_id]
        o.is_correct = option[:is_correct]
        o.content = option[:content]
        opt_num += 1
    end
end
puts "#{opt_num} options has been created"





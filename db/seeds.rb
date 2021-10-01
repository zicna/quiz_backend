# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = [
    {
        username: "ruby_master",
        email: "ruby_master@example.com",
        admin: true
    },
    {
        username: "ruby_beginner",
        email: "ruby_beginner@example.com",
        admin: false
    },
    {
        username: "jsMaster",
        email: "jsMaster@example.com",
        admin: true
    },
    {
        username: "jsBeginner",
        email: "jsBeginner@example.com",
        admin: false
    }
]

    users.map do |user|
        User.find_or_create_by(email: user[:email]) do |u|
            u.email = user[:email]
            u.username = user[:username]
            u.admin = user[:admin]
            puts "User: #{u[:username]}, has been created!"
        end
    end


quizzes = [
    {
        name: "Basics of Ruby",
        category_id: 1,
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    }
    
    # {
    #     name: "Ruby on Rails",
    #     category_id: 1,
    #     description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    # },
    # {
    #     name: "Vanila Java Script",
    #     category_id: 2,
    #     description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    # }
]

quizzes.map do |quiz|
    Quiz.find_or_create_by(name: quiz[:name]) do |q|
        q.name = quiz[:name]
        q.description = quiz[:description]
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
        content: "What is retun value of 1 > 2 || 2 < 3",
        quiz_id: 1
    },
    {
        content: "What is return value of ternary operator(?:): 'true && !!'hello world' ? 'hello world' : true",
        quiz_id: 1
    },
    {
        content: "What is the value of 'b': b = 1
        a = 2
        b += a",
        quiz_id: 1
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
    # question 1 "Return value of 'puts !true' in Ruby?"
    {
        question_id: 1,
        content: "nil",
        is_correct: true
    },
    {
        question_id: 1,
        content: "false",
        is_correct: false
    },
    {
        question_id: 1,
        content: "true",
        is_correct: false
    },
    {
        question_id: 1,
        content: "This will return an error.",
        is_correct: false
    },
    # question 2 "Return value of method '.each' called on array. [1,2,3,4].each do |element| element * 2 end"
    {
        question_id: 2,
        content: "[1,2,3,4]",
        is_correct: true
    },
    {
        question_id: 2,
        content: "[2,4,6,8]",
        is_correct: false
    },
    {
        question_id: 2,
        content: "[nil,nil,nil,nil]",
        is_correct: false
    },
    {
        question_id: 2,
        content: "[1,4,9,16]",
        is_correct: false
    },
    # question 3 "Return value of method '.map' called on array. [1,2,3,4].map do |element| element * 2 end"
    {
        question_id: 3,
        content: "[1,2,3,4]",
        is_correct: false
    },
    {
        question_id: 3,
        content: "[2,4,6,8]",
        is_correct: true
    },
    {
        question_id: 3,
        content: "[nil,nil,nil,nil]",
        is_correct: false
    },
    {
        question_id: 3,
        content: "[1,4,9,16]",
        is_correct: false
    },
    # question 4 "What are 'falsy' values in Ruby?"
    {
        question_id: 4,
        is_correct: true,
        content: "'false' and 'nil'"
    },
    {
        question_id: 4,
        content: "'false', 'nil' and ''(empty string)",
        is_correct: false
    },
    {
        question_id: 4,
        content: "'false', '{}'(empty hash) and ''(empty string)",
        is_correct: false
    },
    {
        question_id: 4,
        content: "'0', 'nil' and 'false'",
        is_correct: false
    },
    # "What is retun value of 1 > 2 || 2 < 3"
    {
        question_id: 5,
        is_correct: true,
        content: "true"
    },
    {
        question_id: 5,
        content: "false",
        is_correct: false
    },
    {
        question_id: 5,
        content: "null",
        is_correct: false
    },
    {
        question_id: 5,
        content: "false true",
        is_correct: false
    },
    # question 6 "What is return value of ternary operator(?:): 'true && !!'hello world' ? 'hello world' : true"
    {
        question_id: 6,
        content: "hello world",
        is_correct: true
    },
    {
        question_id: 6,
        content: "true",
        is_correct: false
    },
    {
        question_id: 6,
        content: "false",
        is_correct: false
    },
    {
        question_id: 6,
        content: "This wil return an error",
        is_correct: false
    },
    # question 7 "What is the value of 'b': b = 0
        # a = 2
        # b += a"
    {
        question_id: 7,
        content: "3",
        is_correct: true
    },
    {
        question_id: 7,
        content: "1",
        is_correct: false
    },
    {
        question_id: 7,
        content: "2",
        is_correct: false
    },
    {
        question_id: 7,
        content: "This wil return an error",
        is_correct: false
    }
    # # question 8
    # {
    #     question_id: 8,
    #     content:"",
    #     is_correct: true
    # },
    # {
    #     question_id: 8,
    #     content: ""
    # },
    # {
    #     question_id: 8,
    #     content: ""
    # },
    # {
    #     question_id: 8,
    #     content: ""
    # },
    # # question 9
    # {
    #     question_id: 9,
    #     content: "",
    #     is_correct: true
    # },
    # {
    #     question_id: 9,
    #     content:""
    # },
    # {
    #     question_id: 9,
    #     content:""
    # },
    # {
    #     question_id: 9,
    #     content:""
    # }

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
puts "#{opt_num} options have been created"

takes = [
    {
        user_id: 1,
        quiz_id: 1
    },
    {
        user_id: 2,
        quiz_id: 1
    },
    {
        user_id: 3,
        quiz_id: 1
    },
    {
        user_id: 4,
        quiz_id: 1
    }
]

takes.map do |take|
    Take.create(take)
end

responses = [
    
        {   take_id: 1,
            option_id: 25,
            question_id: 7,
            content: "Lorem ipsum...."
        },
        {   take_id: 1,
            option_id: 1,
            question_id: 1,
            content: "Lorem ipsum...."
        },
        {   take_id: 1,
            option_id: 5,
            question_id: 2,
            content: "Lorem ipsum...."
        },
        {   take_id: 1,
            option_id: 9,
            question_id: 3,
            content: "Lorem ipsum...."
        },
        {   take_id: 1,
            option_id: 13,
            question_id: 4,
            content: "Lorem ipsum...."
        },
        {   take_id: 1,
            option_id: 17,
            question_id: 5,
            content: "Lorem ipsum...."
        },
        {   take_id: 1,
            option_id: 21,
            question_id: 6,
            content: "Lorem ipsum...."
        },
    
    
        {   take_id: 2,
            option_id: 3,
            question_id: 1,
            content: "Lorem ipsum...."
        },
        {   take_id: 2,
            option_id: 5,
            question_id: 2,
            content: "Lorem ipsum...."
        },
        {   take_id: 2,
            option_id: 12,
            question_id: 3,
            content: "Lorem ipsum...."
        },
        {   take_id: 2,
            option_id: 15,
            question_id: 4,
            content: "Lorem ipsum...."
        },
        {   take_id: 2,
            option_id: 17,
            question_id: 5,
            content: "Lorem ipsum...."
        },
        {   take_id: 2,
            option_id: 21,
            question_id: 6,
            content: "Lorem ipsum...."
        },
        {   take_id: 2,
            option_id: 27,
            question_id: 7,
            content: "Lorem ipsum...."
        },
    
    
        {   take_id: 3,
            option_id: 1,
            question_id: 1,
            content: "Lorem ipsum...."
        },
        {   take_id: 3,
            option_id: 6,
            question_id: 2,
            content: "Lorem ipsum...."
        },
        {   take_id: 3,
            option_id: 10,
            question_id: 3,
            content: "Lorem ipsum...."
        },
        {   take_id: 3,
            option_id: 14,
            question_id: 4,
            content: "Lorem ipsum...."
        },
        {   take_id: 3,
            option_id: 20,
            question_id: 5,
            content: "Lorem ipsum...."
        },
        {   take_id: 3,
            option_id: 22,
            question_id: 6,
            content: "Lorem ipsum...."
        },
        {   take_id: 3,
            option_id: 28,
            question_id: 7,
            content: "Lorem ipsum...."
        },
    
    
        {   take_id: 4,
            option_id: 1,
            question_id: 1,
            content: "Lorem ipsum...."
        },
        {   take_id: 4,
            option_id: 6,
            question_id: 2,
            content: "Lorem ipsum...."
        },
        {   take_id: 4,
            option_id: 11,
            question_id: 3,
            content: "Lorem ipsum...."
        },
        {   take_id: 4,
            option_id: 15,
            question_id: 4,
            content: "Lorem ipsum...."
        },
        {   take_id: 4,
            option_id: 19,
            question_id: 5,
            content: "Lorem ipsum...."
        },
        {   take_id: 4,
            option_id: 23,
            question_id: 6,
            content: "Lorem ipsum...."
        },
        {   take_id: 4,
            option_id: 27,
            question_id: 7,
            content: "Lorem ipsum...."
        }
    
]

responses.map do |response|
    
    # byebug
    r = Response.new(response)
    if r.save
    else
        byebug
    end
   
end





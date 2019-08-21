# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
  user1 = User.create!(username: 'CJ')
  user2 = User.create!(username: 'Flarnie')
  user3 = User.create!(username: 'Jeff')
  user4 = User.create!(username: 'Georges St. Pierre')
  user5 = User.create!(username: 'Ned')

Poll.destroy_all
  poll1 = Poll.create!(title: 'My first poll', user_id: user1.id)
  poll2 = Poll.create!(title: 'My second poll', user_id: user1.id)
  poll3 = Poll.create!(title: "Jeff's first poll", user_id: user2.id)
  poll4 = Poll.create!(title: 'Georges St. Pierre exists', user_id: user4.id)
  poll5 = Poll.create!(title: 'Ned is a user too', user_id: user3.id)

Question.destroy_all
  question1 = Question.create!(question: 'How are you?', poll_id: poll1.id)
  question2 = Question.create!(question: 'Do you like movies?', poll_id: poll2.id)
  question3 = Question.create!(question: 'Carrots?', poll_id: poll3.id)
  question4 = Question.create!(question: 'Do animals go to heaven?', poll_id: poll4.id)
  question5 = Question.create!(question: 'Do animals have moral thoughts?', poll_id: poll5.id)

AnswerChoice.destroy_all
  answer_choice1 = AnswerChoice.create!(answer: 'Pretty good', question_id: question1.id)
  answer_choice2 = AnswerChoice.create!(answer: 'Pretty ok', question_id: question1.id)
  answer_choice3 = AnswerChoice.create!(answer: 'Yes', question_id: question2.id)
  answer_choice4 = AnswerChoice.create!(answer: 'No', question_id: question2.id)
  answer_choice5 = AnswerChoice.create!(answer: 'Carrots', question_id: question3.id)
  answer_choice6 = AnswerChoice.create!(answer: 'Yes', question_id: question4.id)
  answer_choice7 = AnswerChoice.create!(answer: 'No', question_id: question4.id)
  answer_choice8 = AnswerChoice.create!(answer: "Yes, but Ned doesn't!", question_id: question5.id)

Response.destroy_all
  response1 = Response.create!(user_id: user1.id, answer_choice_id: answer_choice1.id)
  response2 = Response.create!(user_id: user2.id, answer_choice_id: answer_choice1.id)
  response3 = Response.create!(user_id: user3.id, answer_choice_id: answer_choice2.id)
  response4 = Response.create!(user_id: user4.id, answer_choice_id: answer_choice2.id)
  response5 = Response.create!(user_id: user5.id, answer_choice_id: answer_choice3.id)
  response6 = Response.create!(user_id: user1.id, answer_choice_id: answer_choice7.id)
  response7 = Response.create!(user_id: user2.id, answer_choice_id: answer_choice5.id)
  response8 = Response.create!(user_id: user3.id, answer_choice_id: answer_choice8.id)

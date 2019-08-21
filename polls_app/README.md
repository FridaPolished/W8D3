# README

### User
  - Record a username; make sure it is unique.
  - user_name(string)
### Poll
  - A Poll belongs to an author (User)
  - Record a title.
  - user_id
### Question
  - A Poll has many Questions. Record the text.
  - question(text)
  - poll_id
### AnswerChoice
  - answer (text)
  - question_id
### Response
  - A User answers to a Questions by choosing an AnswerChoice.
  - Foreign keys:
    - user_id
    - answer_choice_id
# == Schema Information
#
# Table name: responses
#
#  id               :bigint           not null, primary key
#  user_id          :integer          not null
#  answer_choice_id :integer          not null
#

class Response < ApplicationRecord
  #validate self.not_duplicate_response

    belongs_to :user,
    class_name: :User,
    primary_key: :id,
    foreign_key: :user_id

    belongs_to :answer_choice,
    class_name: :AnswerChoice,
    primary_key: :id,
    foreign_key: :answer_choice_id

    has_one :question,
    through: :answer_choice,
    source: :question

    def sibling_responses
      self
        .question
        .responses
        .where.not('id != ?', self.id)
    end
end

class Subtask < ApplicationRecord
    has_many :comments, as: :commented_on
end

class Comment < ApplicationRecord
  belongs_to :site_user
  belongs_to :commented_on, polymorphic: true
end

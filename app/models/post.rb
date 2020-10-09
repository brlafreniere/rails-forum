class Post < ApplicationRecord
    validates_presence_of :title, :body, allow_blank: false

    belongs_to :author, class_name: "User"
end
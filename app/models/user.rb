class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

    validates_presence_of :username, allow_blank: false

    has_many :posts, foreign_key: :author_id

    enum role: {
        admin: 0,
        moderator: 1,
        user: 2,
    }
end

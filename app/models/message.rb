class Message < ApplicationRecord
    belongs_to :person

    validates :message, presence: {message: 'を書いてださい。'}
end

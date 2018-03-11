class Message < ApplicationRecord
    validates :message, presence: {message: 'を書いてださい。'}
end

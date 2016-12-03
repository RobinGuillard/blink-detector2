class User < ActiveRecord::Base
	has_many :blinks, dependent: :destroy
end

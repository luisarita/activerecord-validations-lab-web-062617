class Post < ActiveRecord::Base
    validates :title, presence: true, format: { with: /[a-z\s]*(won\'t believe|guess|secret|top [0-9]+)[a-z\s]*/i }
    validates :content, length: { :minimum => 100 }
    validates :summary, length: { :maximum => 100 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
end

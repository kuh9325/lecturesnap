class Comment < ActiveRecord::Base
    belongs_to :post
    validates :comment, presence: { message: "댓글을 입력하세요." }
end

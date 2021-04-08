# generated with
# ruby .\bin\rails generate model Comment commenter:string body:text article:references
class Comment < ApplicationRecord
  # belongs_to sets up an Active Record association
  belongs_to :article
end

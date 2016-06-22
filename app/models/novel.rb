class Novel < ActiveRecord::Base
  belongs_to :author
  has_and_belongs_to_many :genres

  def self.search(search_term)
    where("articles.title ILIKE ? OR articles.content ILIKE ?",
      "%#{search_term}%", "%#{search_term}%")
  end
  
end

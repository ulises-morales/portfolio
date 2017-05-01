class Project < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: 'Angular')
  end

  # scope using a lamda
  scope :ruby_on_rails_projects, -> { where(subtitle: 'Ruby on Rails') }
end

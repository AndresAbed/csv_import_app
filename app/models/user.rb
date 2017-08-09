class User < ApplicationRecord
  validates :email, uniqueness: true
  validates :name, :email, presence: true

  def self.import(csv)
    CSV.foreach(csv.path, headers: true, encoding:'iso-8859-1:utf-8') do |row|      
      User.create(name: row['Name'], 
        email: row['Email Address'], 
        phone: row['Telephone Number'],
        website: row['Website'])      
    end
  end
end

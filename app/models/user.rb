class User < ApplicationRecord
  validates :email, uniqueness: true

  def self.import(csv)
    CSV.foreach(csv.path, headers: true, encoding:'iso-8859-1:utf-8') do |row|
      unless row['Name'].nil? || row['Email Address'].nil?
        User.create(name: row['Name'], 
          email: row['Email Address'], 
          phone: row['Telephone Number'],
          website: row['Website'])
      end
    end
  end
end

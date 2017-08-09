require 'rails_helper'

feature 'Import users' do
  scenario 'with valid csv file' do
    visit root_path
    page.attach_file('csv', Rails.root + 'spec/fixtures/people.csv')
    click_button("Import")
    expect(page).to have_content('Users imported.')
  end

  scenario 'with invalid file' do
    visit root_path
    page.attach_file('csv', Rails.root + 'spec/fixtures/ruby.png')
    click_button("Import")
    expect(page).to have_content('Only csv files allowed.')
  end

  scenario 'with no file' do
    visit root_path    
    click_button("Import")
    expect(page).to have_content('Please select a file.')
  end
end
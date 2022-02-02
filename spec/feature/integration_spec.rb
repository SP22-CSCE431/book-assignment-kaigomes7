# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: 9.99
    fill_in 'Date Published', with: '2001-11-11'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

# RSpec.describe 'Creating a book', type: :feature do
#   scenario 'valid inputs' do
#     visit new_book_path
#     fill_in 'Author', with: 'J.K. Rowling'
#     click_on 'Create Book'
#     visit books_path
#     expect(page).to have_content('harry potter')
#   end
# end

# RSpec.describe 'Creating a book', type: :feature do
#   scenario 'valid inputs' do
#     visit new_book_path
#     fill_in 'Price', with: 9.99
#     click_on 'Create Book'
#     visit books_path
#     expect(page).to have_content('harry potter')
#   end
# end

# RSpec.describe 'Creating a book', type: :feature do
#   scenario 'valid inputs' do
#     visit new_book_path
#     fill_in 'Date Published', with: '2001-11-11'
#     click_on 'Create Book'
#     visit books_path
#     expect(page).to have_content('harry potter')
#   end
# end
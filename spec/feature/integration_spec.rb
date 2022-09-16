#location: spec/feature/integration_spec.rb
require 'rails_helper'
RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs ' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: '53'
    fill_in 'Date published', with: '01/11/1996'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('JK Rowling')
    expect(page).to have_content('53')
    expect(page).to have_content('1996-11-01')
  end
end
# RSpec.describe 'Adding a Author', type: :feature do
#   scenario 'valid inputs ' do
#     visit new_book_path
#     fill_in 'Author', with: 'JK Rowling'
#     click_on 'Create Book'
#     visit books_path
#     expect(page).to have_content('JK Rowling')
#   end
# end
# RSpec.describe 'Adding a Price', type: :feature do
#   scenario 'valid inputs ' do
#     visit new_book_path
#     fill_in 'Price', with: '53'
#     click_on 'Create Book'
#     visit books_path
#     expect(page).to have_content('53')
#   end
# end
# RSpec.describe 'Adding Published Date', type: :feature do
#   scenario 'valid inputs ' do
#     visit new_book_path
#     fill_in 'Published', with: '01/11/1996'
#     click_on 'Create Book'
#     visit books_path
#     expect(page).to have_content('01/11/1996')
#   end
# end


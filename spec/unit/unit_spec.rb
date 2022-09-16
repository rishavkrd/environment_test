#location: spec/unit/unit_spec.rb
require 'rails_helper'
RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'JK Rowling', price: '53', date_published: '01/11/1996')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without an Author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a published date' do
    subject.date_published = nil
    expect(subject).not_to be_valid
  end
end

# RSpec.describe Book, type: :model do
#   subject do
#     described_class.new(author: 'JK Rowling')
#   end

#   it 'is valid with valid attributes' do
#     expect(subject).to be_valid
#   end

#   it 'is not valid without an Author' do
#     subject.author = nil
#     expect(subject).not_to be_valid
#   end
# end
# RSpec.describe Book, type: :model do
#   subject do
#     described_class.new(price: '53')
#   end

#   it 'is valid with valid attributes' do
#     expect(subject).to be_valid
#   end

#   it 'is not valid without a price' do
#     subject.price = nil
#     expect(subject).not_to be_valid
#   end
# end
# RSpec.describe Book, type: :model do
#   subject do
#     described_class.new(date_published: '01/11/1996')
#   end

#   it 'is valid with valid attributes' do
#     expect(subject).to be_valid
#   end

#   it 'is not valid without a published date' do
#     subject.date_published = nil
#     expect(subject).not_to be_valid
#   end
# end


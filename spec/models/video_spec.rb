require 'rails_helper'

RSpec.describe Video, :type => :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:image) }
  it { should validate_presence_of(:url) }
  it { should belong_to(:category) }
end

require 'rails_helper'

RSpec.describe OrderAnimal, type: :model do
  it { should belong_to(:order) }
  it { should belong_to(:animal) }
end

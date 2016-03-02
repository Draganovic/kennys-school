require 'rails_helper'

RSpec.describe Student, type: :model do
  it "has a current score with 0 default" do

    expect(Student.new.current_score).to eq(0)
  end
end

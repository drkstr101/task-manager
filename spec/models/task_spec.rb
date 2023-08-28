# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Task do
  # The minimal set of attributes required to create a valid
  let(:valid_attributes) { { name: 'My task' } }
  let(:task) { described_class.new(valid_attributes) }

  it 'is valid with valid attributes' do
    expect(task).to be_valid
  end

  it 'is not valid without a name' do
    task.name = nil
    expect(task).not_to be_valid
  end
end

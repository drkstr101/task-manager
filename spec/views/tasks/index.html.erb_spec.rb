# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'tasks/index' do
  before do
    assign(:tasks, [
             Task.create!(name: 'Task one'),
             Task.create!(name: 'Task two')
           ])
  end

  it 'renders a list of tasks' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
  end
end

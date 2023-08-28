# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'tasks/new' do
  before do
    assign(:task, Task.new(name: 'MyString'))
  end

  it 'renders new task form' do
    render
    assert_select 'form[action=?][method=?]', tasks_path, 'post' do
      assert_select 'input[name=?]', 'task[name]'
    end
  end
end

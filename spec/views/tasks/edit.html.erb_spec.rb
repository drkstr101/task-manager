# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'tasks/edit' do
  let(:task) do
    Task.create!(
      name: 'MyString'
    )
  end

  before do
    assign(:task, task)
  end

  it 'renders the edit task form' do
    render

    assert_select 'form[action=?][method=?]', task_path(task), 'post' do
      assert_select 'input[name=?]', 'task[name]'
    end
  end
end

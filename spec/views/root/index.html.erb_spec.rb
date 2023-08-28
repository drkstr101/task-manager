# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'root/index' do
  it 'renders the page title' do
    render
    assert_select 'h1', text: 'Home'
  end
end

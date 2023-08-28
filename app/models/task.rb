# frozen_string_literal: true

#
# Task entry point
#
class Task < ApplicationRecord
  validates :name, presence: true
end

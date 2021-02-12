# frozen_string_literal: true

require_relative './spec_helper'

link1 = 'https://github.com'
link2 = 'https://yandex.ru'
link3 = 'https://www.google.com'

feature 'Main test' do
  scenario 'Test for check selenoid' do
    [link1, link2, link3].each { |l| visit l; sleep 5 }
  end
end

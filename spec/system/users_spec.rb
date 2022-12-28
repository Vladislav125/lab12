require 'rails_helper'

RSpec.describe 'Users', type: :system do
  describe 'GET ' do
    context 'Should return' do
      before do
        User.create(email: 'email@bmstu.ru', password: '12345678')
      end

      scenario 'success while registration' do
        visit new_user_path
        fill_in :user_email, with: 'test_user@bmstu.ru'
        fill_in :user_password, with: 'qwerty12'
        fill_in :user_password_confirmation, with: 'qwerty12'
        find('#log_button').click
        sleep(0.1)
        expect(current_path).to eq '/users/2'
      end

      scenario 'results after success login' do
        visit '/log/sign_in'
        fill_in :email, with: 'email@bmstu.ru'
        fill_in :password, with: '12345678'
        find('.btn').click

        sleep(0.1)

        visit root_path
        find('#show_result').click
        expect(current_path).to eq(root_path)
      end
    end
  end
end

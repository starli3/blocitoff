require 'spec_helper'

feature 'Project manager creates TODO' do
  scenario 'Successfully' do  #everything within this block has to go through
    visit new_todo_path
    fill_in 'Description', with: 'Meet up with the team'
    click_button 'Save'
    expect( page ).to have_content('Meet up with the team')
  end
end
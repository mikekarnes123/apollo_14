require 'rails_helper'

RSpec.describe 'Astronaut Index' do
  it 'shows all astronaut info' do
  astronaut_1 = Astronaut.create(name: "Bob", age: 34, job: "Commander")
  astronaut_2 = Astronaut.create(name: "Jow", age: 99, job: "Alien Communications")
  visit astronauts_path
  expect(page).to have_content(astronaut_1.name)
  expect(page).to have_content(astronaut_1.age)
  expect(page).to have_content(astronaut_1.job)
  expect(page).to have_content(astronaut_2.name)
  expect(page).to have_content(astronaut_2.age)
  expect(page).to have_content(astronaut_2.job)
  end 
end

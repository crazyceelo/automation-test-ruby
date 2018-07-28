require "Capybara"
require "Capybara/cucumber"

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 10
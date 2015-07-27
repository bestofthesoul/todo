
#http://www.rubydoc.info/github/stympy/faker/Faker/Lorem

#Using Faker, edit seeds.rb to create dummy records. You'll have to put require 'faker' at the top of the seeds.rb file.

require_relative '../config/application'

1.times do
  Task.create   :task       => Faker::Lorem.sentence,
                :completed  => ['Yes','No'].sample
end
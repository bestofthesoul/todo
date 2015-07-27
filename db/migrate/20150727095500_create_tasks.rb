
require_relative '../../config/application'

class CreateTasks < ActiveRecord::Migration
    def change
        create_table :tasks do |x|
            x.string :task
            x.string :completed
            x.timestamps null: false
        end
    end
end
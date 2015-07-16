class AddIsactiveToWitness < ActiveRecord::Migration
  def change
    add_column :witnesses, :is_active, :boolean,default: true
  end
end

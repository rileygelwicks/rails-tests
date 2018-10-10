class AddConditionTypeToDiagnoses < ActiveRecord::Migration[5.2]
  def change
    add_column :diagnoses, :condition_type, :integer
  end
end

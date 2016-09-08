class AddProvinceReferenceToCity < ActiveRecord::Migration
  def change
      add_reference :easify_hr_cities, :easify_hr_province, index: true, foreign_key: true  
  end
end

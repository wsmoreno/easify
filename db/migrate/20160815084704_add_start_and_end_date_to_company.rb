class AddStartAndEndDateToCompany < ActiveRecord::Migration
  def change
    add_column :easify_hr_companies, :start_date, :date
    add_column :easify_hr_companies, :end_date, :date
  end
end

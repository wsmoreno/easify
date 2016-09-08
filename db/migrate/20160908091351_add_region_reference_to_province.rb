class AddRegionReferenceToProvince < ActiveRecord::Migration
  def change
      add_column      :easify_hr_provinces, :easify_hr_region_id, :integer
      add_foreign_key :easify_hr_provinces, :easify_hr_regions, name: "province_connects_to_region", column: "easify_hr_region_id", primary_key: "id"
  end
end

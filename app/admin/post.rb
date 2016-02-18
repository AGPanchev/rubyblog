ActiveAdmin.register Post do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
	permit_params :admin_user_id, :title, :body, :category_id
	menu :label => "Blog Posts"
	index do
		column :title
		column "Author",:admin_user
		column :category
		column :created_at
		actions
	end
end

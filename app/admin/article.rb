ActiveAdmin.register Article do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :title, :content, roles: []

 #form do |f|
   #f.inputs do
     #f.input :content
     #f.input :content, :input_html => { :class => 'mce_editor' }
   #end
 #end
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end

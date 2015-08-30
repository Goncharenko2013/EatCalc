ActiveAdmin.register Article do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :title, :content, roles: []

 #<%= tinymce %>

 #form do |f|
   #f.inputs do
     #f.input :content
     #f.text_area :content, :class => "tinymce", :rows => 40, :cols => 120
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


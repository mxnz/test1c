ActiveAdmin.register Contragent do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


  permit_params(
    :name,
    :full_name,
    :inn,
    :kpp,
    :legal_address,
    :actual_address,
    :post_address,
    :phone,
    :email,
    :delete_flag,
    :changed
  )

  sidebar "Contragent Details", only: [:show, :edit] do
    ul do
      li link_to "Bank accounts",    admin_contragent_bank_accounts_path(resource)
    end
  end
end

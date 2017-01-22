['registered', 'banned', 'moderator', 'admin','group_approved','group_pending_approval'].each do |role|
  Role.find_or_create_by({name: role})
end

admin_user = {email:  'admin@admin.com',
              password_confirmation: 'admin123',
              password:  'admin123',
              first_name: "Admin",
              last_name:  "Admin",
              user_name:  "Administrator",
              bio: "Admin is the super user",
              is_female: false
            }
a  = Role.where(name: 'admin').first.users.build(admin_user)
a.save!

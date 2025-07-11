puts "Criando usuáro admin"

user = User.find_or_create_by!(email: 'admin@example.com') do |user|
  user.password = "12345678"
  user.contact_number = '5599999999999'
  user.first_name = 'Admin'
  user.last_name = 'User'
  user.confirmed_at = Time.current
end

puts "Usuáio Admin criado com sucesso: "
puts "email: #{user.email}"

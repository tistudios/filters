# frozen_string_literal: true

admin = User.create!(
    display_name: 'mrrobot',
    email: "thisisjimmystewart@gmail.com",
    password: "iwglhsi2014",
    admin: true
)

messageboard = Thredded::Messageboard.create!(
    name: 'Updates',
    slug: 'updates',
    description: 'General updates & news'
)


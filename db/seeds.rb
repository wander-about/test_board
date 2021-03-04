# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

user_1 = User.create(email: "1@1", password: "111111", password_confirmation: "111111")
user_2 = User.create(email: "2@2", password: "111111", password_confirmation: "111111")
user_3 = User.create(email: "3@3", password: "111111", password_confirmation: "111111")
User.create(email: "4@4", password: "111111", password_confirmation: "111111")
User.create(email: "5@5", password: "111111", password_confirmation: "111111")

# Post.destroy_all

# Post.create(title: "test 1번 제목", content: "test 1번 글 내용입니다.", user: user_1)
# Post.create(title: "test 2번 제목", content: "test 2번 글 내용입니다.", user: user_2)
# Post.create(title: "test 3번 제목", content: "test 3번 글 내용입니다.", user: user_3)

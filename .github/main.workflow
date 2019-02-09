workflow "Turn issues into blog posts" {
  resolves = ["IssuesToBlog"]
  on = "issues"
}

workflow "Turn issues into blog posts comment" {
  resolves = ["IssuesToBlog"]
  on = "issue_comment"
}

action "IssuesToBlog" {
  uses = "jcansdale/IssuesToBlog@master"
  args = "push"
  secrets = ["PERSONAL_ACCESS_TOKEN"]
}

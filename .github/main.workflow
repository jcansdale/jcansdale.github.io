workflow "Issues to Blog" {
  resolves = ["Issues to Blog"]
  on = "issues"
}

action "Issues to Blog" {
  uses = "jcansdale/IssuesToBlog@master"
  args = "push"
  secrets = ["PERSONAL_ACCESS_TOKEN"]
}

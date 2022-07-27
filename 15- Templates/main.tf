data "template_file" "example" {
  template = "${file("templates/greeting.tpl")}"
  vars ={
    hello = "goodnight"
    world = "moon"
  }
}

output "template_file_provider" {
  value = "${data.template_file.example.rendered}"
}


# this is recommended
output "templatefilefunction" {
  value = templatefile("templates/greeting2.tpl",
  {
    hello = "goodnight"
    world = "moon"
    people = ["Chinmay","Ashley","Pranav"]
  })
}
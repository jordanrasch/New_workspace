

terraform {
  backend "remote" {
      hostname = "app.terraform.io"
      organization = "example-org-b250c7"
      
    workspaces {
        name = "New_workspace"


    }
  }
}
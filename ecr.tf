
provider "aws" {
    region = "ap-southeast-2"
}
resource "aws_ecr_repository" "ecr_repo" {
    name = "image-terraform" 
    image_tag_mutability = "MUTABLE"
    image_scanning_configuration {
        scan_on_push = true 
    }
}

/*
resource "aws_iam_user_policy_attachment" "attach-user" {
    user = github-actions
    policy_arn = "arn:aws:iam::aws:policy/EC2InstanceProfileForImageBuilderECRContainerBuilds"
} */
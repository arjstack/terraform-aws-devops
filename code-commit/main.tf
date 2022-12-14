resource aws_codecommit_repository "this" {
    
    repository_name = var.repository_name
    description     = coalesce(var.repository_description, var.repository_name)

    tags = merge({"Name" = var.repository_name}, var.tags)
}
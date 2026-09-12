output "vpc_id" {
  value = module.networking.vpc_id
}

output "ec2_instance_id" {
  value = module.compute.instance_id
}

output "elastic_ip" {
  value = module.compute.elastic_ip
}

output "application_url" {
  value = module.compute.application_url
}

output "iam_role_name" {
  value = module.compute.iam_role_name
}

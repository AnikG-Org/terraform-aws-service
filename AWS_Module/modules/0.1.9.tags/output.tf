output "name" {
  description = "Moniker to be applied to resources"
  value       = local.name
}

output "name6" {
  description = "first 6 chars of string name"
  value       = substr(local.name, 0, 6)
}

output "name32" {
  description = "first 32 chars of string name"
  value       = substr(local.name, 0, 32)
}

output "namenosymbols" {
  description = "name with symbols removed"
  value       = replace(local.name, var.name_seperator, "")
}

output "tags" {
  description = "Tags as a map (includes a `Name` tag)"
  value       = local.tags
}

output "tags_no_name" {
  description = "Tags as a map (excludes Name key)"
  value = {
    for key in keys(local.tags) :
    key => local.tags[key]
    if key != "Name"

  }
}

output "tags_as_list_of_maps" {
  description = "Tags as a list of maps, to make things like tagging ECS simple (includes a `Name` tag)"
  value       = local.tags_as_list_of_maps
}
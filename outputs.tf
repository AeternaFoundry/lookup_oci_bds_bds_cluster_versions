output "bds_bds_cluster_versions_lookup_id" {
  description = "Map of id values across all bds_bds_cluster_versions_lookup, keyed the same as var.bds_bds_cluster_versions_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_bds_bds_cluster_versions.bds_bds_cluster_versions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bds_bds_cluster_versions_lookup_bds_cluster_versions" {
  description = "Map of bds_cluster_versions values across all bds_bds_cluster_versions_lookup, keyed the same as var.bds_bds_cluster_versions_lookup except keys with no bds_cluster_versions are omitted"
  value       = { for k, v in data.oci_bds_bds_cluster_versions.bds_bds_cluster_versions_lookup : k => v.bds_cluster_versions if v.bds_cluster_versions != null && length(v.bds_cluster_versions) > 0 }
}
output "bds_bds_cluster_versions_lookup_filter" {
  description = "Map of filter values across all bds_bds_cluster_versions_lookup, keyed the same as var.bds_bds_cluster_versions_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_bds_bds_cluster_versions.bds_bds_cluster_versions_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}


data "oci_bds_bds_cluster_versions" "bds_bds_cluster_versions_lookup" {
  for_each = var.bds_bds_cluster_versions_lookup


  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}


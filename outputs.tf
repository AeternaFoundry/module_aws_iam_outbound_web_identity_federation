output "iam_outbound_web_identity_federations_issuer_identifier" {
  description = "Map of issuer_identifier values across all iam_outbound_web_identity_federations, keyed the same as var.iam_outbound_web_identity_federations"
  value       = { for k, v in aws_iam_outbound_web_identity_federation.iam_outbound_web_identity_federations : k => v.issuer_identifier if v.issuer_identifier != null && length(v.issuer_identifier) > 0 }
}


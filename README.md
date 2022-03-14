## What tools are there?
|     | [Checkov](https://github.com/bridgecrewio/checkov) | [Cloudrail](https://www.indeni.com/cloudrail) | [Kics](https://github.com/Checkmarx/kics) | [Snyk](https://snyk.io/) | [Terrascan](https://github.com/accurics/terrascan) | [Tfsec](https://github.com/tfsec/tfsec) |
|----|----|----|----|----|----|----|
|Vendor|Bridgecrew|Indeni|Checkmarx|Snyk|Accurics|Aqua Security|
|License|OSS|Freemium|OSS|Freemium|OSS|OSS|
|Written in|Python|Python|Rego|Unknown|Rego|Go|
|Custom Rule Support|Yes|Yes|Yes|No|Yes|Yes|
|CI/CD-specific Integrations|[CircleCI](https://circleci.com/developer/orbs/orb/bridgecrew/bridgecrew), [GitLab](https://gitlab.com/guided-explorations/ci-cd-plugin-extensions/checkov-iac-sast), [GitHub](https://github.com/bridgecrewio/checkov-action)|[CircleCI](https://circleci.com/developer/orbs/orb/indeni/cloudrail), [GitLab](https://gitlab.com/gitlab-org/gitlab/-/blob/41762757f1729b6c56c81d8654e874f7d7c4fad7/lib/gitlab/ci/templates/Indeni.Cloudrail.gitlab-ci-.yml), [GitHub](https://github.com/indeni/cloudrail-run-ga)|[GitHub](https://github.com/Checkmarx/kics-github-action)|None|[CircleCI](https://circleci.com/developer/orbs/orb/accurics/accurics-cli), [GitHub](https://github.com/accurics/terrascan-action)|[CircleCI](https://circleci.com/developer/orbs/orb/mycodeself/tfsec), [GitHub](https://github.com/aquasecurity/tfsec-sarif-action)|
|Output Formats (for generic CI/CD support)|Text, JSON, JUnit, SARIF|Text, JSON, JUnit, SARIF, GitLab-SAST|Text, JSON, SARIF, HTML|Text, JSON, SARIF, HTML|Text, JSON, JUnit|Text, JSON, JUnit, SARIF|
|Coverage for live environment|Not in OSS, use paid product|Yes, integrated into scans|No|No|Not in OSS, use paid product|Yes via differnet product|


### Summary
Last update: 2022-03-14

|     | Checkov | Indeni Cloudrail | Kics | Snyk | Terrascan | Tfsec |
|----|----|----|----|----|----|----|
|Tested Version|2.0.941|1.3.836|1.5.3|1.864.0|1.13.2|1.8.0|
|Terraform - AWS|69%|93%|94%|62%|73%|61%|
|Terraform - Advanced Language Expressions|20%|100%|20%|0%|0%|0%|
|Total Catch Rate|67%|93%|90%|59%|70%|58%|


<details><summary>test-cases/terraform/aws/best-practices</summary>

| Test Case | Checkov | Indeni Cloudrail | Kics | Snyk | Terrascan | Tfsec |
|----|----|----|----|----|----|----|
|[alb_drop_http_headers](test-cases/terraform/aws/best-practices/alb_drop_http_headers)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:x:|:white_check_mark:|
|[cloudfront_not_using_waf](test-cases/terraform/aws/best-practices/cloudfront_not_using_waf)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[cloudtrail_enabled_on_multi_region](test-cases/terraform/aws/best-practices/cloudtrail_enabled_on_multi_region)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[config_aggregator_all_regions](test-cases/terraform/aws/best-practices/config_aggregator_all_regions)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[deploy_ec2_to_default_vpc](test-cases/terraform/aws/best-practices/deploy_ec2_to_default_vpc)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:x:|:white_check_mark:|:white_check_mark:|
|[deploy_redshift_in_ec2_classic_mode](test-cases/terraform/aws/best-practices/deploy_redshift_in_ec2_classic_mode)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:x:|:x:|:white_check_mark:|
|[dynamodb_without_recovery_enabled](test-cases/terraform/aws/best-practices/dynamodb_without_recovery_enabled)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[ec2_ebs_not_optimized](test-cases/terraform/aws/best-practices/ec2_ebs_not_optimized)|:white_check_mark:|:x:|:white_check_mark:|:x:|:white_check_mark:|:x:|
|[ecr_make_tags_immutable](test-cases/terraform/aws/best-practices/ecr_make_tags_immutable)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[ecr_use_image_scanning](test-cases/terraform/aws/best-practices/ecr_use_image_scanning)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[ecs_cluster_container_insights](test-cases/terraform/aws/best-practices/ecs_cluster_container_insights)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:x:|:white_check_mark:|
|[elasticache_automatic_backup](test-cases/terraform/aws/best-practices/elasticache_automatic_backup)|:white_check_mark:|:x:|:white_check_mark:|:white_check_mark:|:x:|:white_check_mark:|
|[kms_uses_rotation](test-cases/terraform/aws/best-practices/kms_uses_rotation)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[rds_retention_period_set](test-cases/terraform/aws/best-practices/rds_retention_period_set)|:white_check_mark:|:x:|:white_check_mark:|:x:|:white_check_mark:|:white_check_mark:|
|[security_group_no_description_for_rules](test-cases/terraform/aws/best-practices/security_group_no_description_for_rules)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[security_group_no_description_for_securi..](test-cases/terraform/aws/best-practices/security_group_no_description_for_security_group)|:x:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[security_group_no_unused](test-cases/terraform/aws/best-practices/security_group_no_unused)|:white_check_mark:|:white_check_mark:|:x:|:x:|:x:|:x:|
|[tag_all_items](test-cases/terraform/aws/best-practices/tag_all_items)|:x:|:white_check_mark:|:white_check_mark:|:x:|:x:|:x:|
|[using_public_amis](test-cases/terraform/aws/best-practices/using_public_amis)|:x:|:white_check_mark:|:x:|:x:|:x:|:x:|
|Sub-category Catch Rate|84%|84%|89%|63%|63%|79%|

</details>

<details><summary>test-cases/terraform/aws/encryption/at-rest</summary>

| Test Case | Checkov | Indeni Cloudrail | Kics | Snyk | Terrascan | Tfsec |
|----|----|----|----|----|----|----|
|[athena_not_encrypted](test-cases/terraform/aws/encryption/at-rest/athena_not_encrypted)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[cloudtrail_not_encrypted](test-cases/terraform/aws/encryption/at-rest/cloudtrail_not_encrypted)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[cloudwatch_groups_not_encrypted](test-cases/terraform/aws/encryption/at-rest/cloudwatch_groups_not_encrypted)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[codbuild_using_aws_key](test-cases/terraform/aws/encryption/at-rest/codbuild_using_aws_key)|:x:|:white_check_mark:|:white_check_mark:|:x:|:x:|:x:|
|[dax_cluster_not_encrypted](test-cases/terraform/aws/encryption/at-rest/dax_cluster_not_encrypted)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[docdb_cluster_encrypted_at_rest_using_cm..](test-cases/terraform/aws/encryption/at-rest/docdb_cluster_encrypted_at_rest_using_cmk_not_customer_managed)|:x:|:white_check_mark:|:white_check_mark:|:x:|:x:|:white_check_mark:|
|[docdb_cluster_encrypted_without_kms_key](test-cases/terraform/aws/encryption/at-rest/docdb_cluster_encrypted_without_kms_key)|:x:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[docdb_clusters_non_encrypted](test-cases/terraform/aws/encryption/at-rest/docdb_clusters_non_encrypted)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[dynamodb_not_encrypted](test-cases/terraform/aws/encryption/at-rest/dynamodb_not_encrypted)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:x:|:white_check_mark:|:white_check_mark:|
|[ecr_repo_not_encrypted](test-cases/terraform/aws/encryption/at-rest/ecr_repo_not_encrypted)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[elasticache_replication_group_not_encryp..](test-cases/terraform/aws/encryption/at-rest/elasticache_replication_group_not_encrypted_at_rest)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[elasticsearch_not_encrypted](test-cases/terraform/aws/encryption/at-rest/elasticsearch_not_encrypted)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[kinesis_stream_not_encrypted](test-cases/terraform/aws/encryption/at-rest/kinesis_stream_not_encrypted)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[neptune_cluster_no_encryption](test-cases/terraform/aws/encryption/at-rest/neptune_cluster_no_encryption)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[rds_cluster_encrypt_at_rest_disabled](test-cases/terraform/aws/encryption/at-rest/rds_cluster_encrypt_at_rest_disabled)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[redshift_not_encrypted](test-cases/terraform/aws/encryption/at-rest/redshift_not_encrypted)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[rest_api_cache_non_encrypted](test-cases/terraform/aws/encryption/at-rest/rest_api_cache_non_encrypted)|:x:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:x:|:white_check_mark:|
|[s3_bucket_non_encrypted](test-cases/terraform/aws/encryption/at-rest/s3_bucket_non_encrypted)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[s3_bucket_object_non_encrypted](test-cases/terraform/aws/encryption/at-rest/s3_bucket_object_non_encrypted)|:x:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:x:|
|[sagemaker_not_encrypted](test-cases/terraform/aws/encryption/at-rest/sagemaker_not_encrypted)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:x:|
|[secretsmanager_secrets_encrypted_at_rest..](test-cases/terraform/aws/encryption/at-rest/secretsmanager_secrets_encrypted_at_rest_with_aws_managed_key_by_default)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[secretsmanager_secrets_encrypted_at_rest..](test-cases/terraform/aws/encryption/at-rest/secretsmanager_secrets_encrypted_at_rest_with_aws_managed_key_by_key_arn)|:x:|:white_check_mark:|:white_check_mark:|:x:|:x:|:white_check_mark:|
|[sns_topic_encrypted_at_rest_with_aws_man..](test-cases/terraform/aws/encryption/at-rest/sns_topic_encrypted_at_rest_with_aws_managed_key_by_key_arn)|:x:|:white_check_mark:|:white_check_mark:|:x:|:x:|:white_check_mark:|
|[sqs_queue_not_encrypted](test-cases/terraform/aws/encryption/at-rest/sqs_queue_not_encrypted)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[workgroups_non_encrypted](test-cases/terraform/aws/encryption/at-rest/workgroups_non_encrypted)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:x:|:white_check_mark:|
|[workspace_root_volume_not_encrypted_at_r..](test-cases/terraform/aws/encryption/at-rest/workspace_root_volume_not_encrypted_at_rest)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[workspace_user_volume_not_encrypted_at_r..](test-cases/terraform/aws/encryption/at-rest/workspace_user_volume_not_encrypted_at_rest)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|Sub-category Catch Rate|74%|100%|100%|81%|78%|89%|

</details>

<details><summary>test-cases/terraform/aws/encryption/in-transit</summary>

| Test Case | Checkov | Indeni Cloudrail | Kics | Snyk | Terrascan | Tfsec |
|----|----|----|----|----|----|----|
|[alb_use_http](test-cases/terraform/aws/encryption/in-transit/alb_use_http)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:x:|:white_check_mark:|:white_check_mark:|
|[cloudfront_distribution_not_encrypted](test-cases/terraform/aws/encryption/in-transit/cloudfront_distribution_not_encrypted)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[cloudfront_protocol_version_is_low](test-cases/terraform/aws/encryption/in-transit/cloudfront_protocol_version_is_low)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[ecs_task_definition_not_encrypted_in_tra..](test-cases/terraform/aws/encryption/in-transit/ecs_task_definition_not_encrypted_in_transit)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[elasticache_replication_group_not_encryp..](test-cases/terraform/aws/encryption/in-transit/elasticache_replication_group_not_encrypted_in_transit)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[elasticsearch_encrypt_node_to_node_disab..](test-cases/terraform/aws/encryption/in-transit/elasticsearch_encrypt_node_to_node_disabled)|:x:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[load_balancer_listener_http](test-cases/terraform/aws/encryption/in-transit/load_balancer_listener_http)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[vpc_has_only_dynamodb_vpce_gw_connection](test-cases/terraform/aws/encryption/in-transit/vpc_has_only_dynamodb_vpce_gw_connection)|:x:|:white_check_mark:|:x:|:x:|:x:|:x:|
|Sub-category Catch Rate|75%|100%|88%|75%|88%|88%|

</details>

<details><summary>test-cases/terraform/aws/iam/iam-entities</summary>

| Test Case | Checkov | Indeni Cloudrail | Kics | Snyk | Terrascan | Tfsec |
|----|----|----|----|----|----|----|
|[human_users_defined](test-cases/terraform/aws/iam/iam-entities/human_users_defined)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:x:|:x:|:x:|
|[iam_user_inline_policy_attach](test-cases/terraform/aws/iam/iam-entities/iam_user_inline_policy_attach)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:x:|
|[iam_user_managed_policy_direct_attachmen..](test-cases/terraform/aws/iam/iam-entities/iam_user_managed_policy_direct_attachment)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:x:|
|[passrole_and_lambda_permissions_cause_pr..](test-cases/terraform/aws/iam/iam-entities/passrole_and_lambda_permissions_cause_priv_escalation)|:x:|:white_check_mark:|:white_check_mark:|:x:|:white_check_mark:|:x:|
|[policy-too-broad](test-cases/terraform/aws/iam/iam-entities/policy-too-broad)|:x:|:white_check_mark:|:x:|:x:|:x:|:x:|
|[policy_missing_principal](test-cases/terraform/aws/iam/iam-entities/policy_missing_principal)|:x:|:white_check_mark:|:white_check_mark:|:x:|:white_check_mark:|:x:|
|[public_and_private_ec2_same_role](test-cases/terraform/aws/iam/iam-entities/public_and_private_ec2_same_role)|:x:|:white_check_mark:|:white_check_mark:|:x:|:x:|:x:|
|[role_assume_policy_principal_all](test-cases/terraform/aws/iam/iam-entities/role_assume_policy_principal_all)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:x:|:x:|
|Sub-category Catch Rate|50%|100%|88%|38%|50%|0%|

</details>

<details><summary>test-cases/terraform/aws/iam/resource-authentication</summary>

| Test Case | Checkov | Indeni Cloudrail | Kics | Snyk | Terrascan | Tfsec |
|----|----|----|----|----|----|----|
|[rds_without_authentication](test-cases/terraform/aws/iam/resource-authentication/rds_without_authentication)|:white_check_mark:|:x:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:x:|
|[rest_api_without_authorization](test-cases/terraform/aws/iam/resource-authentication/rest_api_without_authorization)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:x:|:x:|
|Sub-category Catch Rate|100%|50%|100%|100%|50%|0%|

</details>

<details><summary>test-cases/terraform/aws/iam/resource-policies</summary>

| Test Case | Checkov | Indeni Cloudrail | Kics | Snyk | Terrascan | Tfsec |
|----|----|----|----|----|----|----|
|[cloudwatch_log_destination_insecure_poli..](test-cases/terraform/aws/iam/resource-policies/cloudwatch_log_destination_insecure_policy)|:x:|:white_check_mark:|:white_check_mark:|:x:|:x:|:x:|
|[ecr_not_secure_policy](test-cases/terraform/aws/iam/resource-policies/ecr_not_secure_policy)|:x:|:white_check_mark:|:white_check_mark:|:x:|:white_check_mark:|:x:|
|[efs_not_secure_policy](test-cases/terraform/aws/iam/resource-policies/efs_not_secure_policy)|:x:|:white_check_mark:|:white_check_mark:|:x:|:white_check_mark:|:x:|
|[elasticsearch_domain_not_secure_policy](test-cases/terraform/aws/iam/resource-policies/elasticsearch_domain_not_secure_policy)|:x:|:white_check_mark:|:white_check_mark:|:x:|:white_check_mark:|:x:|
|[glacier_vault_not_secure_policy](test-cases/terraform/aws/iam/resource-policies/glacier_vault_not_secure_policy)|:white_check_mark:|:white_check_mark:|:x:|:white_check_mark:|:x:|:white_check_mark:|
|[glue_data_catalog_not_secure_policy](test-cases/terraform/aws/iam/resource-policies/glue_data_catalog_not_secure_policy)|:x:|:white_check_mark:|:white_check_mark:|:x:|:x:|:x:|
|[kms_key_not_secure_policy](test-cases/terraform/aws/iam/resource-policies/kms_key_not_secure_policy)|:x:|:white_check_mark:|:white_check_mark:|:x:|:white_check_mark:|:x:|
|[lambda_not_secure_policy](test-cases/terraform/aws/iam/resource-policies/lambda_not_secure_policy)|:x:|:white_check_mark:|:white_check_mark:|:x:|:x:|:x:|
|[rest_api_not_secure_policy](test-cases/terraform/aws/iam/resource-policies/rest_api_not_secure_policy)|:x:|:white_check_mark:|:white_check_mark:|:x:|:white_check_mark:|:x:|
|[s3_bucket_acl_public_all_authenticated_u..](test-cases/terraform/aws/iam/resource-policies/s3_bucket_acl_public_all_authenticated_users_canned)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[s3_bucket_acl_public_all_users_canned](test-cases/terraform/aws/iam/resource-policies/s3_bucket_acl_public_all_users_canned)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[s3_bucket_acl_public_all_users_canned_wi..](test-cases/terraform/aws/iam/resource-policies/s3_bucket_acl_public_all_users_canned_with_overriding_access_block)|:x:|:white_check_mark:|:white_check_mark:|:x:|:white_check_mark:|:x:|
|[s3_bucket_policy_public_to_all_authentic..](test-cases/terraform/aws/iam/resource-policies/s3_bucket_policy_public_to_all_authenticated_users)|:x:|:white_check_mark:|:white_check_mark:|:x:|:white_check_mark:|:x:|
|[secrets_manager_not_secure_policy](test-cases/terraform/aws/iam/resource-policies/secrets_manager_not_secure_policy)|:x:|:white_check_mark:|:white_check_mark:|:x:|:white_check_mark:|:x:|
|Sub-category Catch Rate|21%|100%|93%|21%|71%|21%|

</details>

<details><summary>test-cases/terraform/aws/logging</summary>

| Test Case | Checkov | Indeni Cloudrail | Kics | Snyk | Terrascan | Tfsec |
|----|----|----|----|----|----|----|
|[api_gateway_no_xray](test-cases/terraform/aws/logging/api_gateway_no_xray)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[cloudfront_distribution_without_logging](test-cases/terraform/aws/logging/cloudfront_distribution_without_logging)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[cloudtrail_file_log_validation_disabled](test-cases/terraform/aws/logging/cloudtrail_file_log_validation_disabled)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[cloudwatch_log_groups_no_retention](test-cases/terraform/aws/logging/cloudwatch_log_groups_no_retention)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:x:|
|[docdb_audit_logs_missing](test-cases/terraform/aws/logging/docdb_audit_logs_missing)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[ec2_without_monitoring](test-cases/terraform/aws/logging/ec2_without_monitoring)|:white_check_mark:|:x:|:white_check_mark:|:x:|:white_check_mark:|:x:|
|[eks_logging_disabled](test-cases/terraform/aws/logging/eks_logging_disabled)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[elasticsearch_domain_logging_disabled](test-cases/terraform/aws/logging/elasticsearch_domain_logging_disabled)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[elb_without_access_logs](test-cases/terraform/aws/logging/elb_without_access_logs)|:white_check_mark:|:x:|:white_check_mark:|:x:|:white_check_mark:|:x:|
|[globalaccelerator_accelerator_no_flow_lo..](test-cases/terraform/aws/logging/globalaccelerator_accelerator_no_flow_logs)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:x:|
|[lambda_without_explicit_log_group](test-cases/terraform/aws/logging/lambda_without_explicit_log_group)|:x:|:white_check_mark:|:x:|:x:|:x:|:x:|
|[lambda_without_xray](test-cases/terraform/aws/logging/lambda_without_xray)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[neptune_cluster_no_logging](test-cases/terraform/aws/logging/neptune_cluster_no_logging)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:x:|:white_check_mark:|:white_check_mark:|
|[rds_without_logging](test-cases/terraform/aws/logging/rds_without_logging)|:white_check_mark:|:x:|:white_check_mark:|:x:|:white_check_mark:|:x:|
|[redshift_without_logging](test-cases/terraform/aws/logging/redshift_without_logging)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:x:|
|[rest_api_no_access_logging](test-cases/terraform/aws/logging/rest_api_no_access_logging)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|[s3_access_logging_disabled](test-cases/terraform/aws/logging/s3_access_logging_disabled)|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|Sub-category Catch Rate|94%|82%|94%|71%|94%|59%|

</details>

<details><summary>test-cases/terraform/aws/networking/vpc-endpoints</summary>

| Test Case | Checkov | Indeni Cloudrail | Kics | Snyk | Terrascan | Tfsec |
|----|----|----|----|----|----|----|
|[dynamodb-vpce-exist-without-routeassocia..](test-cases/terraform/aws/networking/vpc-endpoints/dynamodb-vpce-exist-without-routeassociation)|:x:|:white_check_mark:|:white_check_mark:|:x:|:x:|:x:|
|[sqs-vpc-endpoint-without-dns-resolution](test-cases/terraform/aws/networking/vpc-endpoints/sqs-vpc-endpoint-without-dns-resolution)|:x:|:white_check_mark:|:white_check_mark:|:x:|:x:|:x:|
|Sub-category Catch Rate|0%|100%|100%|0%|0%|0%|

</details>

<details><summary>test-cases/terraform/hcl_language_complexity</summary>

| Test Case | Checkov | Indeni Cloudrail | Kics | Snyk | Terrascan | Tfsec |
|----|----|----|----|----|----|----|
|[using_count_and_ternary_expr](test-cases/terraform/hcl_language_complexity/using_count_and_ternary_expr)|:x:|:white_check_mark:|:x:|:x:|:x:|:x:|
|[using_for_each](test-cases/terraform/hcl_language_complexity/using_for_each)|:x:|:white_check_mark:|:x:|:x:|:x:|:x:|
|[using_locals](test-cases/terraform/hcl_language_complexity/using_locals)|:x:|:white_check_mark:|:white_check_mark:|:x:|:x:|:x:|
|[using_module_multi](test-cases/terraform/hcl_language_complexity/using_module_multi)|:white_check_mark:|:white_check_mark:|:x:|:x:|:x:|:x:|
|[using_module_simple](test-cases/terraform/hcl_language_complexity/using_module_simple)|:x:|:white_check_mark:|:x:|:x:|:x:|:x:|
|Sub-category Catch Rate|20%|100%|20%|0%|0%|0%|

</details>




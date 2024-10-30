import {
  id =  "p-95sn5g3rfs"
  to = aws_organizations_policy.this
}

resource "aws_organizations_policy" "this" {
  name        = "Environment"
  description = null
  type        = "TAG_POLICY"
  content = jsonencode({
    tags = {
      environment = {
        tag_value = {
          "@@assign" = ["prod",
            "dev",
            "int",
          "preprod"]
        }
        enforced_for = {
          "@@assign" = [
            "aoss:collection",
            "amplifyuibuilder:app/environment/components",
            "amplifyuibuilder:app/environment/themes",
            "apigateway:apikeys",
            "apigateway:domainnames",
            "apigateway:restapis",
            "apigateway:restapis/stages",
            "appmesh:*",
            "appconfig:application",
            "appconfig:application/configurationprofile",
            "appconfig:application/environment",
            "appconfig:application/environment/deployment",
            "appconfig:deploymentstrategy",
            "athena:*",
            "auditmanager:assessment",
            "auditmanager:assessmentFramework",
            "auditmanager:control",
            "backup:backup-plan",
            "backup:backup-vault",
            "backup-gateway:gateway",
            "backup-gateway:hypervisor",
            "backup-gateway:vm",
            "batch:job",
            "batch:job-definition",
            "batch:job-queue",
            "bugbust:event",
            "acm:*",
            "acm-pca:certificate-authority",
            "chime:app-instance",
            "chime:app-instance/channel",
            "chime:app-instance/user",
            "chime:media-pipeline",
            "chime:meeting",
            "chime:sma",
            "chime:vc",
            "cleanrooms:collaboration",
            "cleanrooms:configuredtable",
            "cleanrooms:membership",
            "cleanrooms:membership/configuredtableassociation",
            "cloud9:environment",
            "cloudfront:*",
            "cloudtrail:*",
            "cloudwatch:*",
            "events:*",
            "internetmonitor:monitor",
            "logs:destination",
            "logs:log-group",
            "oam:link",
            "oam:sink",
            "codebuild:*",
            "codecatalyst:connections",
            "codecommit:*",
            "codeguru-reviewer:association",
            "codeguru-security:scans",
            "codepipeline:*",
            "codestar-connections:connection",
            "codestar-connections:host",
            "cognito-identity:*",
            "cognito-idp:*",
            "comprehend:*",
            "config:*",
            "connect:instance/agent",
            "connect:instance/contact-flow",
            "connect:instance/integration-association",
            "connect:instance/queue",
            "connect:instance/routing-profile",
            "connect:instance/transfer-destination",
            "wisdom:assistant",
            "wisdom:association",
            "wisdom:content",
            "wisdom:knowledge-base",
            "wisdom:session",
            "dlm:policy",
            "directconnect:*",
            "dms:*",
            "dynamodb:*",
            "ec2:capacity-reservation",
            "ec2:capacity-reservation-fleet",
            "ec2:carrier-gateway",
            "ec2:client-vpn-endpoint",
            "ec2:coip-pool",
            "ec2:customer-gateway",
            "ec2:dedicated-host",
            "ec2:dhcp-options",
            "ec2:egress-only-internet-gateway",
            "ec2:elastic-ip",
            "ec2:export-image-task",
            "ec2:export-instance-task",
            "ec2:fleet",
            "ec2:fpga-image",
            "ec2:host-reservation",
            "ec2:image",
            "ec2:import-image-task",
            "ec2:import-snapshot-task",
            "ec2:instance",
            "ec2:instance-event-window",
            "ec2:internet-gateway",
            "ec2:ipam",
            "ec2:ipam-pool",
            "ec2:ipam-scope",
            "ec2:ipv4pool-ec2",
            "ec2:key-pair",
            "ec2:launch-template",
            "ec2:local-gateway-route-table",
            "ec2:local-gateway-route-table-virtual-interface-group-association",
            "ec2:local-gateway-route-table-vpc-association",
            "ec2:natgateway",
            "ec2:network-acl",
            "ec2:network-insights-access-scope",
            "ec2:network-insights-access-scope-analysis",
            "ec2:network-insights-analysis",
            "ec2:network-insights-path",
            "ec2:network-interface",
            "ec2:placement-group",
            "ec2:prefix-list",
            "ec2:replace-root-volume-task",
            "ec2:reserved-instances",
            "ec2:route-table",
            "ec2:security-group",
            "ec2:snapshot",
            "ec2:spot-fleet-request",
            "ec2:spot-instances-request",
            "ec2:subnet",
            "ec2:subnet-cidr-reservation",
            "ec2:traffic-mirror-filter",
            "ec2:traffic-mirror-session",
            "ec2:traffic-mirror-target",
            "ec2:transit-gateway",
            "ec2:transit-gateway-attachment",
            "ec2:transit-gateway-connect-peer",
            "ec2:transit-gateway-multicast-domain",
            "ec2:transit-gateway-policy-table",
            "ec2:transit-gateway-route-table",
            "ec2:transit-gateway-route-table-announcement",
            "ec2:verified-access-instance",
            "ec2:verified-access-trust-provider",
            "ec2:verified-access-group",
            "ec2:verified-access-endpoint",
            "ec2:volume",
            "ec2:vpc",
            "ec2:vpc-endpoint",
            "ec2:vpc-endpoint-service",
            "ec2:vpc-flow-log",
            "ec2:vpc-peering-connection",
            "ec2:vpn-connection",
            "ec2:vpn-gateway",
            "elasticfilesystem:*",
            "eks:cluster",
            "elasticbeanstalk:application",
            "elasticbeanstalk:applicationversion",
            "elasticbeanstalk:configurationtemplate",
            "elasticbeanstalk:platform",
            "ecr:repository",
            "ecs:capacity-provider",
            "ecs:cluster",
            "ecs:service",
            "ecs:task-definition",
            "ecs:task-set",
            "elasticache:cluster",
            "es:domain",
            "elasticloadbalancing:*",
            "elasticmapreduce:cluster",
            "elasticmapreduce:editor",
            "emr-serverless:applications",
            "entityresolution:matchingworkflow",
            "entityresolution:schemamapping",
            "pipes:pipe",
            "scheduler:schedule-group",
            "firehose:*",
            "iotfleethub:application",
            "frauddetector:detector",
            "frauddetector:detector-version",
            "frauddetector:model",
            "frauddetector:rule",
            "frauddetector:variable",
            "fsx:*",
            "globalaccelerator:accelerator",
            "greengrass:bulk",
            "greengrass:connectorsDefinition",
            "greengrass:coresDefinition",
            "greengrass:devicesDefinition",
            "greengrass:functionsDefinition",
            "greengrass:loggersDefinition",
            "greengrass:resourcesDefinition",
            "greengrass:subscriptionsDefinition",
            "guardduty:detector",
            "guardduty:detector/filter",
            "guardduty:detector/ipset",
            "guardduty:detector/threatintelset",
            "healthlake:datastore",
            "iam:instance-profile",
            "iam:mfa",
            "iam:oidc-provider",
            "iam:policy",
            "iam:saml-provider",
            "iam:server-certificate",
            "inspector2:filter",
            "iotanalytics:*",
            "iotevents:*",
            "iotsitewise:asset",
            "iotsitewise:asset-model",
            "kinesisanalytics:*",
            "kms:*",
            "lambda:*",
            "macie2:custom-data-identifier",
            "mediastore:container",
            "mq:broker",
            "mq:configuration",
            "network-firewall:firewall",
            "network-firewall:firewall-policy",
            "network-firewall:stateful-rulegroup",
            "network-firewall:stateless-rulegroup",
            "omics:annotationStore",
            "omics:annotationStore/version",
            "omics:referenceStore",
            "omics:referenceStore/reference",
            "omics:run",
            "omics:runGroup",
            "omics:sequenceStore",
            "omics:sequenceStore/readSet",
            "omics:variantStore",
            "omics:workflow",
            "organizations:account",
            "organizations:ou",
            "organizations:policy",
            "organizations:root",
            "sms-voice:configuration-set",
            "sms-voice:opt-out-list",
            "sms-voice:phone-number",
            "sms-voice:pool",
            "sms-voice:sender-id",
            "rds:cluster-endpoint",
            "rds:cluster-pg",
            "rds:db-proxy",
            "rds:db-proxy-endpoint",
            "rds:es",
            "rds:og",
            "rds:pg",
            "rds:ri",
            "rds:secgrp",
            "rds:subgrp",
            "rds:target-group",
            "rbin:rule",
            "redshift:*",
            "redshift-serverless:namespace",
            "redshift-serverless:workgroup",
            "ram:*",
            "resource-groups:*",
            "route53:hostedzone",
            "route53resolver:*",
            "s3:bucket",
            "s3:storage-lens",
            "s3:storage-lens-group",
            "sagemaker:action",
            "sagemaker:app-image-config",
            "sagemaker:artifact",
            "sagemaker:context",
            "sagemaker:experiment",
            "sagemaker:flow-definition",
            "sagemaker:human-task-ui",
            "sagemaker:model-package",
            "sagemaker:model-package-group",
            "sagemaker:pipeline",
            "sagemaker:processing-job",
            "sagemaker:project",
            "sagemaker:training-job",
            "secretsmanager:*",
            "securitylake:data-lake",
            "securitylake:subscriber",
            "catalog:portfolio",
            "catalog:product",
            "servicecatalog:applications",
            "servicecatalog:attribute-groups",
            "sns:topic",
            "sqs:queue",
            "states:*",
            "storagegateway:*",
            "ssm:association",
            "ssm:automation-execution",
            "ssm:document",
            "ssm:maintenancewindow",
            "ssm:managed-instance",
            "ssm:opsitem",
            "ssm:patchbaseline",
            "ssm-contacts:contact",
            "textract:adapters",
            "textract:adapters/versions",
            "transfer:server",
            "transfer:user",
            "transfer:workflow",
            "wellarchitected:workload",
            "wickr:network",
          "workspaces:*"]
        }
      }
    }
  })

}
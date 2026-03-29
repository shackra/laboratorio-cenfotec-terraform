# Evidencia Practica Final

Una vez escrita la configuración de Terraform para la practica final, ejecuto el comando `terraform apply`:

```
$ terraform workspace select dev

$ terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.infra.aws_instance.instancia will be created
  + resource "aws_instance" "instancia" {
      + ami                                  = "ami-033b95fb8079dc481"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = true
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t3a.nano"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Name"  = "dev-vm"
          + "owner" = "JORGE JAVIER ARAYA NAVARRO"
        }
      + tags_all                             = {
          + "Name"  = "dev-vm"
          + "owner" = "JORGE JAVIER ARAYA NAVARRO"
        }
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification (known after apply)

      + cpu_options (known after apply)

      + ebs_block_device (known after apply)

      + enclave_options (known after apply)

      + ephemeral_block_device (known after apply)

      + maintenance_options (known after apply)

      + metadata_options (known after apply)

      + network_interface (known after apply)

      + private_dns_name_options (known after apply)

      + root_block_device (known after apply)
    }

  # module.network.aws_subnet.subnet will be created
  + resource "aws_subnet" "subnet" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.0.0/28"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name"  = "Subnet dev"
          + "owner" = "JORGE JAVIER ARAYA NAVARRO"
        }
      + tags_all                                       = {
          + "Name"  = "Subnet dev"
          + "owner" = "JORGE JAVIER ARAYA NAVARRO"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.network.aws_vpc.vpc will be created
  + resource "aws_vpc" "vpc" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.0.0.0/24"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_classiclink                   = (known after apply)
      + enable_classiclink_dns_support       = (known after apply)
      + enable_dns_hostnames                 = (known after apply)
      + enable_dns_support                   = true
      + enable_network_address_usage_metrics = (known after apply)
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags                                 = {
          + "Name"  = "VPC dev"
          + "owner" = "JORGE JAVIER ARAYA NAVARRO"
        }
      + tags_all                             = {
          + "Name"  = "VPC dev"
          + "owner" = "JORGE JAVIER ARAYA NAVARRO"
        }
    }

Plan: 3 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + availability_zone = (known after apply)
  + instancia_id      = (known after apply)
  + public_ip         = (known after apply)
  + subnet_id         = (known after apply)
  + tag_name          = "dev-vm"
  + tag_owner         = "JORGE JAVIER ARAYA NAVARRO"
  + vpc_id            = (known after apply)

Do you want to perform these actions in workspace "dev"?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

module.network.aws_vpc.vpc: Creating...
module.network.aws_vpc.vpc: Creation complete after 2s [id=vpc-0debb70ac169729d2]
module.network.aws_subnet.subnet: Creating...
module.network.aws_subnet.subnet: Creation complete after 1s [id=subnet-07887c028ee39c6a6]
module.infra.aws_instance.instancia: Creating...
module.infra.aws_instance.instancia: Still creating... [00m10s elapsed]
module.infra.aws_instance.instancia: Creation complete after 13s [id=i-02a5b0859a836aced]

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.

Outputs:

availability_zone = "us-east-1c"
instancia_id = "i-02a5b0859a836aced"
public_ip = "52.55.102.188"
subnet_id = "subnet-07887c028ee39c6a6"
tag_name = "dev-vm"
tag_owner = "JORGE JAVIER ARAYA NAVARRO"
vpc_id = "vpc-0debb70ac169729d2"
```

Se cambia a el entorno `prod` y se aplica de nuevo la configuración:

```
$ terraform workspace select prod
Switched to workspace "prod".

$ terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.infra.aws_instance.instancia will be created
  + resource "aws_instance" "instancia" {
      + ami                                  = "ami-0b614a5d911900a9b"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = true
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t3a.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Name"  = "prod-vm"
          + "owner" = "JORGE JAVIER ARAYA NAVARRO"
        }
      + tags_all                             = {
          + "Name"  = "prod-vm"
          + "owner" = "JORGE JAVIER ARAYA NAVARRO"
        }
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification (known after apply)

      + cpu_options (known after apply)

      + ebs_block_device (known after apply)

      + enclave_options (known after apply)

      + ephemeral_block_device (known after apply)

      + maintenance_options (known after apply)

      + metadata_options (known after apply)

      + network_interface (known after apply)

      + private_dns_name_options (known after apply)

      + root_block_device (known after apply)
    }

  # module.network.aws_subnet.subnet will be created
  + resource "aws_subnet" "subnet" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.0.0/28"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name"  = "Subnet prod"
          + "owner" = "JORGE JAVIER ARAYA NAVARRO"
        }
      + tags_all                                       = {
          + "Name"  = "Subnet prod"
          + "owner" = "JORGE JAVIER ARAYA NAVARRO"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.network.aws_vpc.vpc will be created
  + resource "aws_vpc" "vpc" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.0.0.0/24"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_classiclink                   = (known after apply)
      + enable_classiclink_dns_support       = (known after apply)
      + enable_dns_hostnames                 = (known after apply)
      + enable_dns_support                   = true
      + enable_network_address_usage_metrics = (known after apply)
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags                                 = {
          + "Name"  = "VPC prod"
          + "owner" = "JORGE JAVIER ARAYA NAVARRO"
        }
      + tags_all                             = {
          + "Name"  = "VPC prod"
          + "owner" = "JORGE JAVIER ARAYA NAVARRO"
        }
    }

Plan: 3 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + availability_zone = (known after apply)
  + instancia_id      = (known after apply)
  + public_ip         = (known after apply)
  + subnet_id         = (known after apply)
  + tag_name          = "prod-vm"
  + tag_owner         = "JORGE JAVIER ARAYA NAVARRO"
  + vpc_id            = (known after apply)

Do you want to perform these actions in workspace "prod"?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

module.network.aws_vpc.vpc: Creating...
module.network.aws_vpc.vpc: Creation complete after 4s [id=vpc-0d8d175b7359bea01]
module.network.aws_subnet.subnet: Creating...
module.network.aws_subnet.subnet: Creation complete after 0s [id=subnet-075cb8829b20ffb67]
module.infra.aws_instance.instancia: Creating...
module.infra.aws_instance.instancia: Still creating... [00m10s elapsed]
module.infra.aws_instance.instancia: Creation complete after 14s [id=i-03b9e027f577dd200]

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.

Outputs:

availability_zone = "us-east-2a"
instancia_id = "i-03b9e027f577dd200"
public_ip = "13.59.148.201"
subnet_id = "subnet-075cb8829b20ffb67"
tag_name = "prod-vm"
tag_owner = "JORGE JAVIER ARAYA NAVARRO"
vpc_id = "vpc-0d8d175b7359bea01"
```

Por ultimo, se destruye la infraestructura de ambos ambientes:

```
$ terraform destroy
module.network.aws_vpc.vpc: Refreshing state... [id=vpc-0d8d175b7359bea01]
module.network.aws_subnet.subnet: Refreshing state... [id=subnet-075cb8829b20ffb67]
module.infra.aws_instance.instancia: Refreshing state... [id=i-03b9e027f577dd200]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # module.infra.aws_instance.instancia will be destroyed
  - resource "aws_instance" "instancia" {
      - ami                                  = "ami-0b614a5d911900a9b" -> null
      - arn                                  = "arn:aws:ec2:us-east-2:367816904393:instance/i-03b9e027f577dd200" -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = "us-east-2a" -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 2 -> null
      - disable_api_stop                     = false -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = "i-03b9e027f577dd200" -> null
      - instance_initiated_shutdown_behavior = "stop" -> null
      - instance_state                       = "running" -> null
      - instance_type                        = "t3a.micro" -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - monitoring                           = false -> null
      - placement_partition_number           = 0 -> null
      - primary_network_interface_id         = "eni-0144e5c4bf5376e15" -> null
      - private_dns                          = "ip-10-0-0-9.us-east-2.compute.internal" -> null
      - private_ip                           = "10.0.0.9" -> null
      - public_ip                            = "13.59.148.201" -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = "subnet-075cb8829b20ffb67" -> null
      - tags                                 = {
          - "Name"  = "prod-vm"
          - "owner" = "JORGE JAVIER ARAYA NAVARRO"
        } -> null
      - tags_all                             = {
          - "Name"  = "prod-vm"
          - "owner" = "JORGE JAVIER ARAYA NAVARRO"
        } -> null
      - tenancy                              = "default" -> null
      - user_data_replace_on_change          = false -> null
      - vpc_security_group_ids               = [
          - "sg-06cf5e95ea9cd531f",
        ] -> null
        # (7 unchanged attributes hidden)

      - capacity_reservation_specification {
          - capacity_reservation_preference = "open" -> null
        }

      - cpu_options {
          - core_count       = 1 -> null
          - threads_per_core = 2 -> null
            # (1 unchanged attribute hidden)
        }

      - credit_specification {
          - cpu_credits = "unlimited" -> null
        }

      - enclave_options {
          - enabled = false -> null
        }

      - maintenance_options {
          - auto_recovery = "default" -> null
        }

      - metadata_options {
          - http_endpoint               = "enabled" -> null
          - http_put_response_hop_limit = 1 -> null
          - http_tokens                 = "optional" -> null
          - instance_metadata_tags      = "disabled" -> null
        }

      - private_dns_name_options {
          - enable_resource_name_dns_a_record    = false -> null
          - enable_resource_name_dns_aaaa_record = false -> null
          - hostname_type                        = "ip-name" -> null
        }

      - root_block_device {
          - delete_on_termination = true -> null
          - device_name           = "/dev/xvda" -> null
          - encrypted             = false -> null
          - iops                  = 100 -> null
          - tags                  = {} -> null
          - throughput            = 0 -> null
          - volume_id             = "vol-0a7926e115029129e" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp2" -> null
            # (1 unchanged attribute hidden)
        }
    }

  # module.network.aws_subnet.subnet will be destroyed
  - resource "aws_subnet" "subnet" {
      - arn                                            = "arn:aws:ec2:us-east-2:367816904393:subnet/subnet-075cb8829b20ffb67" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "us-east-2a" -> null
      - availability_zone_id                           = "use2-az1" -> null
      - cidr_block                                     = "10.0.0.0/28" -> null
      - enable_dns64                                   = false -> null
      - enable_lni_at_device_index                     = 0 -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-075cb8829b20ffb67" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = false -> null
      - owner_id                                       = "367816904393" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {
          - "Name"  = "Subnet prod"
          - "owner" = "JORGE JAVIER ARAYA NAVARRO"
        } -> null
      - tags_all                                       = {
          - "Name"  = "Subnet prod"
          - "owner" = "JORGE JAVIER ARAYA NAVARRO"
        } -> null
      - vpc_id                                         = "vpc-0d8d175b7359bea01" -> null
        # (4 unchanged attributes hidden)
    }

  # module.network.aws_vpc.vpc will be destroyed
  - resource "aws_vpc" "vpc" {
      - arn                                  = "arn:aws:ec2:us-east-2:367816904393:vpc/vpc-0d8d175b7359bea01" -> null
      - assign_generated_ipv6_cidr_block     = false -> null
      - cidr_block                           = "10.0.0.0/24" -> null
      - default_network_acl_id               = "acl-01acd3e08b3f0a03b" -> null
      - default_route_table_id               = "rtb-070a437f02ae9c658" -> null
      - default_security_group_id            = "sg-06cf5e95ea9cd531f" -> null
      - dhcp_options_id                      = "dopt-069c12649ebed9d9a" -> null
      - enable_classiclink                   = false -> null
      - enable_classiclink_dns_support       = false -> null
      - enable_dns_hostnames                 = false -> null
      - enable_dns_support                   = true -> null
      - enable_network_address_usage_metrics = false -> null
      - id                                   = "vpc-0d8d175b7359bea01" -> null
      - instance_tenancy                     = "default" -> null
      - ipv6_netmask_length                  = 0 -> null
      - main_route_table_id                  = "rtb-070a437f02ae9c658" -> null
      - owner_id                             = "367816904393" -> null
      - tags                                 = {
          - "Name"  = "VPC prod"
          - "owner" = "JORGE JAVIER ARAYA NAVARRO"
        } -> null
      - tags_all                             = {
          - "Name"  = "VPC prod"
          - "owner" = "JORGE JAVIER ARAYA NAVARRO"
        } -> null
        # (4 unchanged attributes hidden)
    }

Plan: 0 to add, 0 to change, 3 to destroy.

Changes to Outputs:
  - availability_zone = "us-east-2a" -> null
  - instancia_id      = "i-03b9e027f577dd200" -> null
  - public_ip         = "13.59.148.201" -> null
  - subnet_id         = "subnet-075cb8829b20ffb67" -> null
  - tag_name          = "prod-vm" -> null
  - tag_owner         = "JORGE JAVIER ARAYA NAVARRO" -> null
  - vpc_id            = "vpc-0d8d175b7359bea01" -> null

Do you really want to destroy all resources in workspace "prod"?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

module.infra.aws_instance.instancia: Destroying... [id=i-03b9e027f577dd200]
module.infra.aws_instance.instancia: Still destroying... [id=i-03b9e027f577dd200, 00m10s elapsed]
module.infra.aws_instance.instancia: Still destroying... [id=i-03b9e027f577dd200, 00m20s elapsed]
module.infra.aws_instance.instancia: Still destroying... [id=i-03b9e027f577dd200, 00m30s elapsed]
module.infra.aws_instance.instancia: Destruction complete after 31s
module.network.aws_subnet.subnet: Destroying... [id=subnet-075cb8829b20ffb67]
module.network.aws_subnet.subnet: Destruction complete after 1s
module.network.aws_vpc.vpc: Destroying... [id=vpc-0d8d175b7359bea01]
module.network.aws_vpc.vpc: Destruction complete after 0s

Destroy complete! Resources: 3 destroyed.


$ terraform workspace select dev
Switched to workspace "dev".


$ terraform destroy
module.network.aws_vpc.vpc: Refreshing state... [id=vpc-0debb70ac169729d2]
module.network.aws_subnet.subnet: Refreshing state... [id=subnet-07887c028ee39c6a6]
module.infra.aws_instance.instancia: Refreshing state... [id=i-02a5b0859a836aced]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # module.infra.aws_instance.instancia will be destroyed
  - resource "aws_instance" "instancia" {
      - ami                                  = "ami-033b95fb8079dc481" -> null
      - arn                                  = "arn:aws:ec2:us-east-1:367816904393:instance/i-02a5b0859a836aced" -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = "us-east-1c" -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 2 -> null
      - disable_api_stop                     = false -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = "i-02a5b0859a836aced" -> null
      - instance_initiated_shutdown_behavior = "stop" -> null
      - instance_state                       = "running" -> null
      - instance_type                        = "t3a.nano" -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - monitoring                           = false -> null
      - placement_partition_number           = 0 -> null
      - primary_network_interface_id         = "eni-02bb1ed2e6153caf8" -> null
      - private_dns                          = "ip-10-0-0-14.ec2.internal" -> null
      - private_ip                           = "10.0.0.14" -> null
      - public_ip                            = "52.55.102.188" -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = "subnet-07887c028ee39c6a6" -> null
      - tags                                 = {
          - "Name"  = "dev-vm"
          - "owner" = "JORGE JAVIER ARAYA NAVARRO"
        } -> null
      - tags_all                             = {
          - "Name"  = "dev-vm"
          - "owner" = "JORGE JAVIER ARAYA NAVARRO"
        } -> null
      - tenancy                              = "default" -> null
      - user_data_replace_on_change          = false -> null
      - vpc_security_group_ids               = [
          - "sg-011a4a15996af3b72",
        ] -> null
        # (7 unchanged attributes hidden)

      - capacity_reservation_specification {
          - capacity_reservation_preference = "open" -> null
        }

      - cpu_options {
          - core_count       = 1 -> null
          - threads_per_core = 2 -> null
            # (1 unchanged attribute hidden)
        }

      - credit_specification {
          - cpu_credits = "unlimited" -> null
        }

      - enclave_options {
          - enabled = false -> null
        }

      - maintenance_options {
          - auto_recovery = "default" -> null
        }

      - metadata_options {
          - http_endpoint               = "enabled" -> null
          - http_put_response_hop_limit = 1 -> null
          - http_tokens                 = "optional" -> null
          - instance_metadata_tags      = "disabled" -> null
        }

      - private_dns_name_options {
          - enable_resource_name_dns_a_record    = false -> null
          - enable_resource_name_dns_aaaa_record = false -> null
          - hostname_type                        = "ip-name" -> null
        }

      - root_block_device {
          - delete_on_termination = true -> null
          - device_name           = "/dev/xvda" -> null
          - encrypted             = false -> null
          - iops                  = 100 -> null
          - tags                  = {} -> null
          - throughput            = 0 -> null
          - volume_id             = "vol-084cda998e55c7d7c" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp2" -> null
            # (1 unchanged attribute hidden)
        }
    }

  # module.network.aws_subnet.subnet will be destroyed
  - resource "aws_subnet" "subnet" {
      - arn                                            = "arn:aws:ec2:us-east-1:367816904393:subnet/subnet-07887c028ee39c6a6" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "us-east-1c" -> null
      - availability_zone_id                           = "use1-az6" -> null
      - cidr_block                                     = "10.0.0.0/28" -> null
      - enable_dns64                                   = false -> null
      - enable_lni_at_device_index                     = 0 -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-07887c028ee39c6a6" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = false -> null
      - owner_id                                       = "367816904393" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {
          - "Name"  = "Subnet dev"
          - "owner" = "JORGE JAVIER ARAYA NAVARRO"
        } -> null
      - tags_all                                       = {
          - "Name"  = "Subnet dev"
          - "owner" = "JORGE JAVIER ARAYA NAVARRO"
        } -> null
      - vpc_id                                         = "vpc-0debb70ac169729d2" -> null
        # (4 unchanged attributes hidden)
    }

  # module.network.aws_vpc.vpc will be destroyed
  - resource "aws_vpc" "vpc" {
      - arn                                  = "arn:aws:ec2:us-east-1:367816904393:vpc/vpc-0debb70ac169729d2" -> null
      - assign_generated_ipv6_cidr_block     = false -> null
      - cidr_block                           = "10.0.0.0/24" -> null
      - default_network_acl_id               = "acl-05d5694b1a4ac7a30" -> null
      - default_route_table_id               = "rtb-0e2bc6aa214cbac6e" -> null
      - default_security_group_id            = "sg-011a4a15996af3b72" -> null
      - dhcp_options_id                      = "dopt-0f4e0f22d7b524024" -> null
      - enable_classiclink                   = false -> null
      - enable_classiclink_dns_support       = false -> null
      - enable_dns_hostnames                 = false -> null
      - enable_dns_support                   = true -> null
      - enable_network_address_usage_metrics = false -> null
      - id                                   = "vpc-0debb70ac169729d2" -> null
      - instance_tenancy                     = "default" -> null
      - ipv6_netmask_length                  = 0 -> null
      - main_route_table_id                  = "rtb-0e2bc6aa214cbac6e" -> null
      - owner_id                             = "367816904393" -> null
      - tags                                 = {
          - "Name"  = "VPC dev"
          - "owner" = "JORGE JAVIER ARAYA NAVARRO"
        } -> null
      - tags_all                             = {
          - "Name"  = "VPC dev"
          - "owner" = "JORGE JAVIER ARAYA NAVARRO"
        } -> null
        # (4 unchanged attributes hidden)
    }

Plan: 0 to add, 0 to change, 3 to destroy.

Changes to Outputs:
  - availability_zone = "us-east-1c" -> null
  - instancia_id      = "i-02a5b0859a836aced" -> null
  - public_ip         = "52.55.102.188" -> null
  - subnet_id         = "subnet-07887c028ee39c6a6" -> null
  - tag_name          = "dev-vm" -> null
  - tag_owner         = "JORGE JAVIER ARAYA NAVARRO" -> null
  - vpc_id            = "vpc-0debb70ac169729d2" -> null

Do you really want to destroy all resources in workspace "dev"?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

module.infra.aws_instance.instancia: Destroying... [id=i-02a5b0859a836aced]
module.infra.aws_instance.instancia: Still destroying... [id=i-02a5b0859a836aced, 00m10s elapsed]
module.infra.aws_instance.instancia: Still destroying... [id=i-02a5b0859a836aced, 00m20s elapsed]
module.infra.aws_instance.instancia: Still destroying... [id=i-02a5b0859a836aced, 00m30s elapsed]
module.infra.aws_instance.instancia: Destruction complete after 30s
module.network.aws_subnet.subnet: Destroying... [id=subnet-07887c028ee39c6a6]
module.network.aws_subnet.subnet: Destruction complete after 1s
module.network.aws_vpc.vpc: Destroying... [id=vpc-0debb70ac169729d2]
module.network.aws_vpc.vpc: Destruction complete after 1s

Destroy complete! Resources: 3 destroyed.
```

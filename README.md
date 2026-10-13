# Terraform EC2 Lab – Fix the Errors

## Project Overview

This project demonstrates how to troubleshoot and correct a faulty Terraform configuration that deploys an Amazon EC2 instance and an associated security group in AWS.

The original configuration contained incorrect or outdated settings. I corrected the configuration, validated the Terraform code, reviewed the execution plan, and successfully deployed the resources.

## Technologies Used

- **AWS:** EC2, VPC, Security Groups
- **Infrastructure as Code:** Terraform
- **Cloud Region:** Canada Central (`ca-central-1`)
- **Tools:** VS Code, Git Bash, AWS CLI, Git and GitHub

## Errors Identified and Fixed

The following configuration issues were addressed:

1. **AMI ID:** Updated the Amazon Machine Image ID to a valid Amazon Linux 2 AMI for Canada Central.
2. **EC2 key pair:** Configured an existing AWS key pair named `sujit-kp-canada`.
3. **Security group:** Configured SSH access on TCP port 22, restricted to a specified administrator IP address.
4. **VPC configuration:** Updated the VPC ID to reference an existing VPC.
5. **Subnet configuration:** Added the public subnet ID so the EC2 instance could be deployed in the intended subnet.
6. **Public IP address:** Enabled public IPv4 address assignment for the EC2 instance.
7. **Resource configuration:** Corrected the Terraform configuration and resource references as required.

## Resources Deployed

Terraform successfully created the following resources:

| Resource | Configuration |
|---|---|
| EC2 instance | `t2.micro` |
| Operating system | Amazon Linux 2 |
| AWS Region | `ca-central-1` |
| Security group | SSH access on TCP port 22 |
| Network | Existing VPC and public subnet |

## Terraform Validation and Deployment

The following commands were used from the `terraform-source` directory.

### 1. Initialize Terraform

```bash
terraform init
```

Initialized the working directory and downloaded the required AWS provider.

### 2. Format the configuration

```bash
terraform fmt
```

Formatted the Terraform configuration files.

### 3. Validate the configuration

```bash
terraform validate
```

**Result:** Terraform configuration validated successfully.

### 4. Review the execution plan

```bash
terraform plan
```

**Result:** Terraform planned to create two resources, with no changes or deletions.

### 5. Deploy the infrastructure

```bash
terraform apply
```

**Result:** Deployment completed successfully.

```text
Apply complete! Resources: 2 added, 0 changed, 0 destroyed.
```

### 6. View deployment outputs

```bash
terraform output
```

The deployment returned the following outputs:

- **EC2 instance ID:** `i-09ecfd18696beddd7`
- **EC2 public IP:** `3.96.190.9`

These are the values recorded at deployment time; they may no longer be current if the resources have since been changed or destroyed.

## Security Considerations

- SSH access is restricted to a specified public IP address rather than being open to all IP addresses.
- The EC2 instance uses an existing key pair for SSH authentication.
- AWS credentials should not be stored in source code or committed to GitHub.
- Do not publish private keys, credentials, or sensitive environment-specific configuration.

## Cleanup

To avoid unnecessary AWS charges, destroy the resources when testing is complete.

Run this command from the `terraform-source` directory:

```bash
terraform destroy
```

Review the proposed changes before confirming the destruction of the resources managed by this Terraform configuration.

## Learning Outcomes

This project provided practical experience with:

- Troubleshooting Terraform configuration errors
- Working with AWS networking and EC2 resources
- Validating and planning infrastructure changes
- Deploying infrastructure using Infrastructure as Code
- Managing project changes with Git and GitHub

## Repository

[View the project on GitHub](https://github.com/suji2win/fix-terraform-project)

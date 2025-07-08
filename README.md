# 🛡️ Cloud Security Monitoring Stack

This Terraform project deploys a modular cloud security monitoring stack on AWS, built for small teams, nonprofits, and local businesses. It includes core AWS-native services for visibility, threat detection, compliance, and alerting.

## 📦 What’s Included

Each service can be enabled or disabled independently:

| Service           | Description |
|-------------------|-------------|
| **CloudTrail**     | Records AWS API activity across regions and services |
| **AWS Config**     | Detects resource configuration drift and supports conformance packs |
| **Security Hub**   | Aggregates findings from all services and scores security posture |
| **GuardDuty**      | Monitors for threats like credential misuse, port scans, and malware |
| **SNS Alerts**     | Sends security alerts via email (customizable) |
| **IAM Access Analyzer** | Identifies unintended access to IAM roles, S3 buckets, and more |

---

## ⚙️ Prerequisites

- Terraform v1.3+
- An AWS account and access credentials
- Optional: AWS Organizations (for multi-account support)

---

## 🚀 How to Deploy

1. **Clone the Repository**

```bash
git clone https://github.com/your-org/cloud-security-monitoring-stack.git
cd cloud-security-monitoring-stack
````

2. **Customize Your Settings**

Edit `terraform.tfvars` to enable or disable services:

```hcl
enable_cloudtrail       = true
enable_config           = true
enable_security_hub     = true
enable_guardduty        = true
enable_sns              = true
enable_access_analyzer  = true
```

3. **Initialize Terraform**

```bash
terraform init
```

4. **Review the Plan**

```bash
terraform plan
```

5. **Apply the Stack**

```bash
terraform apply
```

---

## 📁 Project Structure

```
.
├── main.tf                   # Root module - wires in all services
├── variables.tf              # Toggle variables for each module
├── terraform.tfvars          # Your service enable/disable configuration
├── modules/
│   ├── cloudtrail/
│   ├── config/
│   ├── security_hub/
│   ├── guardduty/
│   ├── sns/
│   └── access_analyzer/
├── README.md                 # This file
```

Each module contains its own:

* `main.tf` – Service logic
* `variables.tf` – Module-specific inputs
* `outputs.tf` – Key outputs (like S3 bucket name or alert topic)

---

## 🔐 Security Practices

* CloudTrail logs are encrypted and stored in secure S3
* IAM Access Analyzer detects unintended public or cross-account access
* AWS Config uses conformance packs to enforce standards (e.g. Well-Architected, CIS, NIST)
* GuardDuty and Security Hub provide unified threat detection and findings
* All critical events can trigger SNS alerts

---

## 🧠 Notes

* All services are created **conditionally** using `count` based on toggle variables.
* If you disable a service in `terraform.tfvars`, Terraform will **not deploy** that module.
* You can safely enable or disable services and re-run `terraform apply`.

---

## 📞 Support

This stack was created by [Jude Wakim](https://linkedin.com/in/jude-wakim) as part of the **Amaanī Cloud Security Framework**.
To request setup assistance or custom features, contact: **[judewakim@wakimworks.com](mailto:judewakim@wakimworks.com)**

---

> “Security isn’t a product. It’s a posture — and you can automate it.”

---

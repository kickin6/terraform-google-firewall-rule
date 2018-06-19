# Create Ingress Allow Firewall Rule in Google Cloud  


## References
https://www.terraform.io/docs/providers/google/r/compute_firewall.html

https://cloud.google.com/iam/docs/understanding-roles#compute_engine_roles

## Requirements
1. Google Cloud Project.
2. Service account key in a file located at `~/.config/gcloud/my-project.json`
 
## Setup Environment

```
export ...
```

## Run Terrraform
```
terraform init
terraform plan
terraform apply
```

## Cleanup
Remove all resources created by terraform:
```
terraform destroy
```

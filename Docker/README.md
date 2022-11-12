# Docker Terraform

Any change made in this directory will be reflected in the Docker image.

```bash
docker run -it --name terraform-udemy -v <Location-to-this-directory>/Terraform-Udemy/Docker/:/mnt/terraform --entrypoint /bin/sh hashicorp/terraform
```

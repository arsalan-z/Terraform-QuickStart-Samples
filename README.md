# Terraform-QuickStart-Samples

This Terraform project deploys an Azure Virtual Machine (VM) along with a Virtual Network (VNet) and Subnet in Azure. The project is structured with modular components to promote reusability and maintainability.

## Prerequisites

Before you begin, ensure you have the following:

- 🚀 [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
- ☁️ An active Azure subscription.

## Getting Started

1. Clone this repository to your local machine:

   ```sh
   git clone https://github.com/arsalan-z/Terraform-QuickStart-Samples.git
   cd Terraform-QuickStart-Samples
   ```

2. Create a `terraform.tfvars` file in the root directory and provide values for the required variables:

   ```hcl
   resource_group_name = "quickstart-resource-group"
   location            = "North Europe"
   vnet_address        = ["10.0.0.0/16"]
   subnet_cidrs        = ["10.0.1.0/24"]
   vnet_name           = "quickstart-vnet-00"
   vm_name             = "quickstart-vm-00"

   ```

3. Initialize the Terraform project:

   ```sh
   terraform init
   ```

4. Review the execution plan to ensure you understand what resources will be created:

   ```sh
   terraform plan
   ```

5. Apply the Terraform configuration to create the VM and Virtual Network:

   ```sh
   terraform apply
   ```

6. After the deployment is complete, you'll see the public IP address of the VM in the terminal output. Additionally, you can retrieve it using the following command:

   ```sh
   terraform output vm_public_ip
   ```

## Cleanup

To avoid incurring unnecessary charges, it's recommended to destroy the resources when you're done:

1. Run the following command to destroy the created resources:

   ```sh
   terraform destroy
   ```

2. Confirm the destruction by typing `yes` when prompted.

## Customization

Feel free to customize the variables in the `terraform.tfvars` file to match your requirements.

## License

This project is licensed under the [MIT License](LICENSE).

---

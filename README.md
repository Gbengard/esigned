# CircleCI Pipeline for AWS SAM, EKS, and ArgoCD

This repository contains a CircleCI configuration for automating various tasks related to AWS SAM (Serverless Application Model), EKS (Elastic Kubernetes Service), and ArgoCD deployment. The configuration includes linting, Docker image building and security scanning, EKS cluster creation, ArgoCD installation, and application deployment.

## CircleCI Configuration

Below is an overview of the key components of the CircleCI configuration:

### Orbs

- `circleci/aws-sam-serverless@3.1.0`: This orb provides AWS SAM integration for Serverless applications.

### Commands

#### Destroy EKS Cluster

- This command destroys an EKS cluster named `my-eks-cluster` on failure.

#### Install Dependencies

- This command installs AWS CLI, kubectl, and eksctl.
- It also configures AWS CLI with the necessary credentials and sets the default region.

### Jobs

#### Linting

- This job uses a Node.js Docker image to perform linting on Dockerfiles in the `./js` directory.

#### Build and Deploy

- This job builds a Docker image and performs security scanning using AquaSec Trivy.
- It then pushes the Docker image to DockerHub.

#### EKS and ArgoCD

- This job creates an EKS cluster, installs ArgoCD, and deploys an application using ArgoCD.

### Workflows

#### The Jobs

- This workflow orchestrates the execution of the above jobs, ensuring dependencies are met.

## Usage

To use this CircleCI configuration, follow these steps:

1. Set up a CircleCI project and connect it to your GitHub repository.

2. Configure the required environment variables in the CircleCI project settings, including AWS access keys, DockerHub credentials, and any other required secrets.

3. Trigger the workflow by pushing changes to your GitHub repository or manually triggering the pipeline in the CircleCI dashboard.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

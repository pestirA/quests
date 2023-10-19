# A quest in the clouds
### Q. What is this quest?

It is a fun way to assess your cloud skills. It is also a good representative sample of the work we do at Rearc. 
Quest is a webapp made with node.js and golang.

# REARC Quest Lab

Thanks for the Opportunity! 
This code is meant to demonstrate some of the capabilities of Containerizing and Application then Deployment to GCP
This corresponds to [this PPT Deck](https://docs.google.com/presentation/d/1Jv81fU2TbUpHfRagEY6RNokwvD78oH2vRYrIaY3VEYE/edit#slide=id.g25c822bee54_1_35). 

To get started, there are few prerequisites to get started .

## Prerequisites 
The demo makes use of GitHub, GCP, DockerHub and Terraform

## Overview
Source - Create a new Repo - https://github.com/pestirA/quests
Containerization Use IAC to deploy Sample Application
Deployment Deploy the App in Container in GCP
Secret Management
Deploy a load balancer
Add TLS

## Why IAC
Reduced the system management overhead for infrastructure developers to manage infrastructure with api's while keeping a repository of changes commited

Repave Infrastructure
A mechanism to repave environments with agility and repeatable service and application blueprints

Cloud Enablement
Agile and repeatable service enablement to better scale the business and onboard new workloads with end to end blueprints


###  Demonstrated Skills
# Local Development
Created DockerFile
In the Node.js application's GitHub repository, create a Dockerfile that defines how your Node.js application should be containerized
You are now ready to incorporate your terraform modules
Validated local development as shown below

# Development
Setup a terraform configuration that will deploy our nodejs container to the Artifact Registry
Set Up Terraform for GKE Service
Create a Terraform configuration (e.g., main.tf) to define your GKE cluster, node pool, and any other required resources. We makes sure to set up authentication and specify the Docker image you want to deploy.
To get started, we create a terraform directory to ring fence our files for terraform
Created a gke.tf file to hold the core deployment details
Created a variables.tf file with our target variables for the project, region and image and setup defaults
Created terraform.tfvars file with our target key value pairs to match the variables defined in the main file
Setup the Cloud Build configuration file (cloudbuild.yaml) to automate the container build process of the docker and shipped it to googles artifact repository. 
Setup a load balancer code in the gke.tf 

# Test then Deployment
Trigger Plan and Apply Deployment 
Validated deployment via
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply

### Q. Captured alot of draft notes: ping me on slack il if you find clarifications needed

### Q. So what skills should I have?
- Public cloud: AWS, GCP, Azure.
  - More than one cloud is a "good to have" but one is a "must have".
- General cloud concepts, especially networking.
- Containerization, such as: Docker, containerd, kubernetes
- IaC (Infrastructure as code). At least some Terraform preferred.
- Linux (or other POSIX OS).
- VCS (Version Control System). Git is highly preferred. 
- TLS is a plus.

### Q. What do I have to do?
You may do all or some of the following tasks. Please read over the complete list before starting.

1. If you know how to use git, start a git repository (local-only is acceptable) and commit all of your work to it.
1. Use Infrastructure as Code (IaC) to the deploy the code as specified below.
   - Terraform is ideal, but use whatever you know, e.g. CloudFormation, CDK, Deployment Manager, etc.
1. Deploy the app in a container in any public cloud using the services you think best solve this problem.
   - Use `node` as the base image. Version `node:10` or later should work.
1. Navigate to the index page to obtain the SECRET_WORD.
1. Inject an environment variable (`SECRET_WORD`) in the Docker container using the value on the index page.
1. Deploy a load balancer in front of the app.
1. Add TLS (https). You may use locally-generated certs.

### Q. How do I know I have solved these stages?
Each stage can be tested as follows (where `<ip_or_host>` is the location where the app is deployed):

1. Public cloud & index page (contains the secret word) - `http(s)://<ip_or_host>[:port]/`
1. Docker check - `http(s)://<ip_or_host>[:port]/docker`
1. Secret Word check - `http(s)://<ip_or_host>[:port]/secret_word`
1. Load Balancer check  - `http(s)://<ip_or_host>[:port]/loadbalanced`
1. TLS check - `http(s)://<ip_or_host>[:port]/tls`

### Q. Do I have to do all these?
You may do whichever, and however many, of the tasks above as you'd like. We suspect that once you start, you won't be able to stop. It's addictive. Extra credit if you are able to submit working entries for more than one cloud provider.

### Q. What do I have to submit?
1. Your work assets, as one or both of the following:
   - A link to a hosted git repository.
   - A compressed file containing your project directory (zip, tgz, etc). Include the `.git` sub-directory if you used git.
1. Proof of completion, as one or both of the following:
   - Link(s) to hosted public cloud deployment(s).
   - One or more screenshots showing, at least, the index page of the final deployment in one or more public cloud(s) you have chosen.
1. An answer to the prompt: "Given more time, I would improve..."
   - Discuss any shortcomings/immaturities in your solution and the reasons behind them (lack of time is a perfectly fine reason!)
   - **This may carry as much weight as the code itself**

Your work assets should include:

- IaC files, if you completed that task.
- One or more Dockerfiles, if you completed that task.
- A sensible README or other file(s) that contain instructions, notes, or other written documentation to help us review and assess your submission.
  - **Note** - the more this looks like a finished solution to deliver to a customer, the better.

### Q. How long do I need to host my submission on public cloud(s)?
You don't have to at all if you don't want to. You can run it in public cloud(s), grab a screenshot, then tear it all down to avoid costs.

If you _want_ to host it longer for us to view it, we recommend taking a screenshot anyway and sending that along with the link. Then you can tear down the quest whenever you want and we'll still have the screenshot. We recommend waiting no longer than one week after sending us the link before tearing it down.

### Q. What if I successfully complete all the challenges?
We have many more for you to solve as a member of the Rearc team!

### Q. What if I find a bug?
Awesome! Tell us you found a bug along with your submission and we'll talk more!

### Q. What if I fail?
There is no fail. Complete whatever you can and then submit your work. Doing _everything_ in the quest is not a guarantee that you will "pass" the quest, just like not doing something is not a guarantee you will "fail" the quest.

### Q. Can I share this quest with others?
No. After interviewing, please change any solutions shared publicly to be private.

### Q. Do I have to spend money out of my own pocket to complete the quest?
No. There are many possible solutions to this quest that would be zero cost to you when using [AWS](https://aws.amazon.com/free), [GCP](https://cloud.google.com/free), or [Azure](https://azure.microsoft.com/en-us/pricing/free-services).

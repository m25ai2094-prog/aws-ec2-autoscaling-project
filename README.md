AWS EC2 Auto Scaling and Security Implementation


Objective

The objective of this project is to launch an EC2 instance on AWS and implement Auto Scaling based on CPU utilization while ensuring security through IAM roles and Security Groups.


Services Used - For this project, we have used the following AWS services:
- Amazon EC2
- Auto Scaling Groups
- Launch Templates
- CloudWatch
- IAM
- Security Groups

Architecture Diagram

Implementation Steps
1. Launch Template
   - Amazon Linux 2023
   - t3.micro
   - Key pair authentication
   - Security Group configured
2. Auto Scaling Configuration
   - Minimum instances: 1
   - Maximum instances: 2
   - Target tracking scaling policy
   - CPU threshold: 60%
3. Security Implementation
   - Port 22 allowed for SSH
   - Port 8000 allowed for web server
   - IAM Role attached to EC2

Load Testing
   - CPU load generated using: yes > /dev/null &
   - When CPU is increased: Auto Scaling launched a new EC2 instance.
   - When load is stopped: pkill yes (Auto Scaling reduced capacity).

Screenshots:
- EC2 Instance
- Auto Scaling Activity
- CPU Monitoring
- Security Group
- IAM Role
- Web Server Output

Conclusion: This system dynamically scales the EC2 instances based on CPU utilization while ensuring security through IAM roles and Security Groups.

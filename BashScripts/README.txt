############ 
# Creating a Secure Static WebAppliction.
# DevOps Project
# Chaitanya Bingu
###########

1.I've created a new role in IAM (S3-Admin-Access) and attached AmazonS3FullAccess policy to it effectively allowing Full Access to S3 bucket

2. Create a new bucket in S3 called "bootstrapdevops" and upload index.html (static page to be displayed). While Launching EC2 instances, AWS will simply copy the static webpage from S3 and place it into the html directory of httpd.

3. For the scope of this project, I'm launching 2 EC2 instances named "WebServer1", "WebServer2" (Amazon Linux AMI, t2micro, SSD Micro). Public Facing website so security group "DevOpsProject" created with Inbound Rule of http:80 from everywhere and ssh:22 from my personal computer. The Instances were launched with the bootstrap script that installs httpd and copies the index.html onto /var/www/html directory. Please refer to bootstrap.sh for code.

4.The static webpage will now be accessible by entering the DNS Name of the EC2 instances on any webbroswer. 

5. In order to load balance the traffic to the site, I created a LoadBalancer "MyWebLoadBalancer". This will be responsible for diverting the traffic accordingly. 
  a. created a file healthcheck.html that LoadBalancer refers to check the health of the EC2 server.
  b. Placed the healthckheck.htm on each EC2 Server under /var/www/html directory.
  c. LoadBalancer does healthcheck every 10 seconds and after 3 unsuccesful checks removes the EC2 instance from serving the clients,   thereby downtime of the website will only be 30s. 

6. Url of the LoadBalncer serving the index.html is: http://mywebloadbalancer-1148273380.us-west-2.elb.amazonaws.com/

# Since I don't have a domain hosted, i'm listing the steps that I would follow in order to set up an Alias Record to divert traffic to # the Load Balancer 
7. for real world scenario, you need to add the LoadBalancer to the website that services these static pages
   a. If Hosted Zone already exists, create a record set to tell AmazonS3 to route to LoadBalancer to service the static page content.
   b. Click 'Create Record Set' and set 'Alias' to 'Yes'.
   c. select 'Alias Target' as the LoadBalancer (http://mywebloadbalancer-1148273380.us-west-2.elb.amazonaws.com/)
   d. Select 'Routing Policy' as 'Weighted'.
   e. click 'Create'.
   f. Assuming HostedZone is www.testdevops.com, this will now redirect to LoadBalancer and serve the static web page, Hello World.

#########
# Redirecting http traffic to https.
# Only using AWS tools.
# Assuming hostname is www.testdevops.com, goal is to redirect to https://www.tesdevops.com
#########

1. Create a S3 bucket with name www.testdevops.com 
2. static website hosting -> Enable Website Hosting.
3. Enter a sample name for index document, index.html
4. Edit Redirection Rules. Please refer to RoutingRules in GIT repo.
5. Redirect Bucket End Point is : www.testdevops.com.s3-website-us-west-2.amazonaws.com

## Adding CNAME on Route 53.
1. Go to Route53, hosted zone.
2. click 'Create Record Set' -> Type, 'CNAME = Canonical Name'
3. Name field will be www.testdevops.com (bucket name that was created)
4. Value will be bucket End Point: www.testdevops.com.s3-website-us-west-2.amazonaws.com
5. Create Record Set.

Once Finished, www.testdevops.com will be routed to https://www.testdevops.com. This way all http traffic is redirected to https.






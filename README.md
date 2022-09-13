# challenges
**Challenge1:** I have used Terraform (IaC) to create a sample 3 tier architecture.

**Challenge2:** I have prepared a shell script to query the meta data of an instance within aws.
           Below is the process to execute the shell script on scenario basis:
           
           scenario 1 : $ sh  challenge2.sh    
           (It will return instance metadeta in json format)

           scenario 2 : $ sh  challenge2.sh  <metadata key>
           (It will return repective value of the given <metadata key>)    
                e.g. :
                $ sh challenge2.sh  region
                $ eu-west-2

**Challenge3** - I have prepared a python script in order to get key value in a nested object function.
                
                python.exe challenge3.py

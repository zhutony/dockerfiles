# pinterb/jq  

[`pinterb/jq`][1] is a [docker][2] image that bundles the following:  
* **[jq][3]:** jq is like sed for JSON data.  

## Usage  
````
curl 'https://api.github.com/repos/stedolan/jq/commits' | docker run -i pinterb/jq:0.0.16 '.'  
    
````

## Misc. Info 
* Latest version: 0.0.16   
* Built on: 2016-11-28T15:42:49Z   
* Base image: pinterb/base:alpine   


[1]: https://hub.docker.com/r/pinterb/jq/   
[2]: https://docker.com 
[3]: https://stedolan.github.io/jq/

# Nginx-Log-Analyser

A shell script to analyze Nginx log files and provide top X stats for different fields

Built as a [DevOps learning project](https://roadmap.sh/projects/nginx-log-analyser) on [roadmap.sh](https://roadmap.sh)

## Features

- Top 5 IP addresses with the most requests
- Top 5 most requested paths
- Top 5 response status codes
- Top 5 user agents

## Requirements

- Bash
- [Log File](./nginx-access.log)

## Installation
```bash
git clone https://github.com/architxkumar/Nginx-Log-Analyser
cd Nginx-Log-Analyser
chmod u+x ./log-analyzer.sh
 ```

## Usage
```bash
./log-analyzer.sh
```
### Demonstration
Here is an example of what the output should look like:
```text
Top 5 IP addresses with the most requests:
45.76.135.253 - 1000 requests
142.93.143.8 - 600 requests
178.128.94.113 - 50 requests
43.224.43.187 - 30 requests
178.128.94.113 - 20 requests

Top 5 most requested paths:
/api/v1/users - 1000 requests
/api/v1/products - 600 requests
/api/v1/orders - 50 requests
/api/v1/payments - 30 requests
/api/v1/reviews - 20 requests

Top 5 response status codes:
200 - 1000 requests
404 - 600 requests
500 - 50 requests
401 - 30 requests
304 - 20 requests
```

## License
This project is licensed under the [MIT License](./LICENSE)
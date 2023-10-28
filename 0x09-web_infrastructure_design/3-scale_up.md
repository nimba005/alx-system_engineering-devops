## [Image](https://imgur.com/5O6xAYX)
## For every additional element:
* We add one server and one balancer
* Adding the server allow us to separate each component(web server, Application server, Database MYSQL) in their own server and having one server with all components to serve as a backup if any of the components or server fails.
* Each server is being monitored by firewall.
* We add extra load balancer that will assist in handling more traffic across the whole infrastructure.

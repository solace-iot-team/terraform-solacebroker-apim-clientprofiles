# terraform-solacebroker-apim-clientprofiles
variables.tf
API Management support in the Solace Platform requires the presence of a set of Client Profiles on all Solace brokers that Event API Products are asociated with.

main.tf applies 6 predefined Client Porfiles to a target broker. 

Broker URL, SEMP admin credentials and message vpn name must be suplied using as variables:
* `url`: base URL, e.g. `http://localhost:8080`
* `username`: Broker Admin User, e.g. `admin`
* `password`: Broker Admin Password, e.g. `admin`
* `msg_vpn_name`: Message VPN Name, e.g. `default`

This page documents the usage of these client profiles: 
https://api.solace.dev/cloud/reference/apim-under-the-hood-application-configuration-on-brokers#client-profile-selection

# Copyright 2025 Solace Corporation. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# Configure the provider
provider "solacebroker" {
  # Event broker management user credentials
  username = var.username
  password = var.password
  # The base URL of the PubSub+ event broker,
  #  for example https://mybroker.example.org:<semp-service-port>
  url      = var.url
}

resource "solacebroker_msg_vpn_client_profile" "APIM-ReceiveCreateEndpGM" {
  msg_vpn_name                             = var.msg_vpn_name
  client_profile_name                      = "APIM-ReceiveCreateEndpGM"
  allow_guaranteed_endpoint_create_enabled = true
  allow_guaranteed_msg_send_enabled        = false
  allow_guaranteed_msg_receive_enabled     = true
  allow_transacted_sessions_enabled        = true
  compression_enabled                      = true
}

resource "solacebroker_msg_vpn_client_profile" "APIM-ReceiveOnlyGM" {
  msg_vpn_name                             = var.msg_vpn_name
  client_profile_name                      = "APIM-ReceiveOnlyGM"
  allow_guaranteed_endpoint_create_enabled = false
  allow_guaranteed_msg_send_enabled        = false
  allow_guaranteed_msg_receive_enabled     = true
  allow_transacted_sessions_enabled        = true
  compression_enabled                      = true
}

resource "solacebroker_msg_vpn_client_profile" "APIM-ReceiveSendCreateEndpGM" {
  msg_vpn_name                             = var.msg_vpn_name
  client_profile_name                      = "APIM-ReceiveSendCreateEndpGM"
  allow_guaranteed_endpoint_create_enabled = true
  allow_guaranteed_msg_send_enabled        = true
  allow_guaranteed_msg_receive_enabled     = true
  allow_transacted_sessions_enabled        = true
  compression_enabled                      = true
}

resource "solacebroker_msg_vpn_client_profile" "APIM-ReceiveSendGM" {
  msg_vpn_name                             = var.msg_vpn_name
  client_profile_name                      = "APIM-ReceiveSendGM"
  allow_guaranteed_endpoint_create_enabled = false
  allow_guaranteed_msg_send_enabled        = true
  allow_guaranteed_msg_receive_enabled     = true
  allow_transacted_sessions_enabled        = true
  compression_enabled                      = true
}

resource "solacebroker_msg_vpn_client_profile" "APIM-SendOnlyGM" {
  msg_vpn_name                             = var.msg_vpn_name
  client_profile_name                      = "APIM-SendOnlyGM"
  allow_guaranteed_endpoint_create_enabled = false
  allow_guaranteed_msg_send_enabled        = true
  allow_guaranteed_msg_receive_enabled     = false
  allow_transacted_sessions_enabled        = true
  compression_enabled                      = true
}

resource "solacebroker_msg_vpn_client_profile" "APIM-NoGM" {
  msg_vpn_name                             = var.msg_vpn_name
  client_profile_name                      = "APIM-NoGM"
  allow_guaranteed_endpoint_create_enabled = false
  allow_guaranteed_msg_send_enabled        = false
  allow_guaranteed_msg_receive_enabled     = false
  allow_transacted_sessions_enabled        = true
  compression_enabled                      = true
}




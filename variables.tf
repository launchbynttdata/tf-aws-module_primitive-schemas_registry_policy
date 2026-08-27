// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

variable "registry_name" {
  description = "Name of the schema registry to attach the resource policy to."
  type        = string
}

variable "policy" {
  description = "JSON resource-based policy document for the schema registry."
  type        = string

  validation {
    condition     = can(jsondecode(var.policy))
    error_message = "Policy must be valid JSON."
  }
}

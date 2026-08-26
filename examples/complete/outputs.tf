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

output "id" {
  description = "ID of the registry policy."
  value       = module.schemas_registry_policy.id
}

output "registry_name" {
  description = "Name of the schema registry that owns the policy."
  value       = module.schemas_registry_policy.registry_name
}

output "policy" {
  description = "JSON policy document attached to the schema registry."
  value       = module.schemas_registry_policy.policy
}

output "registry_arn" {
  description = "ARN of the schema registry used by the example."
  value       = aws_schemas_registry.this.arn
}

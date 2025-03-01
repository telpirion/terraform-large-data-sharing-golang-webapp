/**
 * Copyright 2023 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "project_id" {
  description = "GCP project ID."
  type        = string
}

variable "init" {
  type        = bool
  description = "Initialize resource or not"
}

variable "collection_fields" {
  description = "collection id with respect to its fields"
  type        = map(any)
  default = {
    "fileMeta" = [
      {
        field_path   = "tags"
        array_config = "CONTAINS"
      },
      {
        field_path = "orderNo"
        order      = "DESCENDING"
      },
    ]
  }
}

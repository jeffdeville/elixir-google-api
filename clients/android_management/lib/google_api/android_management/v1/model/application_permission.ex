# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.AndroidManagement.V1.Model.ApplicationPermission do
  @moduledoc """
  Application permission.

  ## Attributes

  - description (String): A longer description of the permission, giving more details of what it affects. Localized. Defaults to: `null`.
  - name (String): The name of the permission. Localized. Defaults to: `null`.
  - permissionId (String): An opaque string uniquely identifying the permission. Not localized. Defaults to: `null`.
  """

  defstruct [
    :"description",
    :"name",
    :"permissionId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.ApplicationPermission do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.ApplicationPermission do
  def encode(value, options) do
    GoogleApi.AndroidManagement.V1.Deserializer.serialize_non_nil(value, options)
  end
end


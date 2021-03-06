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

defmodule GoogleApi.Content.V2.Model.AccountstatusesCustomBatchResponseEntry do
  @moduledoc """
  A batch entry encoding a single non-batch accountstatuses response.

  ## Attributes

  - accountStatus (AccountStatus): The requested account status. Defined if and only if the request was successful. Defaults to: `null`.
  - batchId (Integer): The ID of the request entry this entry responds to. Defaults to: `null`.
  - errors (Errors): A list of errors defined if and only if the request failed. Defaults to: `null`.
  """

  defstruct [
    :"accountStatus",
    :"batchId",
    :"errors"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.AccountstatusesCustomBatchResponseEntry do
  import GoogleApi.Content.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"accountStatus", :struct, GoogleApi.Content.V2.Model.AccountStatus, options)
    |> deserialize(:"errors", :struct, GoogleApi.Content.V2.Model.Errors, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.AccountstatusesCustomBatchResponseEntry do
  def encode(value, options) do
    GoogleApi.Content.V2.Deserializer.serialize_non_nil(value, options)
  end
end


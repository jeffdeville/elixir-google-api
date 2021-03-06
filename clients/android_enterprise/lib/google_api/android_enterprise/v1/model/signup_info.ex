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

defmodule GoogleApi.AndroidEnterprise.V1.Model.SignupInfo do
  @moduledoc """
  A resource returned by the GenerateSignupUrl API, which contains the Signup URL and Completion Token.

  ## Attributes

  - completionToken (String): An opaque token that will be required, along with the Enterprise Token, for obtaining the enterprise resource from CompleteSignup. Defaults to: `null`.
  - kind (String): Identifies what kind of resource this is. Value: the fixed string \&quot;androidenterprise#signupInfo\&quot;. Defaults to: `null`.
  - url (String): A URL under which the Admin can sign up for an enterprise. The page pointed to cannot be rendered in an iframe. Defaults to: `null`.
  """

  defstruct [
    :"completionToken",
    :"kind",
    :"url"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.SignupInfo do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.SignupInfo do
  def encode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Deserializer.serialize_non_nil(value, options)
  end
end


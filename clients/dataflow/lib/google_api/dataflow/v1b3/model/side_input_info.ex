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

defmodule GoogleApi.Dataflow.V1b3.Model.SideInputInfo do
  @moduledoc """
  Information about a side input of a DoFn or an input of a SeqDoFn.

  ## Attributes

  - kind (Object): How to interpret the source element(s) as a side input value. Defaults to: `null`.
  - sources (List[Source]): The source(s) to read element(s) from to get the value of this side input. If more than one source, then the elements are taken from the sources, in the specified order if order matters. At least one source is required. Defaults to: `null`.
  - tag (String): The id of the tag the user code will access this side input by; this should correspond to the tag of some MultiOutputInfo. Defaults to: `null`.
  """

  defstruct [
    :"kind",
    :"sources",
    :"tag"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.SideInputInfo do
  import GoogleApi.Dataflow.V1b3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"kind", :struct, GoogleApi.Dataflow.V1b3.Model.Object, options)
    |> deserialize(:"sources", :list, GoogleApi.Dataflow.V1b3.Model.Source, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.SideInputInfo do
  def encode(value, options) do
    GoogleApi.Dataflow.V1b3.Deserializer.serialize_non_nil(value, options)
  end
end


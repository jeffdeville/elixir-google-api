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

defmodule GoogleApi.StorageTransfer.V1.Api.TransferJobs do
  @moduledoc """
  API calls for all endpoints tagged `TransferJobs`.
  """

  alias GoogleApi.StorageTransfer.V1.Connection
  import GoogleApi.StorageTransfer.V1.RequestBuilder


  @doc """
  Creates a transfer job that runs periodically.

  ## Parameters

  - connection (GoogleApi.StorageTransfer.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :alt (String): Data format for response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String): OAuth access token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :bearer_token (String): OAuth bearer token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :body (TransferJob): 

  ## Returns

  {:ok, %GoogleApi.StorageTransfer.V1.Model.TransferJob{}} on success
  {:error, info} on failure
  """
  @spec storagetransfer_transfer_jobs_create(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.StorageTransfer.V1.Model.TransferJob.t} | {:error, Tesla.Env.t}
  def storagetransfer_transfer_jobs_create(connection, opts \\ []) do
    optional_params = %{
      :"upload_protocol" => :query,
      :"prettyPrint" => :query,
      :"uploadType" => :query,
      :"fields" => :query,
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"alt" => :query,
      :"key" => :query,
      :"access_token" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"bearer_token" => :query,
      :"oauth_token" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/v1/transferJobs")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.StorageTransfer.V1.Model.TransferJob{})
  end

  @doc """
  Gets a transfer job.

  ## Parameters

  - connection (GoogleApi.StorageTransfer.V1.Connection): Connection to server
  - job_name (String): The job to get. Required.
  - opts (KeywordList): [optional] Optional parameters
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :alt (String): Data format for response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String): OAuth access token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :bearer_token (String): OAuth bearer token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :project_id (String): The ID of the Google Cloud Platform Console project that owns the job. Required.

  ## Returns

  {:ok, %GoogleApi.StorageTransfer.V1.Model.TransferJob{}} on success
  {:error, info} on failure
  """
  @spec storagetransfer_transfer_jobs_get(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.StorageTransfer.V1.Model.TransferJob.t} | {:error, Tesla.Env.t}
  def storagetransfer_transfer_jobs_get(connection, job_name, opts \\ []) do
    optional_params = %{
      :"upload_protocol" => :query,
      :"prettyPrint" => :query,
      :"uploadType" => :query,
      :"fields" => :query,
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"alt" => :query,
      :"key" => :query,
      :"access_token" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"bearer_token" => :query,
      :"oauth_token" => :query,
      :"projectId" => :query
    }
    %{}
    |> method(:get)
    |> url("/v1/{+jobName}", %{
         "jobName" => URI.encode_www_form(job_name)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.StorageTransfer.V1.Model.TransferJob{})
  end

  @doc """
  Lists transfer jobs.

  ## Parameters

  - connection (GoogleApi.StorageTransfer.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :alt (String): Data format for response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String): OAuth access token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :bearer_token (String): OAuth bearer token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :page_token (String): The list page token.
    - :page_size (Integer): The list page size. The max allowed value is 256.
    - :filter (String): A list of query parameters specified as JSON text in the form of {\&quot;project_id\&quot;:\&quot;my_project_id\&quot;, \&quot;job_names\&quot;:[\&quot;jobid1\&quot;,\&quot;jobid2\&quot;,...], \&quot;job_statuses\&quot;:[\&quot;status1\&quot;,\&quot;status2\&quot;,...]}. Since &#x60;job_names&#x60; and &#x60;job_statuses&#x60; support multiple values, their values must be specified with array notation. &#x60;project_id&#x60; is required. &#x60;job_names&#x60; and &#x60;job_statuses&#x60; are optional.  The valid values for &#x60;job_statuses&#x60; are case-insensitive: &#x60;ENABLED&#x60;, &#x60;DISABLED&#x60;, and &#x60;DELETED&#x60;.

  ## Returns

  {:ok, %GoogleApi.StorageTransfer.V1.Model.ListTransferJobsResponse{}} on success
  {:error, info} on failure
  """
  @spec storagetransfer_transfer_jobs_list(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.StorageTransfer.V1.Model.ListTransferJobsResponse.t} | {:error, Tesla.Env.t}
  def storagetransfer_transfer_jobs_list(connection, opts \\ []) do
    optional_params = %{
      :"upload_protocol" => :query,
      :"prettyPrint" => :query,
      :"uploadType" => :query,
      :"fields" => :query,
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"alt" => :query,
      :"key" => :query,
      :"access_token" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"bearer_token" => :query,
      :"oauth_token" => :query,
      :"pageToken" => :query,
      :"pageSize" => :query,
      :"filter" => :query
    }
    %{}
    |> method(:get)
    |> url("/v1/transferJobs")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.StorageTransfer.V1.Model.ListTransferJobsResponse{})
  end

  @doc """
  Updates a transfer job. Updating a job&#39;s transfer spec does not affect transfer operations that are running already. Updating the scheduling of a job is not allowed.

  ## Parameters

  - connection (GoogleApi.StorageTransfer.V1.Connection): Connection to server
  - job_name (String): The name of job to update. Required.
  - opts (KeywordList): [optional] Optional parameters
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :alt (String): Data format for response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String): OAuth access token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :bearer_token (String): OAuth bearer token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :body (UpdateTransferJobRequest): 

  ## Returns

  {:ok, %GoogleApi.StorageTransfer.V1.Model.TransferJob{}} on success
  {:error, info} on failure
  """
  @spec storagetransfer_transfer_jobs_patch(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.StorageTransfer.V1.Model.TransferJob.t} | {:error, Tesla.Env.t}
  def storagetransfer_transfer_jobs_patch(connection, job_name, opts \\ []) do
    optional_params = %{
      :"upload_protocol" => :query,
      :"prettyPrint" => :query,
      :"uploadType" => :query,
      :"fields" => :query,
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"alt" => :query,
      :"key" => :query,
      :"access_token" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"bearer_token" => :query,
      :"oauth_token" => :query,
      :"body" => :body
    }
    %{}
    |> method(:patch)
    |> url("/v1/{+jobName}", %{
         "jobName" => URI.encode_www_form(job_name)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.StorageTransfer.V1.Model.TransferJob{})
  end
end

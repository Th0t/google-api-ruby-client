# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module ArtifactregistryV1
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # DockerImage represents a docker artifact. The following fields are returned as
      # untyped metadata in the Version resource, using camelcase keys (i.e. metadata.
      # imageSizeBytes): - imageSizeBytes - mediaType - buildTime
      class DockerImage
        include Google::Apis::Core::Hashable
      
        # The time this image was built. This field is returned as the 'metadata.
        # buildTime' field in the Version resource. The build time is returned to the
        # client as an RFC 3339 string, which can be easily used with the JavaScript
        # Date constructor and keeps the Version timestamps returned via OnePlatform
        # consistent, as JSON marshals google.protobuf.Timestamp into an RFC 3339 string.
        # Corresponds to the JSON property `buildTime`
        # @return [String]
        attr_accessor :build_time
      
        # Calculated size of the image. This field is returned as the 'metadata.
        # imageSizeBytes' field in the Version resource.
        # Corresponds to the JSON property `imageSizeBytes`
        # @return [Fixnum]
        attr_accessor :image_size_bytes
      
        # Media type of this image, e.g. "application/vnd.docker.distribution.manifest.
        # v2+json". This field is returned as the 'metadata.mediaType' field in the
        # Version resource.
        # Corresponds to the JSON property `mediaType`
        # @return [String]
        attr_accessor :media_type
      
        # Required. registry_location, project_id, repository_name and image id forms a
        # unique image name:`projects//locations//repository//dockerImages/`. For
        # example, "projects/test-project/locations/us-west4/repositories/test-repo/
        # dockerImages/ nginx@sha256:
        # e9954c1fc875017be1c3e36eca16be2d9e9bccc4bf072163515467d6a823c7cf", where "us-
        # west4" is the registry_location, "test-project" is the project_id, "test-repo"
        # is the repository_name and "nginx@sha256:
        # e9954c1fc875017be1c3e36eca16be2d9e9bccc4bf072163515467d6a823c7cf" is the image'
        # s digest.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Tags attached to this image.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # Time the image was uploaded.
        # Corresponds to the JSON property `uploadTime`
        # @return [String]
        attr_accessor :upload_time
      
        # Required. URL to access the image. Example: us-west4-docker.pkg.dev/test-
        # project/test-repo/nginx@sha256:
        # e9954c1fc875017be1c3e36eca16be2d9e9bccc4bf072163515467d6a823c7cf
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @build_time = args[:build_time] if args.key?(:build_time)
          @image_size_bytes = args[:image_size_bytes] if args.key?(:image_size_bytes)
          @media_type = args[:media_type] if args.key?(:media_type)
          @name = args[:name] if args.key?(:name)
          @tags = args[:tags] if args.key?(:tags)
          @upload_time = args[:upload_time] if args.key?(:upload_time)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response from listing docker images.
      class ListDockerImagesResponse
        include Google::Apis::Core::Hashable
      
        # The docker images returned.
        # Corresponds to the JSON property `dockerImages`
        # @return [Array<Google::Apis::ArtifactregistryV1::DockerImage>]
        attr_accessor :docker_images
      
        # The token to retrieve the next page of artifacts, or empty if there are no
        # more artifacts to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @docker_images = args[:docker_images] if args.key?(:docker_images)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::ArtifactregistryV1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # The response from listing repositories.
      class ListRepositoriesResponse
        include Google::Apis::Core::Hashable
      
        # The token to retrieve the next page of repositories, or empty if there are no
        # more repositories to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The repositories returned.
        # Corresponds to the JSON property `repositories`
        # @return [Array<Google::Apis::ArtifactregistryV1::Repository>]
        attr_accessor :repositories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @repositories = args[:repositories] if args.key?(:repositories)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::ArtifactregistryV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # A Repository for storing artifacts with a specific format.
      class Repository
        include Google::Apis::Core::Hashable
      
        # The time when the repository was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The user-provided description of the repository.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The format of packages that are stored in the repository.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # The Cloud KMS resource name of the customer managed encryption key that’s used
        # to encrypt the contents of the Repository. Has the form: `projects/my-project/
        # locations/my-region/keyRings/my-kr/cryptoKeys/my-key`. This value may not be
        # changed after the Repository has been created.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        # Labels with user-defined metadata. This field may contain up to 64 entries.
        # Label keys and values may be no longer than 63 characters. Label keys must
        # begin with a lowercase letter and may only contain lowercase letters, numeric
        # characters, underscores, and dashes.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The name of the repository, for example: "projects/p1/locations/us-central1/
        # repositories/repo1".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The time when the repository was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @format = args[:format] if args.key?(:format)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
    end
  end
end

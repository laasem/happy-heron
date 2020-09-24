# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: ignore
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/dor-services-client/all/dor-services-client.rbi
#
# dor-services-client-6.12.0

module Dor
end
module Dor::Services
end
class Dor::Services::Client
  def administrative_tags; end
  def background_job_results; end
  def build_connection(with_retries: nil); end
  def connection; end
  def connection=(arg0); end
  def enable_get_retries; end
  def enable_get_retries=(arg0); end
  def marcxml; end
  def object(object_identifier); end
  def objects; end
  def self.administrative_tags(**, &&); end
  def self.allocate; end
  def self.background_job_results(**, &&); end
  def self.configure(url:, token:, enable_get_retries: nil); end
  def self.marcxml(**, &&); end
  def self.new(*arg0); end
  def self.object(**, &&); end
  def self.objects(**, &&); end
  def self.virtual_objects(**, &&); end
  def token; end
  def token=(arg0); end
  def url; end
  def url=(arg0); end
  def user_agent; end
  def virtual_objects; end
  extend Singleton::SingletonClassMethods
  include Singleton
end
class Dor::Services::Client::Error < StandardError
end
class Dor::Services::Client::NotFoundResponse < Dor::Services::Client::Error
end
class Dor::Services::Client::UnexpectedResponse < Dor::Services::Client::Error
end
class Dor::Services::Client::UnauthorizedResponse < Dor::Services::Client::UnexpectedResponse
end
class Dor::Services::Client::ConflictResponse < Dor::Services::Client::UnexpectedResponse
end
class Dor::Services::Client::MalformedResponse < Dor::Services::Client::Error
end
class Dor::Services::Client::ConnectionFailed < Dor::Services::Client::Error
end

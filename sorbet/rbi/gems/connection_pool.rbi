# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/connection_pool/all/connection_pool.rbi
#
# connection_pool-2.2.3

class ConnectionPool
  def available; end
  def checkin; end
  def checkout(options = nil); end
  def initialize(options = nil, &block); end
  def self.wrap(options, &block); end
  def shutdown(&block); end
  def size; end
  def with(options = nil); end
end
class ConnectionPool::TimedStack
  def <<(obj, options = nil); end
  def connection_stored?(options = nil); end
  def current_time; end
  def empty?; end
  def fetch_connection(options = nil); end
  def initialize(size = nil, &block); end
  def length; end
  def max; end
  def pop(timeout = nil, options = nil); end
  def push(obj, options = nil); end
  def shutdown(&block); end
  def shutdown_connections(options = nil); end
  def store_connection(obj, options = nil); end
  def try_create(options = nil); end
end
class ConnectionPool::Wrapper < BasicObject
  def initialize(options = nil, &block); end
  def method_missing(name, *args, &block); end
  def pool_available; end
  def pool_shutdown(&block); end
  def pool_size; end
  def respond_to?(id, *args); end
  def with(&block); end
  def wrapped_pool; end
end
class ConnectionPool::Error < RuntimeError
end
class ConnectionPool::PoolShuttingDownError < ConnectionPool::Error
end
class ConnectionPool::TimeoutError < Timeout::Error
end

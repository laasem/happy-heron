# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/sshkit/all/sshkit.rbi
#
# sshkit-1.21.0

class Array
end
class Hash
end
module SSHKit
  def self.config; end
  def self.config=(arg0); end
  def self.configure; end
  def self.reset_configuration!; end
end
class SSHKit::UnparsableHostStringError < SSHKit::StandardError
end
class SSHKit::Host
  def ==(other_host); end
  def eql?(other_host); end
  def equal?(other_host); end
  def first_suitable_parser(host); end
  def hash; end
  def hostname; end
  def hostname=(arg0); end
  def initialize(host_string_or_options_hash); end
  def key=(new_key); end
  def keys; end
  def keys=(new_keys); end
  def local?; end
  def netssh_options; end
  def password; end
  def password=(arg0); end
  def port; end
  def port=(arg0); end
  def properties; end
  def ssh_options; end
  def ssh_options=(arg0); end
  def to_s; end
  def user; end
  def user=(arg0); end
  def username; end
end
class SSHKit::SimpleHostParser
  def attributes; end
  def hostname; end
  def initialize(host_string); end
  def port; end
  def self.suitable?(host_string); end
  def username; end
end
class SSHKit::HostWithPortParser < SSHKit::SimpleHostParser
  def hostname; end
  def port; end
  def self.suitable?(host_string); end
end
class SSHKit::HostWithUsernameAndPortParser < SSHKit::SimpleHostParser
  def hostname; end
  def port; end
  def self.suitable?(host_string); end
  def username; end
end
class SSHKit::IPv6HostWithPortParser < SSHKit::SimpleHostParser
  def hostname; end
  def port; end
  def self.suitable?(host_string); end
end
class SSHKit::HostWithUsernameParser < SSHKit::SimpleHostParser
  def hostname; end
  def self.suitable?(host_string); end
  def username; end
end
class SSHKit::Color
  def colorize(obj, color, mode = nil); end
  def colorize?; end
  def initialize(output, env = nil); end
end
class SSHKit::Command
  def args; end
  def call_interaction_handler(stream_name, data, channel); end
  def command; end
  def complete?; end
  def default_options; end
  def environment_hash; end
  def environment_string; end
  def exit_status; end
  def exit_status=(new_exit_status); end
  def failed?; end
  def failure?; end
  def finished?; end
  def full_stderr; end
  def full_stdout; end
  def group(&_block); end
  def host; end
  def in_background(&_block); end
  def initialize(*args); end
  def log_reader_deprecation(stream); end
  def log_writer_deprecation(stream); end
  def on_stderr(channel, data); end
  def on_stdout(channel, data); end
  def options; end
  def runtime; end
  def sanitize_command(cmd); end
  def self.shellescape_except_tilde(file); end
  def should_map?; end
  def started; end
  def started=(new_started); end
  def started?; end
  def started_at; end
  def stderr; end
  def stderr=(new_value); end
  def stdout; end
  def stdout=(new_value); end
  def success?; end
  def successful?; end
  def to_command; end
  def to_hash; end
  def to_s; end
  def umask(&_block); end
  def user(&_block); end
  def uuid; end
  def verbosity; end
  def with(&_block); end
  def with_redaction; end
  def within(&_block); end
end
class SSHKit::Command::Failed < SSHKit::StandardError
end
class SSHKit::CommandMap
  def [](command); end
  def []=(command, new_command); end
  def clear; end
  def defaults; end
  def initialize(value = nil); end
  def prefix; end
end
class SSHKit::CommandMap::CommandHash
  def [](key); end
  def []=(key, value); end
  def initialize(defaults = nil); end
  def normalize_key(key); end
end
class SSHKit::CommandMap::PrefixProvider
  def [](command); end
  def initialize; end
end
class SSHKit::Configuration
  def backend; end
  def backend=(arg0); end
  def command_map; end
  def command_map=(value); end
  def default_env; end
  def default_env=(arg0); end
  def default_runner; end
  def default_runner=(arg0); end
  def default_runner_config; end
  def default_runner_config=(config_hash); end
  def deprecation_logger; end
  def deprecation_output=(out); end
  def format=(format); end
  def formatter_class(symbol); end
  def logger(verbosity); end
  def output; end
  def output=(arg0); end
  def output_verbosity; end
  def output_verbosity=(verbosity); end
  def umask; end
  def umask=(arg0); end
  def use_format(formatter, *args); end
end
class SSHKit::Coordinator
  def default_options; end
  def each(options = nil, &block); end
  def hosts; end
  def hosts=(arg0); end
  def initialize(raw_hosts); end
  def resolve_hosts; end
end
class SSHKit::DeprecationLogger
  def initialize(out); end
  def log(message); end
end
module SSHKit::DSL
  def on(hosts, options = nil, &block); end
  def run_locally(&block); end
end
module SSHKit::Runner
end
class SSHKit::Runner::ExecuteError < SSHKit::StandardError
  def cause; end
  def initialize(cause); end
end
class SSHKit::Logger
end
class SSHKit::LogMessage
  def initialize(verbosity, message); end
  def message; end
  def to_s; end
  def verbosity; end
end
class SSHKit::MappingInteractionHandler
  def initialize(mapping, log_level = nil); end
  def log(message); end
  def on_data(_command, stream_name, data, channel); end
end
module SSHKit::Formatter
end
class SSHKit::Formatter::Abstract
  def <<(obj); end
  def colorize(*args, &block); end
  def debug(message); end
  def error(message); end
  def fatal(message); end
  def info(message); end
  def initialize(output, options = nil); end
  def log(message); end
  def log_command_data(command, _stream_type, _stream_data); end
  def log_command_exit(command); end
  def log_command_start(command); end
  def options; end
  def original_output; end
  def read(*args, &block); end
  def rewind(*args, &block); end
  def warn(message); end
  def write(_obj); end
  extend Forwardable
end
class SSHKit::Formatter::BlackHole < SSHKit::Formatter::Abstract
  def write(_obj); end
end
class SSHKit::Formatter::Pretty < SSHKit::Formatter::Abstract
  def format_message(verbosity, message, uuid = nil); end
  def log_command_data(command, stream_type, stream_data); end
  def log_command_exit(command); end
  def log_command_start(command); end
  def write(obj); end
  def write_message(verbosity, message, uuid = nil); end
end
class SSHKit::Formatter::SimpleText < SSHKit::Formatter::Pretty
  def colorize(obj, _color, _mode = nil); end
  def format_message(_verbosity, message, _uuid = nil); end
end
class SSHKit::Formatter::Dot < SSHKit::Formatter::Abstract
  def log_command_exit(command); end
  def write(_obj); end
end
class SSHKit::Runner::Abstract
  def backend(host, &block); end
  def block; end
  def hosts; end
  def initialize(hosts, options = nil, &block); end
  def options; end
end
class SSHKit::Runner::Sequential < SSHKit::Runner::Abstract
  def execute; end
  def initialize(hosts, options = nil, &block); end
  def run_backend(host, &block); end
  def wait_interval; end
  def wait_interval=(arg0); end
end
class SSHKit::Runner::Parallel < SSHKit::Runner::Abstract
  def execute; end
end
class SSHKit::Runner::Group < SSHKit::Runner::Sequential
  def execute; end
  def group_size; end
  def group_size=(arg0); end
  def initialize(hosts, options = nil, &block); end
end
class SSHKit::Runner::Null < SSHKit::Runner::Abstract
  def execute; end
end
module SSHKit::Backend
  def self.current; end
end
class SSHKit::Backend::MethodUnavailableError < SSHKit::StandardError
end
class SSHKit::Backend::Abstract
  def as(who, &_block); end
  def background(*args); end
  def capture(*args); end
  def command(args, options); end
  def create_command_and_execute(args, options); end
  def debug(*args, &block); end
  def download!(_remote, _local = nil, _options = nil); end
  def error(*args, &block); end
  def execute(*args); end
  def execute_command(_cmd); end
  def fatal(*args, &block); end
  def host; end
  def info(*args, &block); end
  def initialize(host, &block); end
  def log(*args, &block); end
  def make(commands = nil); end
  def output; end
  def pwd_path; end
  def rake(commands = nil); end
  def redact(arg); end
  def run; end
  def self.config; end
  def self.configure; end
  def test(*args); end
  def upload!(_local, _remote, _options = nil); end
  def warn(*args, &block); end
  def with(environment, &_block); end
  def within(directory, &_block); end
  extend Forwardable
end
class SSHKit::Backend::ConnectionPool::Cache
  def clear; end
  def closed?(conn); end
  def closer; end
  def connections; end
  def evict; end
  def fresh?(expires_at); end
  def idle_timeout; end
  def initialize(key, idle_timeout, closer); end
  def key; end
  def key=(arg0); end
  def pop; end
  def push(conn); end
  def same_key?(other_key); end
end
class SSHKit::Backend::ConnectionPool::NilCache < Struct
  def closer; end
  def closer=(_); end
  def pop; end
  def push(conn); end
  def same_key?(_key); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class Net::SSH::Proxy::Command
  def inspect; end
end
class SSHKit::Backend::ConnectionPool
  def cache_enabled?; end
  def cache_key_for_connection_args(args); end
  def caches; end
  def close_connections; end
  def find_cache(args); end
  def flush_connections; end
  def idle_timeout; end
  def idle_timeout=(arg0); end
  def initialize(idle_timeout = nil); end
  def process_deferred_close; end
  def run_eviction_loop; end
  def silently_close_connection(connection); end
  def silently_close_connection_later(connection); end
  def thread_safe_find_or_create_cache(key); end
  def timed_out_connections; end
  def update_key_if_args_changed(cache, args); end
  def with(connection_factory, *args); end
end
class SSHKit::Backend::Printer < SSHKit::Backend::Abstract
  def download!(*args); end
  def execute_command(cmd); end
  def test(*arg0); end
  def upload!(*args); end
end
module Net
end
module Net::SSH
end
class Net::SSH::Config
end
class SSHKit::Backend::Netssh < SSHKit::Backend::Abstract
  def download!(remote, local = nil, options = nil); end
  def execute_command(cmd); end
  def self.config; end
  def self.configure; end
  def self.pool; end
  def self.pool=(arg0); end
  def transfer_summarizer(action, options = nil); end
  def upload!(local, remote, options = nil); end
  def with_ssh(&block); end
end
class SSHKit::Backend::Netssh::Configuration
  def assign_defaults; end
  def connection_timeout; end
  def connection_timeout=(arg0); end
  def default_options; end
  def pty; end
  def pty=(arg0); end
  def ssh_options; end
  def ssh_options=(arg0); end
end
class SSHKit::Backend::Netssh::KnownHostsKeys
  def empty_line?(scanner); end
  def hosts_hashes; end
  def hosts_hashes=(arg0); end
  def hosts_keys; end
  def hosts_keys=(arg0); end
  def initialize(path); end
  def keys_for(hostlist); end
  def lock; end
  def locked?; end
  def parse_file; end
  def parse_host_hash(line); end
  def parse_hostlist(scanner); end
  def parse_key(scanner); end
  def parse_line(scanner, hosts_keys, hosts_hashes); end
  def path; end
  def sha1; end
  def supported_type?(scanner); end
  def synchronize(&block); end
  def try_lock; end
  def unlock; end
  include Mutex_m
end
class SSHKit::Backend::Netssh::KnownHosts
  def add(*args); end
  def initialize; end
  def known_hosts_file(path); end
  def lock; end
  def locked?; end
  def search_for(host, options = nil); end
  def synchronize(&block); end
  def try_lock; end
  def unlock; end
  include Mutex_m
end
class SSHKit::Backend::Local < SSHKit::Backend::Abstract
  def download!(remote, local = nil, _options = nil); end
  def execute_command(cmd); end
  def initialize(_ = nil, &block); end
  def upload!(local, remote, options = nil); end
end
class SSHKit::Backend::Skipper < SSHKit::Backend::Abstract
  def debug(_messages); end
  def download!(*args); end
  def error(_messages); end
  def execute_command(cmd); end
  def fatal(_messages); end
  def info(_messages); end
  def initialize(&block); end
  def log(_messages); end
  def test(*args); end
  def upload!(*args); end
end
class SSHKit::StandardError < StandardError
end
module SSHKit::Redaction
end

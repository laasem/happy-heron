# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/honeybadger/all/honeybadger.rbi
#
# honeybadger-4.7.2

module Honeybadger
  def add_breadcrumb(*args, &block); end
  def backtrace_filter(*args, &block); end
  def breadcrumbs(*args, &block); end
  def check_in(*args, &block); end
  def clear!(*args, &block); end
  def config(*args, &block); end
  def configure(*args, &block); end
  def context(*args, &block); end
  def exception_filter(*args, &block); end
  def exception_fingerprint(*args, &block); end
  def flush(*args, &block); end
  def get_context(*args, &block); end
  def ignored_exception?(exception); end
  def init!(*args, &block); end
  def install_at_exit_callback; end
  def load_plugins!; end
  def notify(exception_or_opts, opts = nil); end
  def start(config = nil); end
  def stop(*args, &block); end
  def with_rack_env(*args, &block); end
  extend Forwardable
  extend Honeybadger
end
module Honeybadger::Rack
end
module Honeybadger::Plugins
end
module Honeybadger::Util
end
module Honeybadger::Logging
end
module Honeybadger::Logging::Helper
  def d(msg = nil); end
  def debug(msg = nil); end
  def error(msg = nil); end
  def info(msg = nil); end
  def logger; end
  def warn(msg = nil); end
end
class Honeybadger::Logging::Base
  def add(severity, msg); end
  def debug(msg); end
  def debug?; end
  def error(msg); end
  def error?; end
  def fatal(msg); end
  def fatal?; end
  def info(msg); end
  def info?; end
  def level; end
  def unknown(msg); end
  def unknown?; end
  def warn(msg); end
  def warn?; end
end
class Honeybadger::Logging::BootLogger < Honeybadger::Logging::Base
  def add(severity, msg); end
  def flush(logger); end
  def initialize; end
  def self.allocate; end
  def self.new(*arg0); end
  extend Singleton::SingletonClassMethods
  include Singleton
end
class Honeybadger::Logging::StandardLogger < Honeybadger::Logging::Base
  def add(severity, msg, progname = nil); end
  def debug?(*args, &block); end
  def error?(*args, &block); end
  def info?(*args, &block); end
  def initialize(logger = nil); end
  def level(*args, &block); end
  def warn?(*args, &block); end
  extend Forwardable
end
class Honeybadger::Logging::FormattedLogger < Honeybadger::Logging::StandardLogger
  def add(severity, msg, progname = nil); end
  def format_message(msg); end
end
class Honeybadger::Logging::ConfigLogger < Honeybadger::Logging::StandardLogger
  def add(severity, msg); end
  def caller_location; end
  def debug?; end
  def initialize(config, logger = nil); end
  def supplement(msg, severity); end
  def suppress_debug?; end
  def suppress_tty?(severity); end
end
module Honeybadger::Backend
  def self.for(backend); end
  def self.mapping; end
end
class Honeybadger::Backend::Response
  def body; end
  def code; end
  def error; end
  def error_message; end
  def initialize(*args); end
  def message; end
  def parse_error(body); end
  def success?; end
end
class Honeybadger::Backend::Base
  def check_in(id); end
  def config; end
  def initialize(config); end
  def notify(feature, payload); end
  extend Forwardable
  include Honeybadger::Logging::Helper
end
class Honeybadger::Util::HTTP
  def compress(string, level = nil); end
  def config; end
  def get(endpoint); end
  def http_connection; end
  def http_headers(headers = nil); end
  def initialize(config); end
  def post(endpoint, payload, headers = nil); end
  def setup_http_connection; end
  extend Forwardable
  include Honeybadger::Logging::Helper
end
class Honeybadger::Backend::Server < Honeybadger::Backend::Base
  def check_in(id); end
  def initialize(config); end
  def notify(feature, payload); end
  def payload_headers(payload); end
end
class Honeybadger::Backend::Null < Honeybadger::Backend::Base
  def check_in(id); end
  def initialize(*args); end
  def notify(feature, payload); end
end
class Honeybadger::Backend::Null::StubbedResponse < Honeybadger::Backend::Response
  def initialize; end
  def success?; end
end
class Honeybadger::Backend::Test < Honeybadger::Backend::Null
  def check_in(id); end
  def check_ins; end
  def notifications; end
  def notify(feature, payload); end
  def self.check_ins; end
  def self.notifications; end
end
class Honeybadger::Backend::Debug < Honeybadger::Backend::Null
  def check_in(id); end
  def notify(feature, payload); end
end
class Honeybadger::Backend::BackendError < StandardError
end
class Honeybadger::Util::SQL
  def self.force_utf_8(string); end
  def self.obfuscate(sql, adapter); end
end
module Honeybadger::Breadcrumbs
end
class Honeybadger::Breadcrumbs::ActiveSupport
  def self.active_record_connection_db_config; end
  def self.default_notifications; end
end
class Honeybadger::Config
  def [](key); end
  def []=(key, value); end
  def backend; end
  def backend=(backend); end
  def backtrace_filter(&block); end
  def before_notify_hooks; end
  def build_file_logger(path); end
  def build_logger; end
  def build_stdout_logger; end
  def ca_bundle_path; end
  def config_path; end
  def config_paths; end
  def configure; end
  def connection_port; end
  def connection_protocol; end
  def debug?; end
  def default_backend; end
  def detect_revision!; end
  def detected_framework; end
  def dev?; end
  def env; end
  def env=(arg0); end
  def exception_filter(&block); end
  def exception_fingerprint(&block); end
  def excluded_request_keys; end
  def framework; end
  def framework=(arg0); end
  def framework_name; end
  def get(key); end
  def ignored_classes; end
  def includes_token?(obj, value); end
  def init!(opts = nil, env = nil); end
  def init_backend!; end
  def init_logging!; end
  def initialize(opts = nil); end
  def load!(framework: nil, env: nil); end
  def load_config_from_disk; end
  def load_plugin?(name); end
  def local_cert_path; end
  def locate_absolute_path(path, root); end
  def log_debug?; end
  def log_level(key = nil); end
  def log_path; end
  def log_stdout?; end
  def logger; end
  def max_queue_size; end
  def params_filters; end
  def public?; end
  def root_regexp; end
  def ruby; end
  def ruby=(arg0); end
  def set(key, value); end
  def to_h(defaults = nil); end
  def to_hash(defaults = nil); end
  def undotify_keys(hash); end
  def warn_development?; end
  def yaml; end
  def yaml=(arg0); end
  extend Forwardable
  include Honeybadger::Logging::Helper
end
class Honeybadger::Config::Boolean
end
class Honeybadger::Util::Revision
  def self.detect(root = nil); end
  def self.from_capistrano(root); end
  def self.from_git; end
  def self.from_heroku; end
end
class Honeybadger::Config::ConfigError < StandardError
end
module Honeybadger::Conversions
  def Context(object); end
  def self.Context(object); end
end
class Honeybadger::ContextManager
  def _initialize; end
  def clear!; end
  def custom; end
  def custom=(arg0); end
  def get_context; end
  def get_rack_env; end
  def initialize; end
  def rack_env; end
  def rack_env=(arg0); end
  def self.current; end
  def set_context(hash); end
  def set_rack_env(env); end
  include Honeybadger::Conversions
end
class Honeybadger::Backtrace
  def ==(other); end
  def application_lines; end
  def application_lines=(arg0); end
  def as_json(options = nil); end
  def initialize(lines); end
  def inspect; end
  def lines; end
  def lines=(arg0); end
  def self.parse(ruby_backtrace, opts = nil); end
  def self.split_multiline_backtrace(backtrace); end
  def to_a; end
  def to_ary; end
  def to_json(*a); end
  def to_s; end
end
class Honeybadger::Backtrace::Line
  def ==(other); end
  def application?; end
  def file; end
  def file=(arg0); end
  def filtered_file; end
  def filtered_file=(arg0); end
  def filtered_method; end
  def filtered_method=(arg0); end
  def filtered_number; end
  def filtered_number=(arg0); end
  def get_source(file, number, radius = nil); end
  def initialize(file, number, method, filtered_file = nil, filtered_number = nil, filtered_method = nil, source_radius = nil); end
  def inspect; end
  def method; end
  def method=(arg0); end
  def number; end
  def number=(arg0); end
  def self.parse(unparsed_line, opts = nil); end
  def source; end
  def source_radius; end
  def source_radius=(arg0); end
  def to_s; end
end
class Honeybadger::Util::Stats
  def self.all; end
  def self.load; end
  def self.memory; end
  def self.run; end
  def self.run_loadavg; end
  def self.run_meminfo; end
end
class Honeybadger::Util::Sanitizer
  def basic_object?(object); end
  def blocks; end
  def can_dup?(obj); end
  def deep_regexps; end
  def filter_cookies(raw_cookies); end
  def filter_key?(key, parents = nil); end
  def filter_url(url); end
  def filters?; end
  def initialize(max_depth: nil, filters: nil); end
  def inspected?(string); end
  def max_depth; end
  def recursive?(data); end
  def regexps; end
  def sanitize(data, depth = nil, stack = nil, parents = nil); end
  def sanitize_string(string); end
  def self.sanitize(data); end
  def valid_encoding(string); end
  def valid_encoding?(string); end
end
module Honeybadger::Util::RequestHash
  def self.extract_cgi_data(request); end
  def self.extract_params(request); end
  def self.extract_session(request); end
  def self.extract_url(request); end
  def self.from_env(env); end
end
module Honeybadger::Util::RequestPayload
  def self.build(opts = nil); end
end
class Honeybadger::Notice
  def action; end
  def action=(arg0); end
  def api_key; end
  def api_key=(arg0); end
  def as_json(*args); end
  def backtrace; end
  def backtrace=(arg0); end
  def breadcrumbs; end
  def breadcrumbs=(arg0); end
  def cause; end
  def cause=(cause); end
  def causes; end
  def cgi_data; end
  def cgi_data=(arg0); end
  def component; end
  def component=(arg0); end
  def config; end
  def construct_backtrace_filters(opts); end
  def construct_context_hash(opts, exception); end
  def construct_request_hash; end
  def construct_tags(tags); end
  def context; end
  def context=(arg0); end
  def controller; end
  def controller=(arg0); end
  def details; end
  def details=(arg0); end
  def error_class; end
  def error_class=(arg0); end
  def error_message; end
  def error_message=(arg0); end
  def exception; end
  def exception_attribute(attribute, default = nil, &block); end
  def exception_cause(exception); end
  def exception_context(exception); end
  def fingerprint; end
  def fingerprint=(arg0); end
  def fingerprint_from_opts(opts); end
  def fingerprint_hash; end
  def from_exception(attribute); end
  def halt!; end
  def halted?; end
  def id; end
  def ignore?; end
  def ignore_by_callbacks?; end
  def ignore_by_class?(ignored_class = nil); end
  def ignore_by_origin?; end
  def initialize(config, opts = nil); end
  def local_variables; end
  def local_variables=(arg0); end
  def local_variables_from_exception(exception, config); end
  def now; end
  def opts; end
  def parameters; end
  def params; end
  def params=(arg0); end
  def params_filters; end
  def parse_backtrace(backtrace); end
  def pid; end
  def prepare_causes(causes); end
  def rack_env; end
  def rails_params_filters; end
  def request_hash; end
  def request_sanitizer; end
  def s(data); end
  def sanitized_breadcrumbs; end
  def send_local_variables?(config); end
  def session; end
  def session=(arg0); end
  def source; end
  def stats; end
  def tags; end
  def tags=(tags); end
  def to_json(*a); end
  def unwrap_causes(cause); end
  def unwrap_exception(exception); end
  def url; end
  def url=(arg0); end
  extend Forwardable
  include Honeybadger::Conversions
end
class Honeybadger::Notice::Cause
  def backtrace; end
  def backtrace=(arg0); end
  def error_class; end
  def error_class=(arg0); end
  def error_message; end
  def error_message=(arg0); end
  def initialize(cause); end
end
class Honeybadger::Plugin
  def execution(&block); end
  def executions; end
  def initialize(name); end
  def load!(config); end
  def loaded?; end
  def name; end
  def ok?(config); end
  def requirement(&block); end
  def requirements; end
  def reset!; end
  def self.instances; end
  def self.load!(config); end
  def self.name_from_caller(caller); end
  def self.register(name = nil, &block); end
end
class Honeybadger::Plugin::Execution
  def block; end
  def call; end
  def config; end
  def initialize(config, &block); end
  def logger(*args, &block); end
  extend Forwardable
end
class Honeybadger::Worker
  def backend(*args, &block); end
  def calc_throttle_interval; end
  def can_start?; end
  def config; end
  def dec_throttle; end
  def flush; end
  def handle_response(msg, response); end
  def inc_throttle; end
  def initialize(config); end
  def kill!; end
  def marker; end
  def mutex; end
  def notify_backend(payload); end
  def pid; end
  def push(msg); end
  def queue; end
  def release_marker; end
  def run; end
  def send_now(msg); end
  def shutdown(force = nil); end
  def shutdown?; end
  def signal_marker(marker); end
  def start; end
  def start_at; end
  def suspend(interval); end
  def suspended?; end
  def thread; end
  def throttle; end
  def throttle_interval; end
  def throttled?; end
  def work(msg); end
  extend Forwardable
  include Honeybadger::Logging::Helper
end
class Honeybadger::Worker::Thread < Thread
end
class Honeybadger::Breadcrumbs::RingBuffer
  def add!(item); end
  def buffer; end
  def clear!; end
  def drop; end
  def each(&blk); end
  def initialize(buffer_size = nil); end
  def previous; end
  def to_a; end
  include Enumerable
end
class Honeybadger::Breadcrumbs::Breadcrumb
  def <=>(other); end
  def active; end
  def active=(arg0); end
  def active?; end
  def category; end
  def ignore!; end
  def initialize(category: nil, message: nil, metadata: nil); end
  def message; end
  def message=(arg0); end
  def metadata; end
  def metadata=(arg0); end
  def timestamp; end
  def to_h; end
  include Comparable
end
class Honeybadger::Breadcrumbs::Collector
  def <<(breadcrumb); end
  def add!(breadcrumb); end
  def clear!(*args, &block); end
  def drop_previous_breadcrumb_if; end
  def each(*args, &block); end
  def initialize(config, buffer = nil); end
  def initialize_dup(source); end
  def previous(*args, &block); end
  def to_a(*args, &block); end
  def to_h; end
  def trail; end
  extend Forwardable
  include Enumerable
end
class Honeybadger::Agent
  def add_breadcrumb(message, metadata: nil, category: nil); end
  def backend(*args, &block); end
  def backtrace_filter(*args, &block); end
  def breadcrumbs; end
  def check_in(id); end
  def clear!; end
  def config; end
  def configure(*args, &block); end
  def context(context = nil); end
  def context_manager; end
  def exception_filter(*args, &block); end
  def exception_fingerprint(*args, &block); end
  def flush; end
  def get_context; end
  def init!(*args, &block); end
  def init_worker; end
  def initialize(opts = nil); end
  def notify(exception_or_opts, opts = nil); end
  def push(object); end
  def self.instance; end
  def self.instance=(instance); end
  def send_now(object); end
  def stop(force = nil); end
  def validate_notify_opts!(opts); end
  def with_error_handling; end
  def with_rack_env(rack_env, &block); end
  def worker; end
  extend Forwardable
  include Honeybadger::Logging::Helper
end
module Honeybadger::Init
end
module Honeybadger::Init::Rails
end
class Honeybadger::Init::Rails::Railtie < Rails::Railtie
end
class Honeybadger::Rack::ErrorNotifier
  def agent; end
  def call(env); end
  def config(*args, &block); end
  def framework_exception(env); end
  def ignored_user_agent?(env); end
  def initialize(app, agent = nil); end
  def logger(*args, &block); end
  def notify_honeybadger(exception, env); end
  extend Forwardable
end
class Honeybadger::Rack::UserInformer
  def agent; end
  def call(env); end
  def config(*args, &block); end
  def initialize(app, agent = nil); end
  def logger(*args, &block); end
  def replacement(with); end
  extend Forwardable
end
class Honeybadger::Rack::UserFeedback
  def action; end
  def agent; end
  def call(env); end
  def config(*args, &block); end
  def custom_template_file; end
  def custom_template_file?; end
  def initialize(app, agent = nil); end
  def logger(*args, &block); end
  def render_form(error_id, action = nil); end
  def template_file; end
  extend Forwardable
end
module Honeybadger::Config::Env
  def self.cast_value(value, type = nil); end
  def self.new(env = nil); end
end
module Honeybadger::Breadcrumbs::LogWrapper
  def add(severity, message = nil, progname = nil); end
  def should_ignore_log?(message, progname); end
end
module Honeybadger::Breadcrumbs::LogSubscriberInjector
  def debug(*args, &block); end
  def error(*args, &block); end
  def fatal(*args, &block); end
  def info(*args, &block); end
  def unknown(*args, &block); end
  def warn(*args, &block); end
end
class Honeybadger::Plugins::RailsBreadcrumbs
  def self.send_breadcrumb_notification(name, duration, notification_config, data = nil); end
  def self.subscribe_to_notification(name, notification_config); end
end
module Honeybadger::Plugins::Passenger
end
module Honeybadger::Plugins::Rails
end
module Honeybadger::Plugins::Rails::ExceptionsCatcher
  def render_exception(arg, exception); end
end
module Honeybadger::Plugins::LocalVariables
end
module Honeybadger::Plugins::LocalVariables::ExceptionExtension
  def __honeybadger_bindings_stack; end
  def self.included(base); end
  def set_backtrace_with_honeybadger(*args, &block); end
end
module Honeybadger::Plugins::Sidekiq
end
class Honeybadger::Plugins::Sidekiq::Middleware
  def call(worker, msg, queue); end
end
module Honeybadger::Plugins::Shoryuken
end
class Honeybadger::Plugins::Shoryuken::Middleware
  def attempt_threshold; end
  def call(_worker, _queue, sqs_msg, body); end
  def notification_params(body); end
  def receive_count(sqs_msg); end
end
class Honeybadger::Util::Lambda
  def self.lambda_execution?; end
  def self.normalized_data; end
  def self.trace_id; end
end
module Honeybadger::Plugins::Thor
  def invoke_command_with_honeybadger(*args); end
  def self.included(base); end
end
module Honeybadger::Plugins::Resque
end
module Honeybadger::Plugins::Resque::Extension
  def after_perform_with_honeybadger(*args); end
  def around_perform_with_honeybadger(*args); end
  def on_failure_with_honeybadger(e, *args); end
  def send_exception_to_honeybadger?(e, args); end
end
module Honeybadger::Plugins::Resque::Installer
  def payload_class_with_honeybadger; end
  def self.included(base); end
end
module Honeybadger::Plugins::Faktory
end
class Honeybadger::Plugins::Faktory::Middleware
  def call(worker, job); end
end
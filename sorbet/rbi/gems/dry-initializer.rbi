# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/dry-initializer/all/dry-initializer.rbi
#
# dry-initializer-3.0.3

module Dry::Initializer::UNDEFINED
end
module Dry::Initializer
  def dry_initializer; end
  def inherited(klass); end
  def option(name, type = nil, **opts, &block); end
  def param(name, type = nil, **opts, &block); end
  extend Dry::Initializer::DSL
end
module Dry::Initializer::DSL
  def [](undefined: nil, **arg1); end
  def define(procedure = nil, &block); end
  def extended(klass); end
  def null; end
  def self.extended(mod); end
end
class Dry::Initializer::Definition
  def ==(other); end
  def code; end
  def default; end
  def desc; end
  def inch; end
  def initialize(**options); end
  def inspect; end
  def ivar; end
  def name; end
  def null; end
  def option; end
  def optional; end
  def options; end
  def reader; end
  def source; end
  def target; end
  def to_s; end
  def to_str; end
  def type; end
end
module Dry::Initializer::Builders
end
class Dry::Initializer::Builders::Reader
  def attribute_line; end
  def call; end
  def initialize(definition); end
  def lines; end
  def method_lines; end
  def self.[](definition); end
  def type_line; end
  def undef_line; end
end
class Dry::Initializer::Builders::Signature
  def call; end
  def initialize(config); end
  def optional_params; end
  def options; end
  def required_params; end
  def self.[](config); end
end
class Dry::Initializer::Builders::Attribute
  def assignment_line; end
  def call; end
  def coercion_line; end
  def default_line; end
  def definition_line; end
  def initialize(definition); end
  def lines; end
  def optional_reader; end
  def reader_line; end
  def required_reader; end
  def self.[](definition); end
end
class Dry::Initializer::Builders::Initializer
  def call; end
  def define_line; end
  def end_line; end
  def initialize(config); end
  def lines; end
  def options_lines; end
  def params_lines; end
  def self.[](config); end
  def undef_line; end
end
class Dry::Initializer::Config
  def add_definition(option, name, type, block, **opts); end
  def attributes(instance); end
  def check_order_of_params; end
  def check_type(previous, current); end
  def children; end
  def code; end
  def definitions; end
  def extended_class; end
  def final_definitions; end
  def finalize; end
  def inch; end
  def initialize(extended_class = nil, null: nil); end
  def mixin; end
  def null; end
  def option(name, type = nil, **opts, &block); end
  def options; end
  def param(name, type = nil, **opts, &block); end
  def params; end
  def parent; end
  def public_attributes(instance); end
end
module Dry::Initializer::Mixin
  def self.extended(klass); end
  extend Dry::Initializer::DSL
  include Dry::Initializer
end
module Dry::Initializer::Mixin::Root
  def initialize(*args); end
end
module Dry::Initializer::Mixin::Local
  def included(klass); end
  def inspect; end
  def klass; end
  def to_s; end
  def to_str; end
end
module Dry::Initializer::Dispatchers::BuildNestedType
  def build_nested_type(parent, name, block); end
  def build_struct(klass_name, block); end
  def call(parent:, source:, target:, type: nil, block: nil, **options); end
  def check_certainty!(source, type, block); end
  def check_name!(name, block); end
  def full_name(parent, name); end
  extend Dry::Initializer::Dispatchers::BuildNestedType
end
module Dry::Initializer::Dispatchers::CheckType
  def call(source:, type: nil, wrap: nil, **options); end
  def check_arity!(_source, type, wrap); end
  def check_if_callable!(source, type); end
  extend Dry::Initializer::Dispatchers::CheckType
end
module Dry::Initializer::Dispatchers::PrepareDefault
  def call(default: nil, optional: nil, **options); end
  def callable!(default); end
  def check_arity!(default); end
  def invalid!(default); end
  extend Dry::Initializer::Dispatchers::PrepareDefault
end
module Dry::Initializer::Dispatchers::PrepareIvar
  def call(target:, **options); end
  def self.call(target:, **options); end
end
module Dry::Initializer::Dispatchers::PrepareOptional
  def call(optional: nil, default: nil, required: nil, **options); end
  def self.call(optional: nil, default: nil, required: nil, **options); end
end
module Dry::Initializer::Dispatchers::PrepareReader
  def call(target: nil, reader: nil, **options); end
  def invalid_reader!(target, _reader); end
  extend Dry::Initializer::Dispatchers::PrepareReader
end
module Dry::Initializer::Dispatchers::PrepareSource
  def call(source:, **options); end
  def self.call(source:, **options); end
end
module Dry::Initializer::Dispatchers::PrepareTarget
  def call(source:, target: nil, as: nil, **options); end
  def check_reserved_names!(target); end
  def check_ruby_name!(target); end
  extend Dry::Initializer::Dispatchers::PrepareTarget
end
module Dry::Initializer::Dispatchers::UnwrapType
  def call(type: nil, wrap: nil, **options); end
  def unwrap(type, count); end
  extend Dry::Initializer::Dispatchers::UnwrapType
end
module Dry::Initializer::Dispatchers::WrapType
  def call(type: nil, wrap: nil, **options); end
  def wrap_value(value, count, type); end
  def wrapped_type(type, count); end
  extend Dry::Initializer::Dispatchers::WrapType
end
module Dry::Initializer::Dispatchers
  def <<(dispatcher); end
  def call(**options); end
  def null; end
  def null=(arg0); end
  def pipeline; end
  extend Dry::Initializer::Dispatchers
end
class Dry::Initializer::Struct
  def __hashify(value); end
  def self.call(options); end
  def self.new(options); end
  def to_h; end
  extend Dry::Initializer
  include Anonymous_Module_114
  include Dry::Initializer::Mixin::Root
end
module Anonymous_Module_114
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0); end
  extend Dry::Initializer::Mixin::Local
end
module Dry
end

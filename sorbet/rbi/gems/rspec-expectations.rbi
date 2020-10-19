# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/rspec-expectations/all/rspec-expectations.rbi
#
# rspec-expectations-3.9.2

module RSpec
end
module RSpec::Matchers
  def a_block_changing(*args, &block); end
  def a_block_outputting(*args, &block); end
  def a_block_raising(*args, &block); end
  def a_block_throwing(*args, &block); end
  def a_block_yielding_control(*args, &block); end
  def a_block_yielding_successive_args(*args, &block); end
  def a_block_yielding_with_args(*args, &block); end
  def a_block_yielding_with_no_args(*args, &block); end
  def a_collection_containing_exactly(*args, &block); end
  def a_collection_ending_with(*args, &block); end
  def a_collection_including(*args, &block); end
  def a_collection_starting_with(*args, &block); end
  def a_falsey_value(*args, &block); end
  def a_falsy_value(*args, &block); end
  def a_hash_including(*args, &block); end
  def a_kind_of(*args, &block); end
  def a_nil_value(*args, &block); end
  def a_range_covering(*args, &block); end
  def a_string_ending_with(*args, &block); end
  def a_string_including(*args, &block); end
  def a_string_matching(*args, &block); end
  def a_string_starting_with(*args, &block); end
  def a_truthy_value(*args, &block); end
  def a_value(*args, &block); end
  def a_value_between(*args, &block); end
  def a_value_within(*args, &block); end
  def aggregate_failures(label = nil, metadata = nil, &block); end
  def all(expected); end
  def an_instance_of(*args, &block); end
  def an_object_eq_to(*args, &block); end
  def an_object_eql_to(*args, &block); end
  def an_object_equal_to(*args, &block); end
  def an_object_existing(*args, &block); end
  def an_object_having_attributes(*args, &block); end
  def an_object_matching(*args, &block); end
  def an_object_responding_to(*args, &block); end
  def an_object_satisfying(*args, &block); end
  def be(*args); end
  def be_a(klass); end
  def be_a_kind_of(expected); end
  def be_an(klass); end
  def be_an_instance_of(expected); end
  def be_between(min, max); end
  def be_falsey; end
  def be_falsy(*args, &block); end
  def be_instance_of(expected); end
  def be_kind_of(expected); end
  def be_nil; end
  def be_truthy; end
  def be_within(delta); end
  def change(receiver = nil, message = nil, &block); end
  def changing(*args, &block); end
  def contain_exactly(*items); end
  def containing_exactly(*args, &block); end
  def cover(*values); end
  def covering(*args, &block); end
  def end_with(*expected); end
  def ending_with(*args, &block); end
  def eq(expected); end
  def eq_to(*args, &block); end
  def eql(expected); end
  def eql_to(*args, &block); end
  def equal(expected); end
  def equal_to(*args, &block); end
  def exist(*args); end
  def existing(*args, &block); end
  def expect(value = nil, &block); end
  def have_attributes(expected); end
  def having_attributes(*args, &block); end
  def include(*expected); end
  def including(*args, &block); end
  def match(expected); end
  def match_array(items); end
  def match_regex(*args, &block); end
  def matching(*args, &block); end
  def method_missing(method, *args, &block); end
  def output(expected = nil); end
  def raise_error(error = nil, message = nil, &block); end
  def raise_exception(error = nil, message = nil, &block); end
  def raising(*args, &block); end
  def respond_to(*names); end
  def respond_to_missing?(method, *arg1); end
  def responding_to(*args, &block); end
  def satisfy(description = nil, &block); end
  def satisfying(*args, &block); end
  def self.alias_matcher(*args, &block); end
  def self.clear_generated_description; end
  def self.configuration; end
  def self.generated_description; end
  def self.is_a_describable_matcher?(obj); end
  def self.is_a_matcher?(obj); end
  def self.last_description; end
  def self.last_expectation_handler; end
  def self.last_expectation_handler=(arg0); end
  def self.last_matcher; end
  def self.last_matcher=(arg0); end
  def start_with(*expected); end
  def starting_with(*args, &block); end
  def throw_symbol(expected_symbol = nil, expected_arg = nil); end
  def throwing(*args, &block); end
  def within(*args, &block); end
  def yield_control; end
  def yield_successive_args(*args); end
  def yield_with_args(*args); end
  def yield_with_no_args; end
  def yielding_control(*args, &block); end
  def yielding_successive_args(*args, &block); end
  def yielding_with_args(*args, &block); end
  def yielding_with_no_args(*args, &block); end
  extend RSpec::Matchers::DSL
end
module RSpec::Matchers::EnglishPhrasing
  def self.list(obj); end
  def self.split_words(sym); end
end
module RSpec::Matchers::Composable
  def &(matcher); end
  def ===(value); end
  def and(matcher); end
  def description_of(object); end
  def or(matcher); end
  def self.should_enumerate?(item); end
  def self.surface_descriptions_in(item); end
  def self.unreadable_io?(object); end
  def should_enumerate?(item); end
  def surface_descriptions_in(item); end
  def unreadable_io?(object); end
  def values_match?(expected, actual); end
  def with_matchers_cloned(object); end
  def |(matcher); end
end
class RSpec::Matchers::Composable::DescribableItem < Struct
  def inspect; end
  def item; end
  def item=(_); end
  def pretty_print(pp); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
module RSpec::Matchers::BuiltIn
end
class RSpec::Matchers::BuiltIn::BaseMatcher
  def actual; end
  def actual_formatted; end
  def assert_ivars(*expected_ivars); end
  def description; end
  def diffable?; end
  def expected; end
  def expected_formatted; end
  def expects_call_stack_jump?; end
  def initialize(expected = nil); end
  def match_unless_raises(*exceptions); end
  def matcher_name; end
  def matcher_name=(arg0); end
  def matches?(actual); end
  def present_ivars; end
  def rescued_exception; end
  def self.matcher_name; end
  def self.underscore(camel_cased_word); end
  def supports_block_expectations?; end
  include RSpec::Matchers::BuiltIn::BaseMatcher::DefaultFailureMessages
  include RSpec::Matchers::BuiltIn::BaseMatcher::HashFormatting
  include RSpec::Matchers::Composable
end
module RSpec::Matchers::BuiltIn::BaseMatcher::HashFormatting
  def improve_hash_formatting(inspect_string); end
  def self.improve_hash_formatting(inspect_string); end
end
module RSpec::Matchers::BuiltIn::BaseMatcher::DefaultFailureMessages
  def failure_message; end
  def failure_message_when_negated; end
  def self.has_default_failure_messages?(matcher); end
end
module RSpec::Matchers::DSL
  def alias_matcher(new_name, old_name, options = nil, &description_override); end
  def define(name, &declarations); end
  def define_negated_matcher(negated_name, base_name, &description_override); end
  def matcher(name, &declarations); end
  def warn_about_block_args(name, declarations); end
end
module RSpec::Matchers::DSL::Macros
  def assign_attributes(attr_names); end
  def chain(method_name, *attr_names, &definition); end
  def define_user_override(method_name, user_def, &our_def); end
  def description(&definition); end
  def diffable; end
  def failure_message(&definition); end
  def failure_message_when_negated(&definition); end
  def match(options = nil, &match_block); end
  def match_unless_raises(expected_exception = nil, &match_block); end
  def match_when_negated(options = nil, &match_block); end
  def supports_block_expectations; end
end
module RSpec::Matchers::DSL::Macros::Deprecated
  def failure_message_for_should(&definition); end
  def failure_message_for_should_not(&definition); end
  def match_for_should(&definition); end
  def match_for_should_not(&definition); end
end
module RSpec::Matchers::DSL::DefaultImplementations
  def chained_method_clause_sentences; end
  def description; end
  def diffable?; end
  def expects_call_stack_jump?; end
  def supports_block_expectations?; end
  include RSpec::Matchers::BuiltIn::BaseMatcher::DefaultFailureMessages
end
class RSpec::Matchers::DSL::Matcher
  def actual; end
  def actual_arg_for(block); end
  def block_arg; end
  def expected; end
  def expected_as_array; end
  def initialize(name, declarations, matcher_execution_context, *expected, &block_arg); end
  def inspect; end
  def method_missing(method, *args, &block); end
  def name; end
  def rescued_exception; end
  def respond_to_missing?(method, include_private = nil); end
  extend RSpec::Matchers::DSL::Macros
  extend RSpec::Matchers::DSL::Macros::Deprecated
  include RSpec::Matchers
  include RSpec::Matchers::Composable
  include RSpec::Matchers::DSL::DefaultImplementations
end
class RSpec::Matchers::MatcherDelegator
  def base_matcher; end
  def initialize(base_matcher); end
  def initialize_copy(other); end
  def method_missing(*args, &block); end
  def respond_to_missing?(name, include_all = nil); end
  include RSpec::Matchers::Composable
end
class RSpec::Matchers::AliasedMatcher < RSpec::Matchers::MatcherDelegator
  def description; end
  def failure_message; end
  def failure_message_when_negated; end
  def initialize(base_matcher, description_block); end
  def method_missing(*arg0); end
end
class RSpec::Matchers::AliasedMatcherWithOperatorSupport < RSpec::Matchers::AliasedMatcher
end
class RSpec::Matchers::AliasedNegatedMatcher < RSpec::Matchers::AliasedMatcher
  def does_not_match?(*args, &block); end
  def failure_message; end
  def failure_message_when_negated; end
  def matches?(*args, &block); end
  def optimal_failure_message(same, inverted); end
end
class RSpec::Matchers::ExpectedsForMultipleDiffs
  def diffs(differ, actual); end
  def initialize(expected_list); end
  def message_with_diff(message, differ, actual); end
  def self.diff_label_for(matcher); end
  def self.for_many_matchers(matchers); end
  def self.from(expected); end
  def self.truncated(description); end
end
module RSpec::Support
  def self.require_rspec_expectations(f); end
  def self.require_rspec_matchers(f); end
end
module RSpec::Expectations
  def self.configuration; end
  def self.differ; end
  def self.fail_with(message, expected = nil, actual = nil); end
end
class RSpec::Expectations::ExpectationTarget
  def initialize(value); end
  def self.for(value, block); end
  def target; end
  include RSpec::Expectations::ExpectationTarget::InstanceMethods
end
module RSpec::Expectations::ExpectationTarget::UndefinedValue
end
module RSpec::Expectations::ExpectationTarget::InstanceMethods
  def not_to(matcher = nil, message = nil, &block); end
  def prevent_operator_matchers(verb); end
  def to(matcher = nil, message = nil, &block); end
  def to_not(matcher = nil, message = nil, &block); end
end
class RSpec::Expectations::BlockExpectationTarget < RSpec::Expectations::ExpectationTarget
  def enforce_block_expectation(matcher); end
  def not_to(matcher, message = nil, &block); end
  def supports_block_expectations?(matcher); end
  def to(matcher, message = nil, &block); end
  def to_not(matcher, message = nil, &block); end
end
module RSpec::Expectations::Syntax
  def default_should_host; end
  def disable_expect(syntax_host = nil); end
  def disable_should(syntax_host = nil); end
  def enable_expect(syntax_host = nil); end
  def enable_should(syntax_host = nil); end
  def expect_enabled?(syntax_host = nil); end
  def self.default_should_host; end
  def self.disable_expect(syntax_host = nil); end
  def self.disable_should(syntax_host = nil); end
  def self.enable_expect(syntax_host = nil); end
  def self.enable_should(syntax_host = nil); end
  def self.expect_enabled?(syntax_host = nil); end
  def self.should_enabled?(syntax_host = nil); end
  def self.warn_about_should!; end
  def self.warn_about_should_unless_configured(method_name); end
  def should_enabled?(syntax_host = nil); end
  def warn_about_should!; end
  def warn_about_should_unless_configured(method_name); end
end
class BasicObject
  def should(matcher = nil, message = nil, &block); end
  def should_not(matcher = nil, message = nil, &block); end
end
class RSpec::Expectations::Configuration
  def add_should_and_should_not_to(*modules); end
  def backtrace_formatter; end
  def backtrace_formatter=(arg0); end
  def color?; end
  def false_positives_handler; end
  def include_chain_clauses_in_custom_matcher_descriptions=(arg0); end
  def include_chain_clauses_in_custom_matcher_descriptions?; end
  def initialize; end
  def max_formatted_output_length=(length); end
  def on_potential_false_positives; end
  def on_potential_false_positives=(behavior); end
  def reset_syntaxes_to_default; end
  def syntax; end
  def syntax=(values); end
  def warn_about_potential_false_positives=(boolean); end
  def warn_about_potential_false_positives?; end
end
module RSpec::Expectations::Configuration::NullBacktraceFormatter
  def self.format_backtrace(backtrace); end
end
class InvalidName___Class_0x00___Differ_157
end
module RSpec::Expectations::ExpectationHelper
  def self.check_message(msg); end
  def self.handle_failure(matcher, message, failure_message_method); end
  def self.modern_matcher_from(matcher); end
  def self.with_matcher(handler, matcher, message); end
end
class RSpec::Expectations::PositiveExpectationHandler
  def self.handle_matcher(actual, initial_matcher, message = nil, &block); end
  def self.opposite_should_method; end
  def self.should_method; end
  def self.verb; end
end
class RSpec::Expectations::NegativeExpectationHandler
  def self.does_not_match?(matcher, actual, &block); end
  def self.handle_matcher(actual, initial_matcher, message = nil, &block); end
  def self.opposite_should_method; end
  def self.should_method; end
  def self.verb; end
end
class RSpec::Expectations::LegacyMatcherAdapter < RSpec::Matchers::MatcherDelegator
  def initialize(matcher); end
  def self.wrap(matcher); end
end
class RSpec::Expectations::LegacyMatcherAdapter::RSpec2 < RSpec::Expectations::LegacyMatcherAdapter
  def failure_message; end
  def failure_message_when_negated; end
  def self.interface_matches?(matcher); end
end
class RSpec::Expectations::LegacyMatcherAdapter::RSpec1 < RSpec::Expectations::LegacyMatcherAdapter
  def failure_message; end
  def failure_message_when_negated; end
  def self.interface_matches?(matcher); end
end
module RSpec::Expectations::Version
end
class RSpec::Expectations::ExpectationNotMetError < Exception
end
class RSpec::Expectations::MultipleExpectationsNotMetError < RSpec::Expectations::ExpectationNotMetError
  def aggregation_block_label; end
  def aggregation_metadata; end
  def all_exceptions; end
  def block_description; end
  def enumerated(exceptions, index_offset); end
  def enumerated_errors; end
  def enumerated_failures; end
  def exception_count_description; end
  def failures; end
  def indentation; end
  def indented(failure_message, index); end
  def index_label(index); end
  def initialize(failure_aggregator); end
  def longest_index_label_width; end
  def message; end
  def other_errors; end
  def pluralize(noun, count); end
  def summary; end
  def width_of_label(index); end
end
class RSpec::Expectations::BlockSnippetExtractor
  def beginning_line_number; end
  def block_token_extractor; end
  def body_content_lines; end
  def file_path; end
  def initialize(proc, method_name); end
  def method_name; end
  def proc; end
  def raw_body_lines; end
  def raw_body_snippet; end
  def self.try_extracting_single_line_body_of(proc, method_name); end
  def source; end
  def source_location; end
end
class RSpec::Expectations::BlockSnippetExtractor::Error < StandardError
end
class RSpec::Expectations::BlockSnippetExtractor::TargetNotFoundError < RSpec::Expectations::BlockSnippetExtractor::Error
end
class RSpec::Expectations::BlockSnippetExtractor::AmbiguousTargetError < RSpec::Expectations::BlockSnippetExtractor::Error
end
class RSpec::Expectations::BlockSnippetExtractor::BlockTokenExtractor < Struct
  def after_beginning_of_args_state(token); end
  def after_beginning_of_body_state(token); end
  def after_method_call_state(token); end
  def after_opener_state(token); end
  def beginning_line_number; end
  def beginning_line_number=(_); end
  def block_locator; end
  def body_tokens; end
  def correct_block?(body_tokens); end
  def finalize_pending_tokens!; end
  def finish!; end
  def finish_or_find_next_block_if_incorrect!; end
  def handle_closer_token(token); end
  def handle_opener_token(token); end
  def initial_state(token); end
  def initialize(*arg0); end
  def invoke_state_handler(token); end
  def method_name; end
  def method_name=(_); end
  def opener_token?(token); end
  def opener_token_stack; end
  def parse!; end
  def pending_tokens; end
  def pipe_token?(token); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def source; end
  def source=(_); end
  def state; end
end
class RSpec::Expectations::BlockSnippetExtractor::BlockLocator < Struct
  def beginning_line_number; end
  def beginning_line_number=(_); end
  def block_body_node; end
  def block_wrapper_node; end
  def body_content_locations; end
  def candidate_block_wrapper_nodes; end
  def candidate_method_ident_nodes; end
  def method_call_location; end
  def method_ident_node; end
  def method_ident_node?(node); end
  def method_name; end
  def method_name=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def source; end
  def source=(_); end
end
class RSpec::Expectations::FailureAggregator
  def aggregate; end
  def assign_backtrace(failure); end
  def block_label; end
  def call(failure, options); end
  def failures; end
  def initialize(block_label, metadata); end
  def metadata; end
  def notify_aggregated_failures; end
  def other_errors; end
end
class RSpec::Matchers::BuiltIn::BeAKindOf < RSpec::Matchers::BuiltIn::BaseMatcher
  def match(expected, actual); end
end
class RSpec::Matchers::BuiltIn::BeAnInstanceOf < RSpec::Matchers::BuiltIn::BaseMatcher
  def description; end
  def match(expected, actual); end
end
class RSpec::Matchers::BuiltIn::BeBetween < RSpec::Matchers::BuiltIn::BaseMatcher
  def comparable?; end
  def compare; end
  def description; end
  def exclusive; end
  def failure_message; end
  def inclusive; end
  def initialize(min, max); end
  def matches?(actual); end
  def not_comparable_clause; end
end
class RSpec::Matchers::BuiltIn::BeTruthy < RSpec::Matchers::BuiltIn::BaseMatcher
  def failure_message; end
  def failure_message_when_negated; end
  def match(_, actual); end
end
class RSpec::Matchers::BuiltIn::BeFalsey < RSpec::Matchers::BuiltIn::BaseMatcher
  def failure_message; end
  def failure_message_when_negated; end
  def match(_, actual); end
end
class RSpec::Matchers::BuiltIn::BeNil < RSpec::Matchers::BuiltIn::BaseMatcher
  def failure_message; end
  def failure_message_when_negated; end
  def match(_, actual); end
end
module RSpec::Matchers::BuiltIn::BeHelpers
  def args_to_s; end
  def args_to_sentence; end
  def expected_to_sentence; end
  def inspected_args; end
  def parenthesize(string); end
end
class RSpec::Matchers::BuiltIn::Be < RSpec::Matchers::BuiltIn::BaseMatcher
  def <(operand); end
  def <=(operand); end
  def ==(operand); end
  def ===(operand); end
  def =~(operand); end
  def >(operand); end
  def >=(operand); end
  def failure_message; end
  def failure_message_when_negated; end
  def initialize(*args); end
  def match(_, actual); end
  include RSpec::Matchers::BuiltIn::BeHelpers
end
class RSpec::Matchers::BuiltIn::BeComparedTo < RSpec::Matchers::BuiltIn::BaseMatcher
  def description; end
  def failure_message; end
  def failure_message_when_negated; end
  def initialize(operand, operator); end
  def matches?(actual); end
  include RSpec::Matchers::BuiltIn::BeHelpers
end
class RSpec::Matchers::BuiltIn::BePredicate < RSpec::Matchers::BuiltIn::BaseMatcher
  def description; end
  def does_not_match?(actual, &block); end
  def failure_message; end
  def failure_message_expecting(value); end
  def failure_message_when_negated; end
  def initialize(*args, &block); end
  def matches?(actual, &block); end
  def parse_expected(expected); end
  def predicate; end
  def predicate_accessible?; end
  def predicate_matches?; end
  def prefix_and_expected(symbol); end
  def prefix_to_sentence; end
  def present_tense_predicate; end
  def private_predicate?; end
  def validity_message; end
  include RSpec::Matchers::BuiltIn::BeHelpers
end
class RSpec::Matchers::BuiltIn::BeWithin < RSpec::Matchers::BuiltIn::BaseMatcher
  def description; end
  def failure_message; end
  def failure_message_when_negated; end
  def initialize(delta); end
  def matches?(actual); end
  def needs_expected; end
  def not_numeric_clause; end
  def numeric?; end
  def of(expected); end
  def percent_of(expected); end
end
class RSpec::Matchers::BuiltIn::Change < RSpec::Matchers::BuiltIn::BaseMatcher
  def by(expected_delta); end
  def by_at_least(minimum); end
  def by_at_most(maximum); end
  def change_details; end
  def description; end
  def does_not_match?(event_proc); end
  def failure_message; end
  def failure_message_when_negated; end
  def from(value); end
  def initialize(receiver = nil, message = nil, &block); end
  def matches?(event_proc); end
  def negative_failure_reason; end
  def perform_change(event_proc); end
  def positive_failure_reason; end
  def raise_block_syntax_error; end
  def supports_block_expectations?; end
  def to(value); end
end
class RSpec::Matchers::BuiltIn::ChangeRelatively < RSpec::Matchers::BuiltIn::BaseMatcher
  def description; end
  def does_not_match?(_event_proc); end
  def failure_message; end
  def failure_reason; end
  def initialize(change_details, expected_delta, relativity, &comparer); end
  def matches?(event_proc); end
  def supports_block_expectations?; end
end
class RSpec::Matchers::BuiltIn::SpecificValuesChange < RSpec::Matchers::BuiltIn::BaseMatcher
  def after_value_failure; end
  def before_value_failure; end
  def description; end
  def did_change_failure; end
  def did_not_change_failure; end
  def failure_message; end
  def initialize(change_details, from, to); end
  def matches?(event_proc); end
  def matches_after?; end
  def not_given_a_block_failure; end
  def perform_change(event_proc); end
  def supports_block_expectations?; end
end
class RSpec::Matchers::BuiltIn::ChangeFromValue < RSpec::Matchers::BuiltIn::SpecificValuesChange
  def change_description; end
  def does_not_match?(event_proc); end
  def failure_message_when_negated; end
  def initialize(change_details, expected_before); end
  def to(value); end
end
class RSpec::Matchers::BuiltIn::ChangeToValue < RSpec::Matchers::BuiltIn::SpecificValuesChange
  def change_description; end
  def does_not_match?(_event_proc); end
  def from(value); end
  def initialize(change_details, expected_after); end
end
class RSpec::Matchers::BuiltIn::ChangeDetails
  def actual_after; end
  def actual_delta; end
  def changed?; end
  def evaluate_value_proc; end
  def extract_value_block_snippet; end
  def initialize(matcher_name, receiver = nil, message = nil, &block); end
  def message_notation(receiver, message); end
  def perform_change(event_proc); end
  def value_representation; end
end
class RSpec::Matchers::BuiltIn::Compound < RSpec::Matchers::BuiltIn::BaseMatcher
  def compound_failure_message; end
  def description; end
  def diffable?; end
  def diffable_matcher_list; end
  def diffable_matcher_list_for(matcher); end
  def does_not_match?(_actual); end
  def evaluator; end
  def expected; end
  def expects_call_stack_jump?; end
  def indent_multiline_message(message); end
  def initialize(matcher_1, matcher_2); end
  def initialize_copy(other); end
  def match(_expected, actual); end
  def matcher_1; end
  def matcher_1_matches?; end
  def matcher_2; end
  def matcher_2_matches?; end
  def matcher_is_diffable?(matcher); end
  def matcher_supports_block_expectations?(matcher); end
  def supports_block_expectations?; end
end
class RSpec::Matchers::BuiltIn::Compound::SequentialEvaluator
  def initialize(actual, *arg1); end
  def matcher_matches?(matcher); end
end
class RSpec::Matchers::BuiltIn::Compound::NestedEvaluator
  def initialize(actual, matcher_1, matcher_2); end
  def inner_matcher_block(outer_args); end
  def matcher_matches?(matcher); end
  def order_block_matchers; end
  def self.matcher_expects_call_stack_jump?(matcher); end
end
class RSpec::Matchers::BuiltIn::Compound::And < RSpec::Matchers::BuiltIn::Compound
  def conjunction; end
  def failure_message; end
  def match(*arg0); end
end
class RSpec::Matchers::BuiltIn::Compound::Or < RSpec::Matchers::BuiltIn::Compound
  def conjunction; end
  def failure_message; end
  def match(*arg0); end
end
class RSpec::Matchers::BuiltIn::ContainExactly < RSpec::Matchers::BuiltIn::BaseMatcher
  def actual_collection_line; end
  def best_solution; end
  def convert_actual_to_an_array; end
  def describe_collection(collection, surface_descriptions = nil); end
  def description; end
  def expected_collection_line; end
  def extra_elements_line; end
  def extra_items; end
  def failure_message; end
  def failure_message_when_negated; end
  def generate_failure_message; end
  def match(_expected, _actual); end
  def match_when_sorted?; end
  def message_line(prefix, collection, surface_descriptions = nil); end
  def missing_elements_line; end
  def missing_items; end
  def pairings_maximizer; end
  def safe_sort(array); end
  def to_a_disallowed?(object); end
end
class RSpec::Matchers::BuiltIn::ContainExactly::PairingsMaximizer
  def actual_to_expected_matched_indexes; end
  def apply_pairing_to(indeterminates, original_matches, other_list_index); end
  def best_solution_for_pairing(expected_index, actual_index); end
  def categorize_indexes(indexes_to_categorize, other_indexes); end
  def expected_to_actual_matched_indexes; end
  def find_best_solution; end
  def initialize(expected_to_actual_matched_indexes, actual_to_expected_matched_indexes); end
  def reciprocal_single_match?(matches, index, other_list); end
  def solution; end
end
class RSpec::Matchers::BuiltIn::ContainExactly::PairingsMaximizer::Solution < Struct
  def +(derived_candidate_solution); end
  def candidate?; end
  def ideal?; end
  def indeterminate_actual_indexes; end
  def indeterminate_actual_indexes=(_); end
  def indeterminate_expected_indexes; end
  def indeterminate_expected_indexes=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def unmatched_actual_indexes; end
  def unmatched_actual_indexes=(_); end
  def unmatched_expected_indexes; end
  def unmatched_expected_indexes=(_); end
  def unmatched_item_count; end
  def worse_than?(other); end
end
class RSpec::Matchers::BuiltIn::ContainExactly::PairingsMaximizer::NullSolution
  def self.worse_than?(_other); end
end
class RSpec::Matchers::BuiltIn::Cover < RSpec::Matchers::BuiltIn::BaseMatcher
  def does_not_match?(range); end
  def initialize(*expected); end
  def matches?(range); end
end
class RSpec::Matchers::BuiltIn::StartOrEndWith < RSpec::Matchers::BuiltIn::BaseMatcher
  def description; end
  def failure_message; end
  def initialize(*expected); end
  def match(_expected, actual); end
  def subsets_comparable?; end
end
class RSpec::Matchers::BuiltIn::StartWith < RSpec::Matchers::BuiltIn::StartOrEndWith
  def element_matches?; end
  def subset_matches?; end
end
class RSpec::Matchers::BuiltIn::EndWith < RSpec::Matchers::BuiltIn::StartOrEndWith
  def element_matches?; end
  def subset_matches?; end
end
class RSpec::Matchers::BuiltIn::Eq < RSpec::Matchers::BuiltIn::BaseMatcher
  def description; end
  def diffable?; end
  def failure_message; end
  def failure_message_when_negated; end
  def match(expected, actual); end
end
class RSpec::Matchers::BuiltIn::Eql < RSpec::Matchers::BuiltIn::BaseMatcher
  def diffable?; end
  def failure_message; end
  def failure_message_when_negated; end
  def match(expected, actual); end
end
class RSpec::Matchers::BuiltIn::Equal < RSpec::Matchers::BuiltIn::BaseMatcher
  def actual_inspected; end
  def detailed_failure_message; end
  def diffable?; end
  def expected_is_a_literal_singleton?; end
  def failure_message; end
  def failure_message_when_negated; end
  def inspect_object(o); end
  def match(expected, actual); end
  def simple_failure_message; end
end
class RSpec::Matchers::BuiltIn::Exist < RSpec::Matchers::BuiltIn::BaseMatcher
  def does_not_match?(actual); end
  def failure_message; end
  def failure_message_when_negated; end
  def initialize(*expected); end
  def matches?(actual); end
end
class Anonymous_Struct_158 < Struct
  def actual; end
  def actual=(_); end
  def expected; end
  def expected=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class RSpec::Matchers::BuiltIn::Exist::ExistenceTest < Anonymous_Struct_158
  def actual_exists?; end
  def deprecated(predicate, actual); end
  def existence_values; end
  def predicates; end
  def uniq_truthy_values; end
  def valid_test?; end
  def validity_message; end
end
class RSpec::Matchers::BuiltIn::Has < RSpec::Matchers::BuiltIn::BaseMatcher
  def args_description; end
  def description; end
  def does_not_match?(actual, &block); end
  def failure_message; end
  def failure_message_args_description; end
  def failure_message_when_negated; end
  def initialize(method_name, *args, &block); end
  def matches?(actual, &block); end
  def method_description; end
  def predicate; end
  def predicate_accessible?; end
  def predicate_exists?; end
  def predicate_matches?; end
  def private_predicate?; end
  def validity_message; end
end
class RSpec::Matchers::BuiltIn::HaveAttributes < RSpec::Matchers::BuiltIn::BaseMatcher
  def actual; end
  def actual_has_attribute?(attribute_key, attribute_value); end
  def cache_all_values; end
  def description; end
  def diffable?; end
  def does_not_match?(actual); end
  def failure_message; end
  def failure_message_when_negated; end
  def formatted_values; end
  def initialize(expected); end
  def matches?(actual); end
  def perform_match(predicate); end
  def respond_to_attributes?; end
  def respond_to_failed; end
  def respond_to_failure_message_or; end
  def respond_to_matcher; end
end
class RSpec::Matchers::BuiltIn::Include < RSpec::Matchers::BuiltIn::BaseMatcher
  def actual_collection_includes?(expected_item); end
  def actual_hash_has_key?(expected_key); end
  def actual_hash_includes?(expected_key, expected_value); end
  def comparing_hash_keys?(expected_item); end
  def comparing_hash_to_a_subset?(expected_item); end
  def convert_to_hash?(obj); end
  def description; end
  def diff_would_wrongly_highlight_matched_item?; end
  def diffable?; end
  def does_not_match?(actual); end
  def excluded_from_actual; end
  def expected; end
  def expecteds; end
  def failure_message; end
  def failure_message_when_negated; end
  def format_failure_message(preposition); end
  def initialize(*expecteds); end
  def matches?(actual); end
  def perform_match(actual, &block); end
  def readable_list_of(items); end
end
class RSpec::Matchers::BuiltIn::All < RSpec::Matchers::BuiltIn::BaseMatcher
  def add_new_line_if_needed(message); end
  def description; end
  def does_not_match?(_actual); end
  def failed_objects; end
  def failure_message; end
  def failure_message_for_item(index, failure_message); end
  def indent_multiline_message(message); end
  def index_failed_objects; end
  def initialize(matcher); end
  def initialize_copy(other); end
  def iterable?; end
  def match(_expected, _actual); end
  def matcher; end
end
class RSpec::Matchers::BuiltIn::Match < RSpec::Matchers::BuiltIn::BaseMatcher
  def can_safely_call_match?(expected, actual); end
  def description; end
  def diffable?; end
  def initialize(expected); end
  def match(expected, actual); end
  def match_captures(expected, actual); end
  def with_captures(*captures); end
end
class RSpec::Matchers::BuiltIn::ReliableMatchData
  def captures; end
  def initialize(match_data); end
  def match_data; end
  def names; end
end
class RSpec::Matchers::BuiltIn::OperatorMatcher
  def !=(_expected); end
  def !~(_expected); end
  def <(expected); end
  def <=(expected); end
  def ==(expected); end
  def ===(expected); end
  def =~(expected); end
  def >(expected); end
  def >=(expected); end
  def description; end
  def eval_match(actual, operator, expected); end
  def fail_with_message(message); end
  def has_non_generic_implementation_of?(op); end
  def initialize(actual); end
  def self.get(klass, operator); end
  def self.register(klass, operator, matcher); end
  def self.registry; end
  def self.unregister(klass, operator); end
  def self.use_custom_matcher_or_delegate(operator); end
end
class RSpec::Matchers::BuiltIn::PositiveOperatorMatcher < RSpec::Matchers::BuiltIn::OperatorMatcher
  def __delegate_operator(actual, operator, expected); end
end
class RSpec::Matchers::BuiltIn::NegativeOperatorMatcher < RSpec::Matchers::BuiltIn::OperatorMatcher
  def __delegate_operator(actual, operator, expected); end
end
class RSpec::Matchers::BuiltIn::Output < RSpec::Matchers::BuiltIn::BaseMatcher
  def actual_output_description; end
  def captured?; end
  def description; end
  def diffable?; end
  def does_not_match?(block); end
  def failure_message; end
  def failure_message_when_negated; end
  def initialize(expected); end
  def matches?(block); end
  def negative_failure_reason; end
  def positive_failure_reason; end
  def supports_block_expectations?; end
  def to_stderr; end
  def to_stderr_from_any_process; end
  def to_stdout; end
  def to_stdout_from_any_process; end
end
module RSpec::Matchers::BuiltIn::NullCapture
  def self.capture(_block); end
  def self.name; end
end
module RSpec::Matchers::BuiltIn::CaptureStdout
  def self.capture(block); end
  def self.name; end
end
module RSpec::Matchers::BuiltIn::CaptureStderr
  def self.capture(block); end
  def self.name; end
end
class Anonymous_Struct_159 < Struct
  def name; end
  def name=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def stream; end
  def stream=(_); end
end
class RSpec::Matchers::BuiltIn::CaptureStreamToTempfile < Anonymous_Struct_159
  def capture(block); end
end
class RSpec::Matchers::BuiltIn::RaiseError
  def block_matches?; end
  def description; end
  def does_not_match?(given_proc); end
  def error_and_message_match?; end
  def eval_block; end
  def expectation_matched?; end
  def expected_error; end
  def expecting_specific_exception?; end
  def expects_call_stack_jump?; end
  def failure_message; end
  def failure_message_when_negated; end
  def format_backtrace(backtrace); end
  def given_error; end
  def handle_warning(message); end
  def initialize(expected_error_or_message = nil, expected_message = nil, &block); end
  def matches?(given_proc, negative_expectation = nil, &block); end
  def raise_message_already_set; end
  def ready_to_eval_block?; end
  def supports_block_expectations?; end
  def verify_message; end
  def warn_about_bare_error; end
  def warn_about_negative_false_positive(expression); end
  def warn_for_false_positives; end
  def warning; end
  def warning_about_bare_error; end
  def with_message(expected_message); end
  include RSpec::Matchers::Composable
end
class RSpec::Matchers::BuiltIn::RespondTo < RSpec::Matchers::BuiltIn::BaseMatcher
  def and_any_keywords; end
  def and_keywords(*keywords); end
  def and_unlimited_arguments; end
  def argument; end
  def arguments; end
  def description; end
  def does_not_match?(actual); end
  def failure_message; end
  def failure_message_when_negated; end
  def find_failing_method_names(actual, filter_method); end
  def ignoring_method_signature_failure!; end
  def initialize(*names); end
  def matches?(actual); end
  def matches_arity?(actual, name); end
  def method_signature_for(actual, name); end
  def pp_names; end
  def setup_method_signature_expectation; end
  def with(n); end
  def with_any_keywords; end
  def with_arity; end
  def with_arity_string; end
  def with_keywords(*keywords); end
  def with_keywords_string; end
  def with_unlimited_arguments; end
end
class RSpec::Matchers::BuiltIn::Satisfy < RSpec::Matchers::BuiltIn::BaseMatcher
  def block_representation; end
  def description; end
  def extract_block_snippet; end
  def failure_message; end
  def failure_message_when_negated; end
  def initialize(description = nil, &block); end
  def matches?(actual, &block); end
end
class RSpec::Matchers::BuiltIn::ThrowSymbol
  def actual_result; end
  def caught; end
  def description; end
  def does_not_match?(given_proc); end
  def expected(symbol_desc = nil); end
  def expects_call_stack_jump?; end
  def failure_message; end
  def failure_message_when_negated; end
  def initialize(expected_symbol = nil, expected_arg = nil); end
  def matches?(given_proc); end
  def supports_block_expectations?; end
  def throw_description(symbol, arg); end
  include RSpec::Matchers::Composable
end
class RSpec::Matchers::BuiltIn::YieldProbe
  def assert_used!; end
  def assert_valid_expect_block!; end
  def has_block?; end
  def initialize(block, &callback); end
  def num_yields; end
  def num_yields=(arg0); end
  def probe; end
  def self.probe(block, &callback); end
  def single_yield_args; end
  def to_proc; end
  def yielded_args; end
  def yielded_args=(arg0); end
  def yielded_once?(matcher_name); end
end
class RSpec::Matchers::BuiltIn::YieldControl < RSpec::Matchers::BuiltIn::BaseMatcher
  def at_least(number); end
  def at_most(number); end
  def count_constraint_to_number(n); end
  def does_not_match?(block); end
  def exactly(number); end
  def failure_message; end
  def failure_message_when_negated; end
  def failure_reason; end
  def human_readable_count(count); end
  def human_readable_expectation_type; end
  def initialize; end
  def matches?(block); end
  def once; end
  def set_expected_yields_count(relativity, n); end
  def supports_block_expectations?; end
  def thrice; end
  def times; end
  def twice; end
end
class RSpec::Matchers::BuiltIn::YieldWithNoArgs < RSpec::Matchers::BuiltIn::BaseMatcher
  def does_not_match?(block); end
  def failure_message; end
  def failure_message_when_negated; end
  def matches?(block); end
  def negative_failure_reason; end
  def positive_failure_reason; end
  def supports_block_expectations?; end
end
class RSpec::Matchers::BuiltIn::YieldWithArgs < RSpec::Matchers::BuiltIn::BaseMatcher
  def all_args_match?; end
  def args_currently_match?; end
  def description; end
  def does_not_match?(block); end
  def expected_arg_description; end
  def failure_message; end
  def failure_message_when_negated; end
  def initialize(*args); end
  def matches?(block); end
  def negative_failure_reason; end
  def positive_failure_reason; end
  def supports_block_expectations?; end
end
class RSpec::Matchers::BuiltIn::YieldSuccessiveArgs < RSpec::Matchers::BuiltIn::BaseMatcher
  def description; end
  def does_not_match?(block); end
  def expected_arg_description; end
  def failure_message; end
  def failure_message_when_negated; end
  def initialize(*args); end
  def matches?(block); end
  def negative_failure_reason; end
  def positive_failure_reason; end
  def supports_block_expectations?; end
end

# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/spring-watcher-listen/all/spring-watcher-listen.rbi
#
# spring-watcher-listen-2.0.1

module Spring
end
module Spring::Watcher
end
class Spring::Watcher::Listen < Spring::Watcher::Abstract
  def base_directories; end
  def changed(modified, added, removed); end
  def listener; end
  def start; end
  def stop; end
  def subjects_changed; end
  def watching?(file); end
end

# frozen_string_literal: true

module RuboCop
  # RuboCop Norb project namespace
  module Norb
    PROJECT_ROOT   = Pathname.new(__dir__).parent.parent.expand_path.freeze
    CONFIG_DEFAULT = PROJECT_ROOT.join('config', 'default.yml').freeze
    CONFIG         = YAML.safe_load(CONFIG_DEFAULT.read, permitted_classes: [Regexp]).freeze

    private_constant(:CONFIG_DEFAULT, :PROJECT_ROOT)
  end
end

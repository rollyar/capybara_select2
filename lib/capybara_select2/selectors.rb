module CapybaraSelect2
  module Selectors

    module_function

    OpenerSelectors = {
      '2' => ".select2-choice, .select2-search-field",
      '3' => ".select2-choice, .select2-search-field",
      '4' => ".select2-selection"
    }.freeze

    def opener_selector(select2_version)
      OpenerSelectors.fetch(select2_version)
    end

    SearchInputSelectors = {
      '2' => ".select2-dropdown-open input.select2-focused",
      '3' => ".select2-drop-active input.select2-input," +          # single
             ".select2-dropdown-open input.select2-input",          # multi
      '4' => ".select2-container--open input.select2-search__field," +
             ".select2-container--open textarea.select2-search__field"
    }.freeze   

    def search_input_selector(select2_version)
      SearchInputSelectors.fetch(select2_version)
    end

    OptionSelectors = {
      '2' => ".select2-container-active .select2-result",
      '3' => ".select2-drop-active .select2-result-label",
      '4' => ".select2-results .select2-results__option:not([role='group'])"
    }.freeze

    def option_selector(select2_version)
      OptionSelectors.fetch(select2_version)
    end

    RemoveOptionSelectors = {
      '2' => '.select2-search-choice-close',
      '3' => '.select2-search-choice-close',
      '4' => '.select2-selection__choice__remove'
    }.freeze

    def remove_option_selector(select2_version)
      RemoveOptionSelectors.fetch(select2_version)
    end

  end
end

# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|
config.wrappers :semantic, tag: 'div', class: "field", error_class: 'error', hint_class: 'with_hint' do |b|
  b.use :html5
  b.use :placeholder
  b.use :label_input
  b.optional :maxlength
  b.optional :pattern
  b.optional :min_max
  b.optional :i
  b.use :hint,  wrap_with: { tag: 'div', class: 'hint' }
  b.use :error, wrap_with: { tag: 'div', class: 'ui red pointing above label error' }

end

config.wrappers :semantic_checkbox, tag: 'div', class: "inline field", error_class: 'error', hint_class: 'with_hint' do |b|
  b.use :html5
  b.wrapper tag: 'div', class: 'ui checkbox' do |input|
    input.use :input
    input.wrapper tag: 'label' do |box| end
  end
  b.use :label
end

config.wrappers :semantic_checkbox_slider, tag: 'div', class: "inline field", error_class: 'error', hint_class: 'with_hint' do |b|
  b.use :html5
  b.wrapper tag: 'div', class: 'ui slider checkbox' do |input|
    input.use :input
    input.wrapper tag: 'label' do |slide| end
  end
  b.use :label
end

config.wrappers :semantic_checkbox_toggle, tag: 'div', class: "inline field", error_class: 'error', hint_class: 'with_hint' do |b|
  b.use :html5
  b.wrapper tag: 'div', class: 'ui toggle checkbox' do |input|
    input.use :input
    input.wrapper tag: 'label' do |slide| end
  end
  b.use :label
  
  # Wrappers for forms and inputs using the Twitter Bootstrap toolkit.
  # Check the Bootstrap docs (http://twitter.github.com/bootstrap)
  # to learn about the different styles for forms and inputs,
  # buttons and other elements.
  config.default_wrapper = :semantic
end 
end

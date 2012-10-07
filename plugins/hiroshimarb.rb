module Jekyll
  require 'hiroshimarb'
  class Hiroshimarb < Liquid::Block

    def initialize(tag_name, markup, tokens)
    end

    def render(context)
      ::Hiroshimarb::Information.information
    end
  end
end

Liquid::Template.register_tag('hiroshimarb', Jekyll::Hiroshimarb)

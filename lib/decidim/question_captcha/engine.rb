# frozen_string_literal: true

require "rails"
require "decidim/core"

module Decidim
  module QuestionCaptcha
    # This is the engine that runs on the public interface of question_captcha.
    class Engine < ::Rails::Engine
      isolate_namespace Decidim::QuestionCaptcha

      routes do
        # Add engine routes here
        # resources :question_captcha
        # root to: "question_captcha#index"
      end

      initializer "[module_name].webpacker.assets_path" do
        Decidim.register_assets_path File.expand_path("app/packs", root)
      end
    end
  end
end

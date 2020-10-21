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

      initializer "decidim_question_captcha.assets" do |app|
        app.config.assets.precompile += %w[decidim_question_captcha_manifest.js decidim_question_captcha_manifest.css]
      end
    end
  end
end

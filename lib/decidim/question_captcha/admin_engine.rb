# frozen_string_literal: true

module Decidim
  module QuestionCaptcha
    # This is the engine that runs on the public interface of `QuestionCaptcha`.
    class AdminEngine < ::Rails::Engine
      isolate_namespace Decidim::QuestionCaptcha::Admin

      paths["db/migrate"] = nil
      paths["lib/tasks"] = nil

      routes do
        # Add admin engine routes here
        # resources :question_captcha do
        #   collection do
        #     resources :exports, only: [:create]
        #   end
        # end
        # root to: "question_captcha#index"
      end

      def load_seed
        nil
      end
    end
  end
end

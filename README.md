# Decidim::QuestionCaptcha

Question based captcha for Decidim.

## Usage

QuestionCaptcha will be available as a Component for a Participatory
Space.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "decidim-question_captcha", git: "https://github.com/OpenSourcePolitics/decidim-module-question_captcha.git"
gem "acts_as_textcaptcha", "~> 4.5.1"
```

And then execute:

```bash
bundle
```

For local development, a memory store must be set:
```
rails dev:cache
```

Usage:
* create an initializer:
touch `config/initializers/decidim_questions.rb`
* Fill it with the following:
```ruby
# frozen_string_literal: true

Decidim::QuestionCaptcha.configure do |config|
  config.questions = {
      en: [
          { "question" => "1+5", "answers" => "6,six" },
          { "question" => "The blue hat is what color?", "answers" => "blue" },
          { "question" => "The green hat is what color?", "answers" => "green" },
          { "question" => "The yellow hat is what color?", "answers" => "yellow" },
          { "question" => "The red hat is what color?", "answers" => "red" }

      ],
      es: [
          { "question" => "1+2", "answers" => "3,tres" },
          { "question" => "El sombrero verde es de qué color?", "answers" => "verde" }
      ],
      ca: [
          { "question" => "2+2", "answers" => "4,quatre" },
          { "question" => "El barret verd és de quin color?", "answers" => "verd" }
      ]
  }
end
``` 
* Replace the questions for the corresponding locales, if a question is missing in a locale, the default one is used. 


## Contributing

See [Decidim](https://github.com/decidim/decidim).

## License

This engine is distributed under the GNU AFFERO GENERAL PUBLIC LICENSE.

require 'pry'

def languages
  languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}
end


def reformat_languages(languages)
  # your code here
  newhash = {}

  languages.each do |style, language|
    language.each do |name, attributes|
      newhash[name] ||= attributes
      newhash[name][:style] = []
      newhash[name][:style] << style
    end
  end
  newhash[:javascript][:style] << :oo
  newhash

end

reformat_languages(languages)

require 'factory_girl'

FactoryGirl.define do
  factory :playlist do
    sequence(:name) { |n| "Playlist #{n}"}
    creator { 'Still Grandma'}
  end

  factory :song do
    sequence(:title) { |n| "Song #{n}"}
    artist { 'Kyle' }
    album { 'Why ME??' }
    # :playlist
  end

  factory :songlist do
    playlist
    song
  end
end

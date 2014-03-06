require 'spec_helper'

module Moodle2CC::Moodle2Converter
describe DiscussionConverter do
  let(:forum){Moodle2CC::Moodle2::Models::Forum.new}

    it 'converts a moodle forum to a canvas discussion' do
      forum.id = '3'
      forum.name = 'Forum Name'
      forum.intro = 'Forum Introduction'

      discussion = subject.convert(forum)

      expect(discussion.identifier).to eq '3'
      expect(discussion.title).to eq 'Forum Name'
      expect(discussion.text).to eq 'Forum Introduction'
      expect(discussion.discussion_type).to eq 'threaded'

    end
  end
end
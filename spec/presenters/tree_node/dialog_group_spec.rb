require 'shared/presenters/tree_node/common'

describe TreeNode::DialogGroup do
  subject { described_class.new(object, nil, {}) }
  let(:object) { FactoryGirl.create(:dialog_group) }

  include_examples 'TreeNode::Node#key prefix', '-'
  include_examples 'TreeNode::Node#icon', 'fa fa-comments-o'

  describe '#title' do
    it 'returns with the label' do
      expect(subject.text).to eq(object.label)
    end
  end
end

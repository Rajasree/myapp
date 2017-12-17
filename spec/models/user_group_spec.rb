require 'rails_helper'

RSpec.describe UserGroup, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe UserGroup do

    context "create new group" do
      it "Should check that the records fails to save if roles are the same" do
      	user = UserGroup.create(name: "testing", director_id: 2, assistant_director_id: 1, member_id: 1)
      	expect(UserGroup.all.length).to eq(0)
      end

      it "Should check that the records gets saved if roles are not the same" do
      	user = UserGroup.create(name: "testing", director_id: 2, assistant_director_id: 1, member_id: 3)
      	expect(UserGroup.all.length).to eq(1)
      end

      it "Should check that the records fails to saved if the group name is same" do
      	user = UserGroup.create(name: "testing", director_id: 2, assistant_director_id: 1, member_id: 3)
      	user = UserGroup.create(name: "testing", director_id: 2, assistant_director_id: 1, member_id: 3)
      	expect(UserGroup.all.length).to eq(1)
      end
    end
  end
end

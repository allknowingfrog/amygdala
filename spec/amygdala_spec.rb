RSpec.describe Amygdala do
  it "has a version number" do
    expect(Amygdala::VERSION).not_to be nil
  end

  describe "move" do
    subject { Amygdala.move({}) }

    it { is_expected.to eq("up") }

    describe "with set_move_handler" do
      before do
        Amygdala.set_move_handler(proc { "down" })
      end

      it { is_expected.to eq("down") }
    end
  end

  describe "configs" do
    subject { Amygdala.configs }

    it "has defaults" do
      expect(subject["color"]).to eq("0x000000")
    end

    describe "with set_configs" do
      before do
        Amygdala.set_configs({"version" => "1.0.0"})
      end

      it "overrides defaults" do
        expect(subject["color"]).to eq("0x000000")
        expect(subject["version"]).to eq("1.0.0")
      end
    end
  end
end

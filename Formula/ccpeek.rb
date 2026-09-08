class Ccpeek < Formula
  desc "Explore your Claude Code history"
  homepage "https://github.com/ahmedelgabri/ccpeek"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.1.1/ccpeek-2.1.1-darwin-arm64.tar.gz"
      sha256 "030470886a5d6dab5fc85d88d317bced6710e339fb8063ad23d26084dc5633d0"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.1.1/ccpeek-2.1.1-darwin-amd64.tar.gz"
      sha256 "da6a7c5d0061462a8d73ac0ecd9042c509ab6cbed711304d787a8566762a36e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.1.1/ccpeek-2.1.1-linux-arm64.tar.gz"
      sha256 "c211675121d8793b1762720e486776500e698ab667e803eac422cb42988215c2"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.1.1/ccpeek-2.1.1-linux-amd64.tar.gz"
      sha256 "0392b3371e41bd62b7145917f82577a8642dd3aa058adbebc33c8051560cb4a6"
    end
  end

  def install
    bin.install "ccpeek"
    bash_completion.install "completions/ccpeek.bash" => "ccpeek"
    zsh_completion.install "completions/_ccpeek"
    fish_completion.install "completions/ccpeek.fish"
    man1.install Dir["man/*.1"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccpeek --version")
  end
end

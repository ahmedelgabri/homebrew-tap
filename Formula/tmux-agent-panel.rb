class TmuxAgentPanel < Formula
  desc "Agent-aware tmux pane picker with live coding-agent status"
  homepage "https://github.com/ahmedelgabri/tmux-agent-panel"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.7/tap-0.1.7-darwin-amd64.tar.gz"
      sha256 "4d0afe329689374e45a33ad8ddba6a8e490c7df5a622dc97c8452724352006b0"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.7/tap-0.1.7-darwin-arm64.tar.gz"
      sha256 "83112252634abaec1c79eef223e71eb8a0a1d7d0244b6231ca24e6be0f45538b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.7/tap-0.1.7-linux-amd64.tar.gz"
      sha256 "50f53a6219ed75f9a1aea535c7a99ea2afd2216fcfce6c2be6be3ef619922b3a"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.7/tap-0.1.7-linux-arm64.tar.gz"
      sha256 "3ccd662f46dfe51df708938a2e42a1bdc179f0b393df34b71a82224f28fbe105"
    end
  end

  depends_on "tmux"

  def install
    bin.install "tap"
    bash_completion.install "completions/tap.bash" => "tap"
    zsh_completion.install "completions/_tap"
    fish_completion.install "completions/tap.fish"
  end

  test do
    system bin/"tap", "--version"
  end
end

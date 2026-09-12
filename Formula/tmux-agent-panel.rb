class TmuxAgentPanel < Formula
  desc "Agent-aware tmux pane picker with live coding-agent status"
  homepage "https://github.com/ahmedelgabri/tmux-agent-panel"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.2.2/tap-0.2.2-darwin-amd64.tar.gz"
      sha256 "fdf6c508a296d59499962d351cc6ec6a47687c968ec5883e7a67e6912fe64716"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.2.2/tap-0.2.2-darwin-arm64.tar.gz"
      sha256 "1470a591bb3f02be306c8c79747c6672882ecaa936ffff91e62ede75ceb683db"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.2.2/tap-0.2.2-linux-amd64.tar.gz"
      sha256 "5079e1159815a5724446acf9333acab829afb57713021d96649642243e5602d7"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.2.2/tap-0.2.2-linux-arm64.tar.gz"
      sha256 "0cb19cea373723c6c2b3680eb8a9c7734a66fddbaba53c883706c85d05f76044"
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

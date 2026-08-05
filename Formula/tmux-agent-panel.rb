class TmuxAgentPanel < Formula
  desc "Agent-aware tmux pane picker with live coding-agent status"
  homepage "https://github.com/ahmedelgabri/tmux-agent-panel"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.3/tap-0.1.3-darwin-amd64.tar.gz"
      sha256 "94369ea5c2bb6bb00895387d0b7a9a873b925c7971a121f08fd08a0f9790b72f"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.3/tap-0.1.3-darwin-arm64.tar.gz"
      sha256 "95796c47aabb892392c12b6c21827242bf5bf505623aa4ab36437c9c73eb5a27"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.3/tap-0.1.3-linux-amd64.tar.gz"
      sha256 "72ff00ff28931e423233141cb98c0c0e40186402b918aea82aca7754e1602b47"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.3/tap-0.1.3-linux-arm64.tar.gz"
      sha256 "b882511528731efb8fbba42d2731bd6c1f79db8689d4762a904d060b2eb1ee64"
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

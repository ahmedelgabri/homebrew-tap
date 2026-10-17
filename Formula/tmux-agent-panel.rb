class TmuxAgentPanel < Formula
  desc "Agent-aware tmux pane picker with live coding-agent status"
  homepage "https://github.com/ahmedelgabri/tmux-agent-panel"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.2.3/tap-0.2.3-darwin-amd64.tar.gz"
      sha256 "0c51645af9d01dc9e2ed76956171febe2e697eb075e5a3584b1a317497fbf3b3"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.2.3/tap-0.2.3-darwin-arm64.tar.gz"
      sha256 "829dfbd430fbd74c25d400bed9c3ec0abedf9fc461b2ec8407d5dde47b65b739"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.2.3/tap-0.2.3-linux-amd64.tar.gz"
      sha256 "7ea1ec3df0c87650f68993e1dc9289a9f5276b801dac04895d764e87543363dc"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.2.3/tap-0.2.3-linux-arm64.tar.gz"
      sha256 "e0dbc727e2131acc3a72ddc90e1916b868219c59de875b6bc72d76f6e8dcdb2c"
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

class TmuxAgentPanel < Formula
  desc "Agent-aware tmux pane picker with live coding-agent status"
  homepage "https://github.com/ahmedelgabri/tmux-agent-panel"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.8/tap-0.1.8-darwin-amd64.tar.gz"
      sha256 "ff9404bd99ee5885cbb260306e074de93420c775c6a5f01d9606db03b82f2cde"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.8/tap-0.1.8-darwin-arm64.tar.gz"
      sha256 "585c72680358e4701ab88831e5f8ad23eeba30243dbe9e3f08672a74ed89cc56"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.8/tap-0.1.8-linux-amd64.tar.gz"
      sha256 "fe8fc16e2dd525066fd1d28e4da308e3c049f8210389dec6d2e05a5d3177ae5b"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.8/tap-0.1.8-linux-arm64.tar.gz"
      sha256 "5f3cac41cfc43ecff1cd3495e09c5929d1fbefe29dc9e39fb223fafd104ce3c8"
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

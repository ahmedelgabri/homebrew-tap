class TmuxAgentPanel < Formula
  desc "Agent-aware tmux pane picker with live coding-agent status"
  homepage "https://github.com/ahmedelgabri/tmux-agent-panel"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.10/tap-0.1.10-darwin-amd64.tar.gz"
      sha256 "c54bf151770f656806d37600e2306eb73544232805c4eb1f8a2149aa149535c9"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.10/tap-0.1.10-darwin-arm64.tar.gz"
      sha256 "5cc24b4ec74a325d95fb455dd8e3ca8d3e848c41a3c3a5f3ab62e946937ebacf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.10/tap-0.1.10-linux-amd64.tar.gz"
      sha256 "704091975950eb9ceec5afe5b45e764b69badab19073b5ed85ad7d78b5bd0e3a"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.10/tap-0.1.10-linux-arm64.tar.gz"
      sha256 "de775805489134fc43218b45351594e2d4d64654aacdc6423bff7f4865d5b719"
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

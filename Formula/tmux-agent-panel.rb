class TmuxAgentPanel < Formula
  desc "Agent-aware tmux pane picker with live coding-agent status"
  homepage "https://github.com/ahmedelgabri/tmux-agent-panel"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.4/tap-0.1.4-darwin-amd64.tar.gz"
      sha256 "f25a5b0954201cb2eef6b0c725a17d52a5b4832ee412bdc11291f8b88e15bc47"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.4/tap-0.1.4-darwin-arm64.tar.gz"
      sha256 "4b7f209843ae05a92f49e4ab197634855bf2c8a9973b3419c26d9fd8d45a388e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.4/tap-0.1.4-linux-amd64.tar.gz"
      sha256 "666c7e7a793aaa4300d0c9b12be6c5fa4d0a3257a10d0ce39f05e7b5232074fb"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.4/tap-0.1.4-linux-arm64.tar.gz"
      sha256 "7d8bc658b36ed65ca22246ee5589f5fbe7d7f528e9f31c36150bb061b6dfb134"
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

class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.45.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.45.0/tfplan2md_1.45.0_macos-arm64.tar.gz"
      sha256 "cd04c7558ecf57b0f5b80dca6a12101ad41828182d5cdf2b58822ae397482d60"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.45.0/tfplan2md_1.45.0_linux-x64.tar.gz"
      sha256 "45098c97a22a93c0da8190538c4fc685a20a305078c2a163426631b355797665"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.45.0/tfplan2md_1.45.0_linux-arm64.tar.gz"
      sha256 "7cebf9eb0a8b99da26acd043a8396ea014cf78171f7c42355adcf2376c0a4aca"
    end
  end

  def install
    bin.install "tfplan2md"
  end

  test do
    system "#{bin}/tfplan2md", "--version"
    system "#{bin}/tfplan2md", "--help"
  end
end

class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.41.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.41.1/tfplan2md_1.41.1_macos-arm64.tar.gz"
      sha256 "8d2c0300e3d0446a553b8b49329e51e67505b39d7b2a94ecb07379f7c7183a30"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.41.1/tfplan2md_1.41.1_linux-x64.tar.gz"
      sha256 "e31d3dc8ba9ce28143ca4bb9ff260fc126da59d726efe609dc5f377801c42ee1"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.41.1/tfplan2md_1.41.1_linux-arm64.tar.gz"
      sha256 "4ada82d6dad07c9ea00bd20df54b3edeed2354bfbc583ce35fa8caa54111011a"
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

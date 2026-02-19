class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.22.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.22.1/tfplan2md_1.22.1_macos-arm64.tar.gz"
      sha256 "4c908beedf60075ba2df486831509b800a0c8b21f23e39f0356c0a4373bcaefd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.22.1/tfplan2md_1.22.1_linux-x64.tar.gz"
      sha256 "64af55b11e097e83af153d824ce6965fd929a3e294722f759e8f9d218f14d0a2"
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

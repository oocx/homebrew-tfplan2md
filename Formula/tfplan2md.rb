class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.23.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.23.0/tfplan2md_1.23.0_macos-arm64.tar.gz"
      sha256 "b7f6726fe8d43d10f836726c131da27930427ee446fa4ed6e02a70ddcc961871"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.23.0/tfplan2md_1.23.0_linux-x64.tar.gz"
      sha256 "0dfd417aad1eb865f718f55a52e27915d8ac36855fb0860a90e8dc872946855f"
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

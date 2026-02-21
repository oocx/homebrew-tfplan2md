class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.26.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.26.0/tfplan2md_1.26.0_macos-arm64.tar.gz"
      sha256 "53efd1823cbcc49c155d852e0e4ad3f09d6da0cca6837424042852f15116117e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.26.0/tfplan2md_1.26.0_linux-x64.tar.gz"
      sha256 "b464bd5780831ff7dc995e463f53138250375a2e9343c31875f8fa131dafd6b2"
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

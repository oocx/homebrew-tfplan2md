class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.31.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.31.1/tfplan2md_1.31.1_macos-arm64.tar.gz"
      sha256 "19276feaa6c8f653d4197cd675ff84db3880d9d700e8b03d553b630494070ec2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.31.1/tfplan2md_1.31.1_linux-x64.tar.gz"
      sha256 "23f2404f804346ab177e14c7bfb9e247e2e62cc052e5a0d37c6c9727f6c248c1"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.31.1/tfplan2md_1.31.1_linux-arm64.tar.gz"
      sha256 "d82f9a622ccd4b9d8de889120721271147ef6e4fce8064cc6bc2c16e383b6d66"
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

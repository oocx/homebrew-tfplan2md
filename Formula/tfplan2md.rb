class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.43.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.43.3/tfplan2md_1.43.3_macos-arm64.tar.gz"
      sha256 "40103f1b10efd39979a6e93e3c6b1d5561ba02af792030e1ca99aadf81347960"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.43.3/tfplan2md_1.43.3_linux-x64.tar.gz"
      sha256 "cf9a038ee6ddd23ae76728f796ad3ba936e16e98dd4ceed50ad19e4999e4fb4b"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.43.3/tfplan2md_1.43.3_linux-arm64.tar.gz"
      sha256 "600f4745accc18d2c7bff2965c8681705e4d9da8ade68e8197fb76f01856c1e0"
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

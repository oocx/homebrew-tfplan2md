class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.45.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.45.1/tfplan2md_1.45.1_macos-arm64.tar.gz"
      sha256 "0aa488b6a42cc29fbd74f7806c811d4d821521f25a064cb309d0ba66ae5cdd20"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.45.1/tfplan2md_1.45.1_linux-x64.tar.gz"
      sha256 "a9eaa058464928eb2eef0b3fa62360269a36061d633c621c6927590aa6ee1bb0"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.45.1/tfplan2md_1.45.1_linux-arm64.tar.gz"
      sha256 "0f4993780fbb45f560296e8721b20df7ab837231bd55b3c3fee7c23f61a5f3c3"
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

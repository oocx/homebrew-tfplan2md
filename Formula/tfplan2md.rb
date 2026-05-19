class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.44.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.44.0/tfplan2md_1.44.0_macos-arm64.tar.gz"
      sha256 "ae405ebf845be34ee1fb4797676071e8a88083ed4217d51790c3d1ea986da0f7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.44.0/tfplan2md_1.44.0_linux-x64.tar.gz"
      sha256 "bb5690527300472b8079b8486d52dbcf9306805970c65e47332adba7340299e7"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.44.0/tfplan2md_1.44.0_linux-arm64.tar.gz"
      sha256 "70373ab9279a22dc7a1437125f8590d8a9f921384e0e25878e09dad4311d8be6"
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

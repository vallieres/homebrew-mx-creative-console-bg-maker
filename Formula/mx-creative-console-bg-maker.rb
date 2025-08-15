class MxCreativeConsoleBgMaker < Formula
  desc "A command-line tool that splits images into a 3x3 grid for the Logitech MX Creative Console"
  homepage "https://github.com/vallieres/mx-creative-console-bg-maker"
  url "https://github.com/vallieres/mx-creative-console-bg-maker/archive/refs/tags/2025.2.tar.gz"
  sha256 "edfa515ce3d403933d6147b066b27200990443491078f39c7c858169a115c503"
  license "MIT"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/ccbm"
  end
  
  test do
    # Test that installation worked - since it requires an image file, just check help
    output = shell_output("#{bin}/ccbm --help2>&1", 1)
    assert_match "Usage: ccbm <image_path>", output
  end
end

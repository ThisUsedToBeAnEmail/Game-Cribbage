use MIME::Base64 qw/encode_base64url/;

my $file = 'test.png';
open my $fh, '<', $file;
my $data = do { local $/; <$fh> };
close $fh;
print encode_base64url($data) . "\n";

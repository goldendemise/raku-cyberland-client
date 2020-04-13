use v6;
use HTTP::UserAgent;
use CyberlandUrls;
unit module Cyberland;

my $user-agent = HTTP::UserAgent.new();
#our $json-content is export = $user-agent.get($working-test).content;

sub make-request($url) is export {
    $user-agent.get($url).content;
}


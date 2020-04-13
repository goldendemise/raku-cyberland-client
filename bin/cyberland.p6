#!/usr/bin/env perl6
use v6;
use lib 'lib';
use Cyberland;
use CyberlandUrls;
use JSON::Fast;
use Routing;


sub MAIN() {
    my $board-selection = introduction;
    my $stringified-content = from-json make-request($cl-base-url ~ "/$board-selection/" ~ "?thread=&num=10");
    #my $stringified-content = from-json $json-content;

    display-content($stringified-content);

    my $thread-selection = select-thread;
    my $json-content = from-json make-request($cl-base-url ~ "/$board-selection/" ~ "?thread=$thread-selection&num=50");
    display-content($json-content);
}



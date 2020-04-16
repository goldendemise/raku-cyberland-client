#!/usr/bin/env perl6
use v6;
use lib 'lib';
use Cyberland;
use CyberlandUrls;
use Routing;
use JSON::Fast;

sub MAIN() {
    my $board-selection = introduction;
    my $i-board = get-board("t");

    display-content($i-board);

    my $thread-selection = select-thread;
    my $json-content = from-json make-request($cl-base-url ~ "/$board-selection/" ~ "?thread=$thread-selection&num=50");
    display-content($json-content);
}



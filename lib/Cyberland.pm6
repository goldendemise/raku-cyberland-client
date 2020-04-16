use v6;
use HTTP::UserAgent;
use CyberlandUrls;
use Terminal::ANSIColor;
unit module Cyberland;


my $user-agent = HTTP::UserAgent.new();
#our $json-content is export = $user-agent.get($working-test).content;

sub make-request($url) is export {
    $user-agent.get($url).content;
}

sub get-board($letter) is export {
    from-json make-request($cl-base-url ~ "/$letter/" ~ "?thread=&num=1000")
}

sub display-content($posts) is export {
    for @$posts {
        say "$_{'id'}:";
        say color('bold blue'), "$_{'content'}\n", color('reset');
    }
}

sub list-posts($posts) {
    for @$posts {
        say "$_{'id'}:";
        say color('bold blue'), "$_{'content'}\n", color('reset');
    }
}
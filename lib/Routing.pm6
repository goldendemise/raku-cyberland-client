sub introduction() is export {
    print q:to/END/;
    Cyberland2 Menu:

    /t/: technology
    /n/: news
    /i/: images
    /o/: off topic

    Enter Selection:
    END
    prompt ">";
}

sub select-thread() is export {
    say "Please make a thread selection:";
    prompt(">");
}


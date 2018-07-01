/* contrib/hunspell_xal/hunspell_xal--0.1.sql */

-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION hunspell_xal" to load this file. \quit

CREATE TEXT SEARCH DICTIONARY xal_hunspell (
    TEMPLATE = ispell,
    DictFile = xal,
    AffFile = xal,
    StopWords = xal
);

COMMENT ON TEXT SEARCH DICTIONARY xal_hunspell IS 'hunspell dictionary for kalmyk language';

CREATE TEXT SEARCH CONFIGURATION xal_hunspell (
    COPY = simple
);

COMMENT ON TEXT SEARCH CONFIGURATION xal_hunspell IS 'hunspell configuration for kalmyk language';

ALTER TEXT SEARCH CONFIGURATION xal_hunspell
    ALTER MAPPING FOR asciiword, asciihword, hword_asciipart,
        word, hword, hword_part
    WITH xal_hunspell;
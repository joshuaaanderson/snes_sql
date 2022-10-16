WITH individualWord AS (
    SELECT
        UNNEST(regexp_split_to_array(title, '\s')) AS Word
    FROM
        all_snes_titles
)
SELECT
    COUNT(*) wordCount,
    word
FROM
    individualWord
WHERE
    word NOT IN (
        '',
        'and',
        'for',
        'of',
        'on',
        '&',
        'the',
        'The',
        'in',
        'to',
        'or'
    )
GROUP BY
    word
ORDER BY
    1 desc WITH individualWord AS (
        SELECT
            UNNEST(regexp_split_to_array(title, '\s')) AS Word
        FROM
            all_snes_titles
    )
SELECT
    COUNT(*) wordCount,
    word
FROM
    individualWord
WHERE
    word NOT IN (
        '',
        'and',
        'for',
        'of',
        'on',
        '&',
        'the',
        'The',
        'in',
        'to',
        'or'
    )
GROUP BY
    word
ORDER BY
    1 desc
LIMIT
    10
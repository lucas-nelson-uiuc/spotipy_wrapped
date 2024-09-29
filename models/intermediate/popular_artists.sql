select
    artist_name,
    count(artist_name) as freq,
    sum(ms_played) as total_milliseconds,
    {{ convert_milliseconds('ms_played', 'minutes') }}
from extended_streaming_history
group by artist_name
having total_milliseconds > (100 * 60 * 1000)
order by freq desc
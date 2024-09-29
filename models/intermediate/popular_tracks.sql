select
  artist_name,
  album_name,
  track_name,
  sum(ms_played) as total_milliseconds
from extended_streaming_history
group by artist_name, album_name, track_name
having total_milliseconds // 1000 // 60 > 100
order by total_milliseconds desc
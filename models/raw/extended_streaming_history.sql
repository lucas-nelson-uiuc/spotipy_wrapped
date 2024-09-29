select
  ts,
  ms_played,
  master_metadata_album_artist_name as artist_name,
  master_metadata_album_album_name as album_name,
  master_metadata_track_name as track_name,
  spotify_track_uri,
  reason_start,
  reason_end,
  shuffle,
  skipped
from
  spotify_extended_history
where artist_name is not null
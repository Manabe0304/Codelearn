CREATE TABLE tracks(
    track TEXT, 
    album TEXT,
    track_length_mins SMALLINT
);


INSERT INTO tracks (track, album, track_length_mins)
VALUES
('Basket Case', 'Dookie', 3),
('Hollywood Case', 'Hollywood', 5),
('This is me', 'Disney', 10)
RETURNING *;

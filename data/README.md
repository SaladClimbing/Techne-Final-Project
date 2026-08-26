# Data

## Download

Data is not tracked in git due to its size (~1.1 GB). Download from [MoneyPuck](https://moneypuck.com/data.htm):

```bash
curl -o data/shots_2007-2024.csv https://peter-tanner.com/moneypuck/downloads/shots_2007_2024.csv
```

## License

Data downloaded from MoneyPuck for educational use.

## Data Dictionary

| Column | Description |
|--------|-------------|
| `shotID` | Unique shot identifier |
| `season` | Season year (e.g., 2023 for 2023-24) |
| `game_id` | Unique game identifier |
| `period` | Period number (1-5, OT/SO) |
| `time` | Time into the period (seconds) |
| `event` | Event type (SHOT, MISS, GOAL, etc.) |
| `goal` | 1 if goal, 0 otherwise |
| `team` | Shooting team code |
| `xCord`, `yCord` | Shot coordinates (feet, NHL rink) |
| `xCordAdjusted`, `yCordAdjusted` | Coordinates adjusted for arena differences |
| `shotAngle` | Angle of shot from goal (degrees) |
| `shotDistance` | Distance of shot from goal (feet) |
| `shotType` | Shot type (WRIST, SLAP, SNAP, TIP, BACK, WRAP) |
| `shotOnEmptyNet` | 1 if shot on empty net |
| `shotRebound` | 1 if shot was a rebound |
| `shotRush` | 1 if shot was on a rush |
| `shooterName` | Name of the shooter |
| `shooterPlayerId` | Unique player identifier |
| `goalieNameForShot` | Name of the goalie |
| `goalieIdForShot` | Unique goalie identifier |
| `homeSkatersOnIce` | Home team skaters on ice |
| `awaySkatersOnIce` | Away team skaters on ice |
| `xGoal` | Expected goal probability |
| `isPlayoffGame` | 1 if playoff game |
| `isHomeTeam` | 1 if shooter is on home team |

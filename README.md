# PharoEDA Event Replay

A tool to replay events from the Event Store matching a certain criteria.

## Motivation

Applications might need to consume past events for whatever reason, including recreating read models.

## Design

PharoEDA Event Replay is a PharoEDA application accepting a command with the event criteria, and publishing the matching events.

## Usage

First, load it with Metacello:

```smalltalk
Metacello new repository: 'github://rydnr/pharo-eda-event-replay:main'; baseline: #PharoEDAEventReplay; load
```

Then, run it with as a regular PharoEDA application.

```smalltalk
EDAEventReplay withName: 'event-replay'
```

## Work in progress

- Support for initial command.
- Design event streaming.

## Credits

- Background of the Pharo image by <a href="https://pixabay.com/users/inspiredimages-57296/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=1140494">InspiredImages</a> from <a href="https://pixabay.com/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=1140494">Pixabay</a>.

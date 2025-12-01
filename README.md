# Barebones config for waywall
Barebones config for waywall based of what a lot of top runners use (Doogile, Feinberg, etc.)

## Setup
You can use it by either downloading `init.lua` and placing it in your waywall config directory `~/.config/waywall/`, or by cloning the repository with the following command.
```bash
git clone https://github.com/arjuncgore/waywall_barebones_config.git ~/.config/waywall
```
IMPORTANT: If you already have a config set up, you will need to move it either manually or with this command
```bash
mv ~/.config/waywall ~/.config/waywall.bkp
```
If you have a 1440p monitor, add this argument to the clone command `-b 1440`

## Overlay
This config requires a 30 pixel wide measuring overlay like the one provided, or you can generate your own with this link, setting the overlay width to 30.
https://qmaxxen.github.io/overlay-gen/more-options/

## Ninbot
Make sure your ninjabrain bot (and paceman if you need it) are in the following directory `~/mcsr/`, or change the path at the start of `init.lua`.

## How I made it
Here's a timelapse video of me creating the configuration if you're interested
https://youtu.be/TZ__BxfP0Zo

## Demo Pictures
![thin](https://private-user-images.githubusercontent.com/157839255/520559730-50669637-cb27-47be-8b39-6e2be9b715ef.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NjQ1NTczMzIsIm5iZiI6MTc2NDU1NzAzMiwicGF0aCI6Ii8xNTc4MzkyNTUvNTIwNTU5NzMwLTUwNjY5NjM3LWNiMjctNDdiZS04YjM5LTZlMmJlOWI3MTVlZi5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjUxMjAxJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI1MTIwMVQwMjQzNTJaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT0wNzExYzE1YzNkYTQ5YWYxYmExZmUxOTUyNDVkNTJlZjI3Mjg2NDkyNmJkYzJlNTliZGJiMDI5NjBiMWYyYWFlJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.0q23Yi49mGO3JXUANFIW46L842RlbiZd1TdUd4JOVH0)

![eye measuring](https://private-user-images.githubusercontent.com/157839255/520559700-ce94b035-903d-4b5e-b561-3825fa6b9d3c.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NjQ1NTczMzIsIm5iZiI6MTc2NDU1NzAzMiwicGF0aCI6Ii8xNTc4MzkyNTUvNTIwNTU5NzAwLWNlOTRiMDM1LTkwM2QtNGI1ZS1iNTYxLTM4MjVmYTZiOWQzYy5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjUxMjAxJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI1MTIwMVQwMjQzNTJaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT0yOTQxNjEyZWFkYmE3OWVjNWU3MDljMmRkYjhmY2M1ZWVlM2ZkNDQxNjI5Yzg0NmRkYmM3Y2VmYjA4OGJjZDIzJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.Iklq7SO1wZOLbzFvpcLuMG6BqpfMNdpvuLVbK5jG-1s)

![tall preemptive](https://private-user-images.githubusercontent.com/157839255/520559719-4ff23405-4bf6-406b-ab85-9530701ff5cd.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NjQ1NTczMzIsIm5iZiI6MTc2NDU1NzAzMiwicGF0aCI6Ii8xNTc4MzkyNTUvNTIwNTU5NzE5LTRmZjIzNDA1LTRiZjYtNDA2Yi1hYjg1LTk1MzA3MDFmZjVjZC5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjUxMjAxJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI1MTIwMVQwMjQzNTJaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1jNTFlM2MzODhiYjVjYzE3ZjdjNmNmYjlmMmY4NDc4MGY1OWYxZDkwM2RiZWNmY2ZjOWI5MDNiZDNiOTQ1NGI5JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.7y6rZGmamWn_2VTjtq1wXQxCtuhBoq_e3Qnh3uiGB5A)

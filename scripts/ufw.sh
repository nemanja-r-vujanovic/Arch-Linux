#!/bin/bash

sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw --force enable

echo
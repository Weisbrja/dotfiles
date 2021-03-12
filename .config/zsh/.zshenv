#!/bin/zsh

get_xresource() {
	xrdb -query | grep $1 | awk '{print $2}'
}

redmine_auto_group_assign
=========================

A Redmine plugin to automatically assign issues to different groups.

## Prerequisites
* This plugin has been tested on Redmine 2.1.2, 2.2.0 and 2.2.1. It should work for any Redmine version that supports the 'Allow issues to be assigned to groups'-functionality.
* Redmine needs to be configured by an administrator to allow issues to be assigned to groups 

## Configure
There is no public configuration in Redmine. Just edit the lib\auto_group_assign\hooks.rb file to use the group you want. That same file can be edited to add custom logic to determine the correct group to assign an issue to (for example based on user or tracker for the issue).

## Install
Install the plugin as a normal Redmine plugin by creating a folder for the plugin in the plugins-directory of the Redmine root (such as redmine_auto_group_assign)
and copying the files to that directory. Restart your Redmine application to start using the plugin.

## Use
The plugin will assign a group to any issue that is created without an assignee. In order to automatically assign a group for each new issue and not allow the user to set an assignee just set the permissions for the assignee-field to readonly for the user's role.

No group will be assigned if a user explicitly assigns an issue to a user or group. If a user has permissions to set an assignee but leaves the field empty this plugin wil likewise assign the issue to a group.

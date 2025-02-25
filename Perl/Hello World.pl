#!/usr/bin/perl

# Recreat Hello, World! program on Wikipedia
use strict;
use warnings;
use Gtk3 '-init';

# Create main window:
my $mw = Gtk3::Window->new('toplevel');
$mw->set_title('GTK3 Perl Window');
$mw->set_border_width(10);
$mw->set_default_size(300, 200);
$mw->signal_connect('delete-event' => sub { Gtk3::main_quit; });

# Create a grid
my $grid = Gtk3::Grid->new();
$grid->set_column_spacing(10);
$grid->set_row_spacing(10);
$mw->add($grid);

# 'Hello, world!' label:
my $label = Gtk3::Label->new('Hello, World!');
$grid->attach($label, 0, 0, 1, 1);

# Button to quit:
my $button = Gtk3::Button->new_with_label('Ahoy-hoy!');
$grid->attach($button, 0, 1, 1, 1);
$button->signal_connect('clicked' => sub { Gtk3::main_quit; });

# Show everything:
$mw->show_all;
Gtk3::main;

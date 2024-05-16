package Game::Cribbage::Play::Score;

use strict;
use warnings;

use Rope;
use Rope::Autoload;

property scores => (
	initable => 1,
	writeable => 0,
	configurable => 0,
	enumerable => 1,
	value => {
		run => [3, 4, 5, 6, 7],
		pair => [2, 6, 12],
		fifteen => 2,
		go => 1,
		pegged => 1,
		flipped => 1
	}
);

property total_score => (
	initable => 1,
	writeable => 1,
	configurable => 0,
	enumerable => 1
);


property player => (
	initable => 1,
	writeable => 0,
	configurable => 0,
	enumerable => 1
);

property card => (
	initable => 1,
	writeable => 0,
	configurable => 0,
	enumerable => 1
);

property pair => (
	initable => 1,
	writeable => 1,
	configurable => 0,
	enumerable => 1
);

property run => (
	initable => 1,
	writeable => 1,
	configurable => 0,
	enumerable => 1
);

property fifteen => (
	initable => 1,
	writeable => 1,
	configurable => 0,
	enumerable => 1
);

property pegged => (
	initable => 1,
	writeable => 1,
	configurable => 0,
	enumerable => 1
);

property go => (
	initable => 1,
	writeable => 1,
	configurable => 0,
	enumerable => 1
);

property flipped => (
	initable => 1,
	writeable => 1,
	configurable => 0,
	enumerable => 1
);

function score => sub {
	my ($self) = @_;
	my $score = 0;
	for (qw/fifteen go pegged flipped/) {
		if ( $self->$_ ) {
			$score += $self->scores->{$_};
		}
	}
	for (qw/pair run/) {
		if ($self->$_) {
			$score += $self->scores->{$_}->[$self->$_ - 1];
		}
	}
	$self->total_score = $score;
	return $score;
};

1;

use Test::More;

use Game::Cribbage::Player::Hand;

use Game::Cribbage::Board;
use Game::Cribbage::Deck::Card;
use Game::Cribbage::Play;
use Game::Cribbage::Play::Card;

my $play = Game::Cribbage::Play->new();

my $card = $play->card(
	'player2',
	Game::Cribbage::Deck::Card->new(
		suit => 'H',
		symbol => '3'
	)
);

$card = $play->card(
	'player1',
	Game::Cribbage::Deck::Card->new(
		suit => 'H',
		symbol => '2'
	)
);

$card = $play->card(
	'player1',
	Game::Cribbage::Deck::Card->new(
		suit => 'H',
		symbol => '4'
	)
);

$card = $play->card(
	'player1',
	Game::Cribbage::Deck::Card->new(
		suit => 'H',
		symbol => 'A'
	)
);


ok(1);


done_testing();

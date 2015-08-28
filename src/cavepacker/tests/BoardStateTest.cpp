#include "tests/TestShared.h"
#include "cavepacker/server/map/BoardState.h"
#include "cavepacker/server/map/deadlock/DeadlockDetector.h"

namespace cavepacker {

class BoardStateTest: public AbstractTest {
protected:
	void fillState(BoardState& s, const char* board, bool convertPlayers = true) const {
		int col = 0;
		int row = 0;
		int maxCol = 0;
		const char *d = board;
		while (*d != '\0') {
			if (*d == '\n') {
				if (*(d + 1) == '\0')
					break;
				++row;
				maxCol = std::max(maxCol, col);
				col = 0;
			} else {
				++col;
			}
			++d;
		}
		// we need the size for proper index calculations
		s.setSize(maxCol, row + 1);
		// after finding out the size - let's fill the board
		d = board;
		col = 0;
		row = 0;
		while (*d != '\0') {
			if (*d == '\n') {
				if (*(d + 1) == '\0')
					break;
				++row;
				col = 0;
			} else {
				char c = *d;
				// usually other players block the movement, but for the test we just ignore this
				if (convertPlayers && (c == Sokoban::PLAYER || c == Sokoban::PLAYERONTARGET))
					c = Sokoban::GROUND;
				ASSERT_TRUE(s.setField(col, row, c)) << "Could not set the field " << c << " at " << col << ":" << row;
				++col;
			}
			++d;
		}
		// at least 3 rows are needed
		ASSERT_GE(row, 2) << "could not fill the board state with " << board;
		s.initDeadlock();
	}

	void testDeadlock(const char *mapStr) {
		SCOPED_TRACE(va("testDeadlock\n%s", mapStr));
		BoardState s;
		fillState(s, mapStr);
		ASSERT_TRUE(s.hasDeadlock());
	}

	void testNoSimpleDeadlock(const char *mapStr) {
		SCOPED_TRACE(va("testNoSimpleDeadlock\n%s", mapStr));
		BoardState s;
		fillState(s, mapStr);
		SimpleDeadlockDetector simple;
		simple.init(s);
		ASSERT_FALSE(simple.hasDeadlock(s));
	}

	void testNoSimpleDeadlockAt(const char *mapStr, int col, int row) {
		SCOPED_TRACE(va("testNoSimpleDeadlockAt\n%s", mapStr));
		BoardState s;
		fillState(s, mapStr);
		SimpleDeadlockDetector simple;
		simple.init(s);
		ASSERT_FALSE(simple.hasDeadlockAt(s.getIndex(col, row)));
	}

	void testSimpleDeadlockAt(const char *mapStr, int col, int row) {
		SCOPED_TRACE(va("testSimpleDeadlockAt\n%s", mapStr));
		BoardState s;
		fillState(s, mapStr);
		SimpleDeadlockDetector simple;
		simple.init(s);
		ASSERT_TRUE(simple.hasDeadlockAt(s.getIndex(col, row)));
	}

	void testSimpleDeadlock(const char *mapStr) {
		SCOPED_TRACE(va("testSimpleDeadlock\n%s", mapStr));
		BoardState s;
		fillState(s, mapStr);
		SimpleDeadlockDetector simple;
		simple.init(s);
		ASSERT_TRUE(simple.hasDeadlock(s));
	}

	void testNoDeadlock(const char *mapStr) {
		SCOPED_TRACE(va("testNoDeadlock\n%s", mapStr));
		BoardState s;
		fillState(s, mapStr);
		ASSERT_FALSE(s.hasDeadlock());
	}

	void testFrozenDeadlock(const char *mapStr) {
		SCOPED_TRACE(va("testFrozenDeadlock\n%s", mapStr));
		BoardState s;
		fillState(s, mapStr);

		SimpleDeadlockDetector simple;
		simple.init(s);
		FrozenDeadlockDetector frozen;
		frozen.init(s);
		ASSERT_TRUE(frozen.hasDeadlock(simple, s));
	}

	void testNoFrozenDeadlock(const char *mapStr) {
		SCOPED_TRACE(va("testNoFrozenDeadlock\n%s", mapStr));
		BoardState s;
		fillState(s, mapStr);

		SimpleDeadlockDetector simple;
		simple.init(s);
		FrozenDeadlockDetector frozen;
		frozen.init(s);
		ASSERT_FALSE(frozen.hasDeadlock(simple, s));
	}
};


TEST_F(BoardStateTest, testFillState) {
	{
		const char* mapStr =
			"#####\n"
			"#@$.#\n"
			"#####";
		BoardState s;
		fillState(s, mapStr);
		ASSERT_EQ(5, s.getWidth());
		ASSERT_EQ(3, s.getHeight());
	}
	{
		const char* mapStr =
			"#####\n"
			"#@$.#\n"
			"#   #\n"
			"#   ####\n"
			"#      #\n"
			"########";
		BoardState s;
		fillState(s, mapStr);
		ASSERT_EQ(8, s.getWidth());
		ASSERT_EQ(6, s.getHeight());
	}
}

TEST_F(BoardStateTest, testDone) {
	const char* mapStr =
		"############\n"
		"#$$@ #     ###\n"
		"#$$  #       #\n"
		"#$$  # ####  #\n"
		"#$$      ##  #\n"
		"#$$  # #    ##\n"
		"###### ##    #\n"
		"#          #\n"
		"#    #     #\n"
		"############";

	SCOPED_TRACE(va("\n%s", mapStr));

	BoardState s;
	fillState(s, mapStr);
	ASSERT_EQ(14, s.getWidth());
	ASSERT_EQ(10, s.getHeight());
	ASSERT_TRUE(s.isDone()) << "Could not detect the done state in the board\n" << mapStr;
}

TEST_F(BoardStateTest, testSimpleDeadlocks) {
	testNoSimpleDeadlock(
		"######\n"
		"#    #\n"
		"#$$@.#\n"
		"#.####\n"
		"###\n");
	testNoSimpleDeadlock(
		"######\n"
		"#    #\n"
		"#$$@.#\n"
		"#.####\n"
		"###\n");
	testNoSimpleDeadlockAt(
		"######\n"
		"#    #\n"
		"#$$@.#\n"
		"#.####\n"
		"###\n",
		2, 2);
	testNoSimpleDeadlockAt(
		"######\n"
		"#    #\n"
		"#$$@.#\n"
		"#.####\n"
		"###\n",
		1, 3);
	testNoSimpleDeadlockAt(
		"######\n"
		"#    #\n"
		"#$$@.#\n"
		"#.####\n"
		"###\n",
		4, 2);
	testSimpleDeadlockAt(
		"######\n"
		"#    #\n"
		"#$$@.#\n"
		"#.####\n"
		"###\n",
		1, 1);
	testSimpleDeadlockAt(
		"######\n"
		"#    #\n"
		"#$$@.#\n"
		"#.####\n"
		"###\n",
		2, 1);
	testSimpleDeadlockAt(
		"######\n"
		"#    #\n"
		"#$$@.#\n"
		"#.####\n"
		"###\n",
		3, 1);
	testSimpleDeadlockAt(
		"######\n"
		"#    #\n"
		"#$$@.#\n"
		"#.####\n"
		"###\n",
		4, 1);
	testNoSimpleDeadlockAt(
		"######\n"
		"#  @ #\n"
		"#$   #\n"
		"#.####\n"
		"###\n",
		1, 2);
	testNoSimpleDeadlock(
		"######\n"
		"#  @ #\n"
		"#  $ #\n"
		"#.####\n"
		"###\n");
	testNoSimpleDeadlock(
		"######\n"
		"#  @ #\n"
		"#$ $.#\n"
		"#.####\n"
		"###\n");
	testSimpleDeadlock(
		"######\n"
		"#$   #\n"
		"#  @.#\n"
		"#.####\n"
		"###\n");
	testSimpleDeadlock(
		"######\n"
		"# $  #\n"
		"#  @.#\n"
		"#.####\n"
		"###\n");
	testSimpleDeadlock(
		"######\n"
		"#   $#\n"
		"#  @.#\n"
		"#.####\n"
		"###\n");
}

TEST_F(BoardStateTest, testDeadlocks) {
	testDeadlock(
		"#####\n"
		"#   #\n"
		"# @ #\n"
		"#$ .#\n"
		"#####");
	testDeadlock(
		"#####\n"
		"#   #\n"
		"#$@ #\n"
		"#  .#\n"
		"#####");
	testDeadlock(
		"#####\n"
		"#$  #\n"
		"# @ #\n"
		"#  .#\n"
		"#####");
	testDeadlock(
		"#####\n"
		"# $ #\n"
		"# @ #\n"
		"#  .#\n"
		"#####");
	testDeadlock(
		"#####\n"
		"#  $#\n"
		"# @ #\n"
		"#  .#\n"
		"#####");
	testNoDeadlock(
		"#####\n"
		"#***#\n"
		"#*@ #\n"
		"#* .#\n"
		"#####");
	testNoDeadlock(
		"#####\n"
		"#@ .#\n"
		"#.$$#\n"
		"# $.#\n"
		"#   #\n"
		"#####");
	testNoDeadlock(
		"######\n"
		"#    #\n"
		"#$$@.#\n"
		"#.####\n"
		"###\n");
}

TEST_F(BoardStateTest, testNoFrozenDeadlocks) {
	testNoFrozenDeadlock(
		"######\n"
		"#    #\n"
		"#$$@.#\n"
		"#.####\n"
		"###\n");
	testNoFrozenDeadlock(
		"############\n"
		"#..  #     ###\n"
		"#..  #$$  $  #\n"
		"#..  #@####  #\n"
		"#..      ##  #\n"
		"#..  # #  $ ##\n"
		"###### ##$ $ #\n"
		"  # $  $ $ $ #\n"
		"  #    #     #\n"
		"  ############\n");
}

TEST_F(BoardStateTest, testNoDeadlockButBlockedPackages) {
	const char* mapStr =
		"######\n"
		"#    #\n"
		"#$$@.#\n"
		"#.####\n"
		"###\n";
	testNoDeadlock(mapStr);
}


TEST_F(BoardStateTest, testDeadlockByBlockedPackages) {
	const char* mapStr =
		"######\n"
		"#$$@.#\n"
		"#.####\n"
		"###\n";
	testDeadlock(mapStr);
}

TEST_F(BoardStateTest, testDeadlockNoDeadlock) {
	// xsokoban2 state that
	const char* mapStr =
		"############\n"
		"#..  #     ###\n"
		"#..  #$$  $  #\n"
		"#..  #@####  #\n"
		"#..      ##  #\n"
		"#..  # #  $ ##\n"
		"###### ##$ $ #\n"
		"  # $  $ $ $ #\n"
		"  #    #     #\n"
		"  ############\n";
	testNoDeadlock(mapStr);
}

TEST_F(BoardStateTest, testDeadlockDeadlockFound1) {
	const char* mapStr =
		"    #####\n"
		"    #@  #\n"
		"    #   #\n"
		"  ###   ##\n"
		"  #      #\n"
		"### #$## #   ######\n"
		"#   #$## #####  ..#\n"
		"#               ..#\n"
		"##### ### # ##  ..#\n"
		"    #     #########\n"
		"    #######\n";
	testDeadlock(mapStr);
}

TEST_F(BoardStateTest, testDeadlockDeadlockFound2) {
	const char* mapStr =
		"    #####\n"
		"    #   #\n"
		"    #   #\n"
		"  ###   ##\n"
		"  #      #\n"
		"### #$## #   ######\n"
		"#   # ## #####  ..#\n"
		"#    $   $      ..#\n"
		"#####@### # ##  ..#\n"
		"    #     #########\n"
		"    ######\n";
	testDeadlock(mapStr);
}

TEST_F(BoardStateTest, testDeadlockDeadlockFound3) {
	const char* mapStr =
		"    #####\n"
		"    #@  #\n"
		"    #   #\n"
		"  ###   ##\n"
		"  #      #\n"
		"### #$## #   ######\n"
		"#   # ## #####  ..#\n"
		"#    $  $       ..#\n"
		"##### ### # ##  ..#\n"
		"    #     #########\n"
		"    #######\n";
	testDeadlock(mapStr);
}

TEST_F(BoardStateTest, testDeadlockDeadlockFound4) {
	const char* mapStr =
		"        ########\n"
		"        #@     #\n"
		"        #  #  ##\n"
		"        #     #\n"
		"        ##$   #\n"
		"######### $$# ###\n"
		"#....  ##  $ $  #\n"
		"##...        $  #\n"
		"#....  ##########\n"
		"########\n";
	testDeadlock(mapStr);
}

TEST_F(BoardStateTest, testDeadlockDeadlockFound5) {
	const char* mapStr =
		"        ########\n"
		"        #@     #\n"
		"        #  #  ##\n"
		"        #     #\n"
		"        ##$   #\n"
		"######### $$#$###\n"
		"#....  ##  $ $  #\n"
		"##...           #\n"
		"#....  ##########\n"
		"########\n";
	testDeadlock(mapStr);
}

TEST_F(BoardStateTest, testDeadlockDeadlockFound6) {
	const char* mapStr =
		"############\n"
		"#..@ #     ###\n"
		"#..  #       #\n"
		"#..  # ####  #\n"
		"#..      ##  #\n"
		"#..  # #  $$##\n"
		"######$##$ $ #\n"
		"  #   $  $   #\n"
		"  #    #     #\n"
		"  ############\n";
	testDeadlock(mapStr);
}

}

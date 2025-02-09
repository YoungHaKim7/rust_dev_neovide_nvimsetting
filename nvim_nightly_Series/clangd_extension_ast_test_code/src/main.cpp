#include <iostream>
#include <string>

class GameEntry {
public:
    GameEntry(const std::string &n = "", int s = 0);
    std::string getName() const;
    int getScore() const;
private:
    std::string name;
    int score;
};

GameEntry::GameEntry(const std::string &n, int s) : name(n), score(s) {}
std::string GameEntry::getName() const { return name; }
int GameEntry::getScore() const { return score; }

class Scores {
public:
    Scores(int maxEnt = 10);
    ~Scores();
    void add(const GameEntry &e);
    GameEntry remove(int i);
    void printAllScores() const;
private:
    int maxEntries; // maximum number of entries
    int numEntries; // actual number of entries
    GameEntry *entries; // array of game entries
};

Scores::Scores(int maxEnt) : maxEntries(maxEnt), numEntries(0) {
    entries = new GameEntry[maxEntries];
}

Scores::~Scores() {
    delete[] entries;
}

void Scores::add(const GameEntry &e) {
    if (numEntries < maxEntries) {
        entries[numEntries] = e;
        numEntries++;
    } else {
        std::cerr << "Cannot add more entries, maximum limit reached.\n";
    }
}

GameEntry Scores::remove(int i) {
    if (i < 0 || i >= numEntries) {
        throw std::out_of_range("Invalid index");
    }
    GameEntry removedEntry = entries[i];
    for (int j = i; j < numEntries - 1; j++) {
        entries[j] = entries[j + 1];
    }
    numEntries--;
    return removedEntry;
}

void Scores::printAllScores() const {
    for (int i = 0; i < numEntries; i++) {
        std::cout << "Name: " << entries[i].getName() << ", Score: " << entries[i].getScore() << std::endl;
    }
}

int main() {
    Scores scores(5);
    scores.add(GameEntry("Alice", 100));
    scores.add(GameEntry("Bob", 200));
    scores.add(GameEntry("Charlie", 150));
    scores.printAllScores();

    try {
        GameEntry removed = scores.remove(1);
        std::cout << "Removed: " << removed.getName() << ", " << removed.getScore() << std::endl;
    } catch (const std::out_of_range &e) {
        std::cerr << e.what() << std::endl;
    }

    scores.printAllScores();

    return 0;
}

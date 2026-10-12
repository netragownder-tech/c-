ART GALLERY MANAGEMENT
Project Code: CPP64
Enrollment Number: IU2541230539
Prepared: October 12, 2026

DESCRIPTION
A modular C++17 console application for managing artworks, artists, customers and exhibitions,
processing artwork sales, generating reports, and maintaining persistent local records.

MERGED PROJECT DESIGN
This final package combines the strongest implementation qualities of the two supplied projects:
- Robust validation, exception handling, dynamic memory, polymorphism and transactional rollback.
- Richer artwork fields including category.
- Richer exhibition fields including start date, end date and theme.
- A versioned single-snapshot data file with backup/recovery behavior.
- UML diagrams, execution screenshots, test evidence, build scripts and viva guidance.
The final implementation is one coherent project, not a pasted combination of the two sources.

FEATURES / MENU
1 Add Record: Artwork, Artist, Customer or Exhibition.
2 Display Records: list records by category.
3 Search Record: exact positive-ID lookup.
4 Update Record: replace descriptive fields while preserving the ID; sold artwork is locked.
5 Delete Record: prevent deletion when references or sale history would be broken.
6 Main Transaction/Process: sell an available artwork to an existing customer after YES confirmation.
7 Report: entity counts, availability, inventory value, revenue and transaction history.
8 Save/Load: explicitly save or reload; reload asks for confirmation before discarding unsaved changes.
9 Exit: save the current state and close.

DATA MODEL
Artwork: ID, title, artist ID, category, price in INR paise, sold status.
Artist: ID, name, contact, specialization.
Customer: ID, name, contact, address.
Exhibition: ID, name, start date, end date, theme.
Transaction: ID, artwork ID, customer ID, amount in INR paise, timestamp.

PERSISTENCE
Data/gallery.txt uses the versioned ART_GALLERY_V2 format. Quoted fields allow spaces in names and
other text. The application validates the complete state before saving. Saving writes a temporary file,
moves the previous snapshot to gallery.bak, then installs the new snapshot. Loading first builds and
validates a temporary Gallery and only then replaces the live state. Version 1 snapshots from the
original project remain readable and are upgraded in memory with default category/theme values.

OOP CONCEPTS
Encapsulation, constructors/destructors, inheritance, runtime polymorphism through abstract Person,
dynamic memory with guarded array growth, exception handling, file handling and composition.

BUILD
Windows (MinGW-w64 C++17):
g++ -std=c++17 -O2 -Wall -Wextra -pedantic -static Source\*.cpp -o Executable\Project.exe

Linux:
g++ -std=c++17 -O2 -Wall -Wextra -pedantic Source/*.cpp -o Executable/Project_linux

RUN
Windows: double-click Run_Project.bat.
Linux: ./Executable/Project_linux
An optional data-directory path can be supplied to the executable.

IMPORTANT
Do not run the executable from inside the ZIP archive. Extract the complete folder first.
The sample data is fictional demonstration data. The GitHub field in the report is intentionally left
for the student to replace with their own real repository URL; no URL has been fabricated.

LIMITATIONS
Single-operator console application. No authentication, online payments, refunds, concurrent writers,
or production database server. Dates are validated; exhibition scheduling conflicts are outside scope.

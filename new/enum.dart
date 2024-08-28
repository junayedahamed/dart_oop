enum Gender { Male, Female, Other }

enum state { Loading, Error, success }

enum Role { Admin, modarator, user }

class person {
  final String name;
  final String dept;
  final Gender gender;
  final Role role;

  person(this.name, this.dept, this.gender, this.role);

  checkrole() {
    switch (this.role) {
      case Role.Admin:
        print("Admin");
      case Role.modarator:
        print("Modarator");
      case Role.user:
        print("User");
    }
  }

  checkgender() {
    switch (this.gender) {
      case Gender.Male:
        print("Male");
      case Gender.Female:
        print("Fmale");
      case Gender.Other:
        print("Male");
    }
  }
}

void main() {
  person p = person("Junayed", "Cse", Gender.Male, Role.Admin);
  p.checkrole();
  p.checkgender();

  person p2 = person("Ms.X", "EEE", Gender.Female, Role.user);
  p2.checkgender();
  p2.checkrole();
}

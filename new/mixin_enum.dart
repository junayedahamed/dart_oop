enum State { Yes, No }

mixin Sign {
  void sing(State isng) {
    if (isng == State.Yes) {
      print("sa re ga ma........");
    } else {
      print("Can't sing.");
    }
  }
}

mixin Wlak {
  wlak(State hl) {
    if (hl == State.Yes) {
      print("walking.....");
    } else {
      print("Can't Walk.");
    }
  }
}
mixin Fly {
  fly(fl) {
    if (fl == State.Yes) {
      print("Flying.....");
    } else {
      print("Can't fly");
    }
  }
}

mixin Talk {
  void talk(State hm) {
    if (hm == State.Yes) {
      print("Talkin....");
    } else {
      print("..............");
    }
  }
}

class Human with Wlak, Talk, Sign, Fly {}

class Bird with Wlak, Talk, Sign, Fly {}

void main() {
  Human h = Human();
  h.talk(State.Yes);
  h.wlak(State.Yes);
  h.sing(State.No);
  h.fly(State.No);

  Bird b = new Bird();
  b.sing(State.Yes);
  b.wlak(State.Yes);
  b.fly(State.Yes);
  b.talk(State.No);
}

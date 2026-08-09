# Ruby Silver Version 3 Study Course

This repository is a certification-focused course for the **Ruby Association Certified Ruby Programmer Silver version 3** examination. It targets **Ruby 3.1.x** and follows the official scope: syntax, frequently used built-in classes/modules, and basic object orientation.

The real examination has 50 multiple-choice questions, lasts 90 minutes, and requires 75%. This course deliberately emphasizes short-program reading, exact method behavior, warnings versus errors, mutation, scope, operator precedence, and core-class APIs because those patterns dominate the official sample examination.

Primary references: the [Ruby Association Version 3 exam outline](https://www.ruby.or.jp/en/certification/examination/), its [official Silver sample questions](https://github.com/ruby-association/prep-test/blob/version3/silver.md), the [official explanations](https://github.com/ruby-association/prep-test/blob/version3/silver_answers.md), and the [Ruby 3.1 reference](https://docs.ruby-lang.org/en/3.1/).

## Course order

1. [Language basics](notes/01_language_basics.md)
2. [Objects and variables](notes/02_objects_and_variables.md)
3. [Operators](notes/03_operators.md)
4. [Methods and arguments](notes/04_methods_and_arguments.md)
5. [Blocks](notes/05_blocks.md)
6. [Arrays and hashes](notes/06_arrays_and_hashes.md)
7. [Enumerable and Comparable](notes/07_enumerable_and_comparable.md)
8. [Strings, symbols, and regular expressions](notes/08_strings_symbols_regex.md)
9. [Other built-in classes](notes/09_other_built_in_classes.md)
10. [Classes, modules, and inheritance](notes/10_classes_modules_inheritance.md)
11. [`self`, constants, and scope](notes/11_self_constants_scope.md)
12. [Exceptions](notes/12_exceptions.md)
13. [Exam traps](notes/13_exam_traps.md)
14. [Mock exams](notes/14_mock_exams.md)

The existing [baseline diagnostic](notes/01_baseline_diagnostic.md) is optional and remains separate from the numbered course.

## How to study a section

1. Read its file in `notes/` and type the minimal examples yourself.
2. Complete the matching file in `exercises/` without running its programs. Record exact output, or state **syntax error**, **warning**, or the runtime exception class.
3. Open the matching companion in `exercises/runnable/`. Fill its `TODO` items, then run it with RubyMine or the project Ruby only after committing to a prediction:

   ```sh
   rbenv exec ruby -v
   rbenv exec ruby exercises/runnable/01_language_basics.rb
   ```

4. Open the corresponding files in `exercises/answers/` and `exercises/runnable/answers/` and explain every miss in your own words.
5. Take the matching `quizzes/` topic test closed-book. Answers are under `quizzes/answers/`.
6. Update [the topic tracker](progress/topics.md) and [mistake log](progress/mistake_log.md).

Do not browse answer directories while solving. Every introduced method or keyword is explained in the corresponding note before it is tested.

## Topic-test schedule

- Take a topic quiz immediately after its exercises.
- Re-answer missed questions after 24–48 hours without rereading the answer first.
- Mark a topic **Secure** only after scoring at least 80% twice, with the second attempt separated by at least one day.
- After sections 1–5, take the first checkpoint listed in the tracker.
- After sections 6–9, take the second checkpoint.
- After sections 10–13, take the final topic review.

## Mock-exam schedule

- Take Mock Exam 1 after all topic sections have reached at least **Learning**.
- Review every incorrect and uncertain answer, not only the final score.
- Take Mock Exam 2 under full conditions: 50 questions, 90 minutes, no interpreter, no notes.
- Reattempt an exam only after enough time has passed that you are applying rules rather than recalling option letters.

The official pass mark is 75%. A recommended booking target is **85% or better on two unseen timed mocks**, with no major topic below 70%. The extra margin protects against unfamiliar wording and avoidable mistakes.

## Scope boundaries

Included: Ruby 3.1 syntax, core objects, common built-in methods, blocks, collections, `Enumerable`, `Comparable`, basic files/directories, classes/modules, inheritance, mix-ins, scope, constants, and exceptions.

Excluded: Rails, Bundler, databases, third-party gems, concurrency, pattern matching, refinements, `Module#prepend`, advanced metaprogramming, and bundled-library subjects specifically emphasized by Gold such as `date`, `time`, `singleton`, and `forwardable`.

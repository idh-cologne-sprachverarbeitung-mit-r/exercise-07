# Exercise 7

**In General**: Please ask questions in the [ilias-Forum](https://www.ilias.uni-koeln.de/ilias/goto_uk_frm_3270419.html) for this course, so that others can also see the question and answer*.

*Please submit your solutions to this exercise until June 19th.*

The goal of this exercise is to get to learn about packages and to basic string processing functions.

## Step 1

Reading. As discussed previously, we will now switch the underlying tutorial.

Starting this week, we'll be using the book ["Corpus Linguistics and Statistics with R" by G. Desagulier (2017)](https://www.springer.com/gp/book/9783319645704). The book is available via the university library, but since the library is offline at the moment, a copy of the relevant sections has been uploaded to ilias.

The relevant sections for this week are:

- Section 2.5: Packages, and
- Sections 4.1 to 4.3: String processing (except regular expressions, which we‘ll cover next week).

## Step 2

Clone this repository. The same as last week.

In the examples, I'll use "Textanalyse-mit-R", you should replace this with the path to your directory: `cd Textanalyse-mit-R`

Clone this repository: `git clone https://github.com/idh-cologne-sprachverarbeitung-mit-r/exercise-07.git`

Enter the directory `cd exercise-07`

Create a new branch for you: `git checkout -b USERNAME`.

## Step 3
Again (as last week), open the file `R/exercise.R` in your favorite text editor. Depending on your operating system and settings, double clicking may open an editor that came with the R installation. The directory `data` contains a few files we‘ll be using in the exercises.

- a) Please add code to load the package `datasets` to the file (and test it). The package contains a number of default data sets. Please load the data set `mtcars`. 
- b) `mtcars` contains information about cars. Please assign the mean number of cylinders to the variable `b`.

- c) Write a function `c` to load a corpus. The function expects a directory name (which should default to `data`), and loads all files ending on `.txt`. The function should return a list of vectors. The outer list corresponds to the files. The vectors contain the tokens of the files. For the moment, we‘ll assume that we can split on single space characters. 

- d) Write a function `d` that takes as input a list of vectors (e.g., the output of function `c`). The function `d` should then remove all function words from all vectors. I.e., if the input of the function is `list(c("the", "dog","barks"),c("the","cow","moohs"))`, its output should be  `list(c("dog","barks"),c("cow","moohs"))`. To provide stop words to the function, please use an argument with a default value. You can use the following list of stop words: `c("i", "me", "my", "myself", "we", "our", "ours", "ourselves", "you", "your", "yours", "yourself", "yourselves", "he", "him", "his", "himself", "she", "her", "hers", "herself", "it", "its", "itself", "they", "them", "their", "theirs", "themselves", "what", "which", "who", "whom", "this", "that", "these", "those", "am", "is", "are", "was", "were", "be", "been", "being", "have", "has", "had", "having", "do", "does", "did", "doing", "a", "an", "the", "and", "but", "if", "or", "because", "as", "until", "while", "of", "at", "by", "for", "with", "about", "against", "between", "into", "through", "during", "before", "after", "above", "below", "to", "from", "up", "down", "in", "out", "on", "off", "over", "under", "again", "further", "then", "once", "here", "there", "when", "where", "why", "how", "all", "any", "both", "each", "few", "more", "most", "other", "some", "such", "no", "nor", "not", "only", "own", "same", "so", "than", "too", "very", "s", "t", "can", "will", "just", "don", "should", "now")`.




## Step 4
Don't forget to save your file.
Now turning back to git: Add your file to the staging area (`git add R/exercise.R`), commit it (`git commit -m ""`, you need to fill in a commit message), and push it to the server (`git push --set-upstream origin BRANCHNAME`).

## Step 5

Wait a few minutes. Then go to https://github.com/idh-cologne-sprachverarbeitung-mit-r/exercise-06/actions, select your branch and watch for the results. If your commit has a green checkmark, you're good to go. If you see a red cross, there is a mistake in your code. In this case, you can click on the commit message and inspect the details of the mistake. After that, you should go back to step 4, fix the bug, and add/commit/push again.

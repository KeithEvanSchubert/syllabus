%
% baylorsyllabus.cls v.1.0
%
% Baylor University ADA Syllabus LaTex Class
%
% Writen by:
%    Keith Evan Schubert, Ph.D., E.I.T.
%    August 23, 2013
% Contents:
%    Basic layout, schedule, campus compliance statements
%
% Modified by:

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{baylorsyllabus}[2013/08/23 Baylor ADA Syllabus Class]
\RequirePackage{ifthen}
\RequirePackage{suffix}
\RequirePackage{arrayjobx}%for array definitions
% (1) choose a font that is available as T1
% for example:
%\RequirePackage{lmodern}
\RequirePackage[largesmallcaps,nofligatures]{kpfonts}
%\RequirePackage{couriers}
% (2) specify encoding
\RequirePackage[T1]{fontenc}
% (3) load symbol definitions
\RequirePackage{textcomp}
\renewcommand*\familydefault{\sfdefault}
%\RequirePackage{sectsty}
%\allsectionsfont{\textothersc}
\RequirePackage[letterpaper]{geometry}
\RequirePackage{fancyhdr}
%\RequirePackage{tocloft}
%\newcommand\org@maketitle{}
%\let\org@maketitle\maketitle
%\def\maketitle{%
%\hypersetup{
%pdftitle={\@title},
%pdfauthor={\@author}
%}%
%\org@maketitle
%}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}
\RequirePackage{hyperref}
\hypersetup{
    pdftitle={Syllabus},
    pdfauthor={Keith Schubert},
}
\typeout{*********************************************************************}
\typeout{** Baylor University ADA Syllabus Class                            **}
\typeout{** Written by Keith Evan Schubert                                  **}
\typeout{**            Associate Professor                                  **}
\typeout{**            Department of Electrical and Computer Engineering    **}
\typeout{**            School of Engineering and Computer Science           **}
\typeout{*********************************************************************}
\renewcommand{\normalsize}{\fontsize{12pt}{12pt}\selectfont}
\geometry{paperwidth=8.5in,paperheight=11in,includehead=false,top=1in,left=1in,right=1in,bottom=1in,footskip=0in}%,showframe}
\pagestyle{empty}
%\markboth{}{}%clear the old headers that comes from article
%\fancypagestyle{plain}{\fancyhf{}\fancyfoot[c]{Page \thepage}}%reset plain
%\fancyhf{}\fancyhead{}\fancyfoot{}%clear fields
%\lhead[]{}\lfoot[]{}
%\chead[]{}\cfoot[\thepage]{\thepage}
%\rhead[]{}\rfoot[]{}
%
%
%
%               Declaring Variables
%
\gdef\@university{Baylor University}
\gdef\@school{School of Engineering and Computer Science}
\gdef\@department{Department of Electrical and Computer Engineering}
\gdef\@instructor{Keith Evan Schubert}
\gdef\@office{Rogers - Room 300F}
\gdef\@telephone{(254)710-3348}
\gdef\@email{keith\_schubert@baylor.edu}
\gdef\@supplementbook{none}
\gdef\@finaltime{none}
\gdef\@finaldate{none}
\gdef\@finaldayofweek{none}
\newcommand{\University}[1][Baylor University]{\gdef\@university{#1}}
\newcommand{\School}[1][School of Engineering and Computer Science]{\gdef\@school{#1}}
\newcommand{\Department}[1][Department of Electrical and Computer Engineering]{\gdef\@department{#1}}
\newcommand{\Course}[1]{\gdef\@course{#1}}
\newcommand{\Semester}[1]{\gdef\@semester{#1}}
\newcommand{\Year}[1]{\gdef\@year{#1}}
\newcommand{\Instructor}[1][Keith Evan Schubert]{\gdef\@instructor{#1}}
\newcommand{\OfficeLocation}[1][Rogers - Room 300G]{\gdef\@office{#1}}
\newcommand{\Telephone}[1][(254)710-3348]{\gdef\@telephone{#1}}
\newcommand{\EmailAddress}[1][keith\_schubert@baylor.edu]{\gdef\@email{#1}}
\newcommand{\OfficeHours}[1]{\gdef\@officehours{#1}}
\newcommand{\Textbook}[1]{\gdef\@textbook{#1}}
\newcommand{\Supplementbook}[1]{\gdef\@supplementbook{#1}}
\newcommand{\Prereqs}[1]{\gdef\@prereqs{#1}}
\newcommand{\ClassTimes}[1]{\gdef\@classtimes{#1}}
\newcommand{\ClassRoom}[1]{\gdef\@classroom{#1}}
\newcommand{\LabTimes}[1]{\gdef\@labtimes{#1}}
\newcommand{\LabRoom}[1]{\gdef\@labroom{#1}}
\newcommand{\FinalDateTime}[3]{\gdef\@finaldayofweek{#1}\gdef\@finaldate{#2}\gdef\@finaltime{#3}}
%
%   Graduate Writing
%
\gdef\@gradwriting{
\section{Graduate Writing Consultants}
{If you are a graduate student, Graduate Writing Consultants are available to help you with your writing. Please email
\href{mailto:gwc@baylor.edu}{gwc@baylor.edu}. Attach the paper or chapter you would like the consultant to
review and indicate any specific issues you want to discuss (i.e., organizational problems, transitions,
clarity, etc.). The Center Coordinator will then contact you to arrange a one-hour appointment. You can also
visit the \href{http://www.baylor.edu/graduate/currentstudents/index.php?id=99100}{Graduate Writing Center} website. \par}}
%
%    If no grad students, then remove
%
\newcommand{\NoGradWriting}{\gdef\@gradwriting{}}
%
%   Campus Policies
%
\gdef\@campuspolicies{\section{University Policies}
    \subsection{Academic Integrity}
	{Plagiarism or any form of cheating involves a breach of student-teacher trust.  This means that any work submitted
    under your name is expected to be your own, neither composed by anyone else as a whole or in part, nor handed over
    to another person for complete or partial revision.  Be sure to document all ideas that are not your own. Instances
    of plagiarism or any other act of academic dishonesty will be reported to the Honor Council and may result in failure
    of the course. Not understanding plagiarism is not an excuse. As a Baylor student, I expect you to be intimately
    familiar with the Honor Code \url{http://www.baylor.edu/honorcode/}.  For more information see the Baylor University Honor
    Code on the Academic Integrity Web page or contact the Office of Academic Integrity at 710-8882 or
    \href{mailto:Academic\_Integrity@baylor.edu}{Academic\_Integrity@baylor.edu}.\par}
    \subsection{Turnitin}
    {Students agree that by taking this course, all required papers, exams, class projects or other assignments submitted
    for credit may be submitted to turnitin.com or similar third parties to review and evaluate for originality and intellectual
    integrity. A description of the services, terms and conditions of use, and privacy policy of turnitin.com is available on
    its web site: \url{http://www.turnitin.com}. Students understand all work submitted to turnitin.com will be added to its database
    of papers. Students further understand that if the results of such a review support an allegation of academic dishonesty,
    the course work in question as well as any supporting materials may be submitted to the Honor Council for investigation
    and further action.\par}
    \subsection{Academic Success}
	{We as faculty members have high academic expectations of you. However, every student who has been admitted to Baylor
    can be successful. I am a vigilant professor and will notice if you are struggling in my course. If your academic
    performance in this class is substandard, I will submit an Academic Warning to the Success Center during the sixth
    week of the semester. I will work to help you get the help you need to learn more fully, and I can assist you in
    finding the resources you need beyond my course. Familiarize yourself with the culture of success we have at Baylor
    by stopping by the Paul L. Foster Success Center in Sid Richardson or by going to: \url{http://www.baylor.edu/successcenter/}.
    Even if you don't need help, you can get involved by tutoring other students in the future or by telling a hall mate
    how and where to get help.\par}
    \subsection{Office hours}
	{One of the best ways to take full advantage of learning in my course is by coming to my office hours. I am anxious
    to guide you in your academic pursuits. Take advantage of the hours listed above or email me for an appointment.\par}
    \subsection{Classroom Protocol}
    {I expect you to be mature about your education and courteous to others.  This means several things, such as,\par}
    \begin{enumerate}
    \item being an active participant in class;
    \item showing up on time each day ready for class
    \item if you can't make it, you should make provisions to get notes and such so you learn;
    \item being respectful of others;
    \item not using cell phones or web surfing - if you don't want to be here, then don't sign up for class;
    \item leaving class quietly to take an important call or go to an essential meeting, so as not to disturb
    others.
    \end{enumerate}
    }
\newcommand{\CampusPolicies}[1]{\gdef\@campuspolicies{#1}}
%
%  ADA
%
\gdef\@adastatement{\section{ADA}
{Any student who needs academic accommodations related to a documented disability should inform me immediately at the
beginning of the semester.  You are responsible for obtaining appropriate documentation and information regarding
accommodations from the Baylor University Office of Access and Learning Accommodation (OALA) and providing it to me early
in the semester.\par}
{Contact Information:\par}
{254-710-3605\par}
{Paul L. Foster Success Center\par}
{1st floor on the East Wing of Sid Richardson - Room 190\par}
}
\newcommand{\ADAStatement}[1]{\gdef\@adastatement{#1}}
%
% Title IX
\gdef\@titleix{\section{Title IX}
{
TITLE IX OFFICE \textendash\ If you or someone you know would like help related to an
experience of sexual violence including sexual assault, harassment, domestic
violence, dating violence, stalking or other type of non-consensual sexual conduct,
please contact Patty Crawford, the Title IX Coordinator at Baylor University, by
email ({\href{mailto:Patty_Crawford@baylor.edu}{Patty\_Crawford@baylor.edu}}) or phone (254-710-8454).
\par}
{Anonymous reporting for students or third parties is also available on the
Title IX website, \url{www.Baylor.edu/TitleIX}.\par}
{The Title IX office understands the sensitive nature of these situations and can
provide information about available on- and off-campus resources, such as
counseling and psychological services, medical treatment, academic support,
university housing and other forms of assistance.  Staff members at the office
will also explain your rights and the judicial process options, if you choose to
file a complaint with the University.  You will not be required to share your
experience, and the Title IX Office will keep any information private.  The
Title IX Office exists to support and empower students, while allowing them to
remain in control.  \textbf{If you or someone you know feels unsafe or may be in imminent
danger, please call the Baylor Police Department (254-710-2222) or Waco Police
Department (9-1-1) immediately}.\par}
}
\newcommand{\TitleIX}[1]{\gdef\@titleix{#1}}
%
% Date
%
\date{}
%
%              Syllabus
%
\newcommand{\MakeSyllabus}{
%\title{\@university\\\@school\\\@department\\\@course\\\@semester \@year}
\title{\@university $\;$\@semester $\;$\@year $\;$Syllabus\\\@course}
\author{\@instructor}
\hypersetup{
    pdftitle={\@course Syllabus},
    pdfauthor={\@instructor},
}
\maketitle\thispagestyle{empty}
\section{Course and Instructor Information}
\noindent{Instructor: \@instructor\par}
\noindent{Office location: \@office\par}
\noindent{Telephone: \@telephone\par}
\noindent{Email: \href{mailto:\@email}{\@email}\par}
\noindent{Office Hours: \@officehours\par}
\noindent{Class Days/Time: \@classtimes\par}
\noindent{Classroom: \@classroom\par}
%\noindent{Lab Days/Time: \@labtimes\par}
%\noindent{Labroom: \@labroom\par}
\noindent{Textbook: \@textbook\par}
\noindent{Supplementary Textbook: \@supplementbook\par}
\noindent{Prerequisites: \@prereqs\par}
}
%
%              Syllabus for lab
%
\newcommand{\MakeLabSyllabus}{
%\title{\@university\\\@school\\\@department\\\@course\\\@semester \@year}
\title{\@university $\;$\@semester $\;$\@year $\;$Syllabus\\\@course}
\author{\@instructor}
\hypersetup{
    pdftitle={\@course Syllabus},
    pdfauthor={\@instructor},
}
\maketitle\thispagestyle{empty}
\section{Course and Instructor Information}
\noindent{Instructor: \@instructor\par}
\noindent{Office location: \@office\par}
\noindent{Telephone: \@telephone\par}
\noindent{Email: \href{mailto:\@email}{\@email}\par}
\noindent{Office Hours: \@officehours\par}
\noindent{Class Days/Time: \@classtimes\par}
\noindent{Classroom: \@classroom\par}
\noindent{Lab Days/Time: \@labtimes\par}
\noindent{Labroom: \@labroom\par}
\noindent{Textbook: \@textbook\par}
\noindent{Supplementary Textbook: \@supplementbook\par}
\noindent{Prerequisites: \@prereqs\par}
}
%
% class plan
%
\newarray\ClassDayDeltas
\newarray\ClassDate
\newarray\ClassTitle
\newarray\ClassReading
\newarray\ClassAssignment
\newarray\ClassPlan
\newarray\ClassHoliday
%1=mwf, 2=mw, 3=tr
%\newcommand{\ClassDays}[1]{}
%month number, day number, day of week - m,t,w,r,f,s
%\newcommand{\ClassFirstDay}[3]{}
%\newcommand{\ClassPlan}[5]{}
%
% schedule
%
\newenvironment{Schedule}{\section{Schedule}
 \begin{tabbing}
 \=Datexx \= Topicxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx \= Readxxxx \= Hom \= eworkxxxx \= Lab \= x \kill
 \rule[-2pt]{473pt}{0.3pt}\> Date \> Topic                                 \> Read \> Homework \> \> Lab \\
}{
 \end{tabbing}
}
%\Class{date}{topic}{read}{hw}{lab}
\newcommand{\Class}[5]{\>{#1}\>{#2}\>{#3}\>\>{#4}\>{#5}\\}
\newcommand{\Classu}[5]{\rule[-2pt]{473pt}{0.3pt}\>{#1}\>{#2}\>{#3}\>\>{#4}\>{#5}\\}
%
% schedule no HW
%
\newenvironment{ScheduleNoLab}{\section{Schedule}
 \begin{tabbing}
 \=Datexx \= Topicxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx \= Readxxxxxx \= Due \= x \kill
 \rule[-2pt]{473pt}{0.3pt}\> Date \> Topic                                 \> Read \> Due \\
}{
 \end{tabbing}
}
%\ClassNoHW{date}{topic}{read}{lab}
\newcommand{\ClassNoLab}[4]{\>{#1}\>{#2}\>{#3}\>{#4}\\}
\newcommand{\ClassNoLabu}[4]{\rule[-2pt]{473pt}{0.3pt}\>{#1}\>{#2}\>{#3}\>{#4}\\}
%
% schedule no HW
%
\newenvironment{ScheduleNoHW}{\section{Schedule}
 \begin{tabbing}
 \=Datexx \= Topicxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx \= Readxxxx \= Lab \= x \kill
 \rule[-2pt]{473pt}{0.3pt}\> Date \> Topic                                 \> Read \> Lab \\
}{
 \end{tabbing}
}
%\ClassNoHW{date}{topic}{read}{lab}
\newcommand{\ClassNoHW}[4]{\>{#1}\>{#2}\>{#3}\>\>{#4}\\}
\newcommand{\ClassNoHWu}[4]{\rule[-2pt]{473pt}{0.3pt}\>{#1}\>{#2}\>{#3}\>\>{#4}\\}
%
% schedule Design
%
\newenvironment{ScheduleDesign}{\section{Schedule}
 \begin{tabbing}
 \=Datexx \= Topicxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx \= Readxxxx \= x \kill
 \rule[-2pt]{473pt}{0.3pt}\> Date \> Topic                                 \> Read \\
}{
 \end{tabbing}
}
%\ClassDesign{date}{topic}{read}
\newcommand{\ClassDesign}[3]{\>{#1}\>{#2}\>{#3}\>\\}
\newcommand{\ClassDesignu}[3]{\rule[-2pt]{473pt}{0.3pt}\>{#1}\>{#2}\>{#3}\>\\}
%
%             Grading Policies
%
\newcommand{\Grading}{\section{Grading}
{All assignments will be submitted in the course Canvas site, by the time specified unless previously
arranged with the instructor.  The grading percentages and policies of each graded area are
listed in their sections below.\par}
{The grading scheme is as follows.\par}
\begin{tabbing}
 Le\=tterxx \= Score Rangexxxxx \kill
Letter \>\> Score Range \\
\>  A        \>$[94  - 100]$\\
\>  A-       \>$[90 - 94]$\\
\>  B+       \>$[87 - 90)$\\
\>  B        \>$[83 - 87)$\\
\>  B-       \>$[80 - 83)$\\
\>  C+       \>$[77 - 80)$\\
\>  C        \>$[73 - 77)$\\
\>  C-       \>$[70 - 73)$\\
\>  D+       \>$[67 - 70)$\\
\>  D        \>$[63 - 67)$\\
\>  D-       \>$[60 - 63)$\\
\>  F        \>$[00 - 60)$\\
\end{tabbing}
%\begin{tabbing}
% Le\=tterxx \= Score Rangexxxxx \kill
%Letter \>\> Score Range \\
%\>  A        \>$[90  - 100]$\\
%\>  B+       \>$[86 - 90)$\\
%\>  B        \>$[80 - 86)$\\
%\>  C+       \>$[76 - 80)$\\
%\>  C        \>$[70 - 76)$\\
%\>  D        \>$[60 - 67)$\\
%\>  F        \>$[00 - 60)$\\
%\end{tabbing}
{All grades will be available on the course Canvas site.\par}
{I do not curve grades, but I do give opportunities to earn credit by doing extra work that helps
you learn the material and grow as an engineer.  Extra credit for tests takes the form of
writing tutorials that I will post on the website for other students to benefit.  You must write
the tutorial on an area you lost points on.  You must write the tutorial yourself, do not copy it
from the web.  I get really annoyed when students copy tutorials from others.  I always find it,
don't try.  Writing a tutorial teaches you to do the work.  All who have done them have remarked
how much they learned.  Don't cheat yourself of a valuable learning experience, while risking
expulsion for cheating.  For the final, one and only one tutorial may be submitted in advance.\par}
{You may earn extra credit for homework by attending school seminars, attending relevant conferences,
and participating in school outreach activities, like the open house.\par}
{Labs that are submitted on time can be fixed and re-graded, so no extra credit is needed.\par}
}
%
%           reading
%
\newcommand{\Reading}{\section{Reading}
You are to read it in advance for each class (except the first, which would not be possible).
The reading assignments listed cover the material that will be discussed in class, but in a
different way, and with a different emphasis.  I would be wasting your time and insulting
you if I did not add material, as I would be implying you are unwilling or incapable of
reading and understanding.  There are two main reasons for reading the material ahead of time.
\begin{enumerate}
    \item Reading the text before class gives you the basic ideas, so the deeper truths and
    broader implications can be covered in class.
    \item Even the best of textbooks will cause most people to get confused on some aspects.
    If you read the book before the class, your can ask questions and your confusion will get
    cleared up.  Reading will make the course easier for you.
\end{enumerate}
I know that reading before class is not frequently done, but I encourage you to do it.  You
are here to get a top quality education, but in order to get it you must do more than just show up.}
%
%           Homework
%
\newcommand{\Homework}[2]{\section{Homework ({#1}\%)}
{Homework has been implemented as quizzes in the course Canvas.
You may take them in whenever you feel like and in a piecemeal fashion, just be careful of the closing date
(see the Canvas calendar or main page, note it is due by {#2}).
You will get immediate feedback on the correctness of each answer when you submit the homework, which should help
you to learn as you go.  In a few cases, extended answers, such as proofs, are required, which will require me to
grade them and thus cannot be verified immediately.  These proofs must be organized, and show all the steps and the math
must use \LaTeX\footnote{\LaTeX is a free document formatter, available on all platforms, that does a great job
with both math and computer code, and thus will actually make your life easier.  It comes with standard Linux and
Unix installs, but for those who use other platforms, I have put links on my webpage (look for the Tex link on my
main page) to where you can download it for your home computer.} formatting.  For extended answer problems, how you get the
answer is as important (if not more important) than what the answer is.\par}
{Homework is due by {#2} on the due date.  Late homework will be not accepted, the Canvas will promptly close
the quizzes.  Your clock might differ, so please try to be in safely under the deadline.  You can save your work
without submitting, which allows you to divide up
when you do your problems, but if in the end you don't click submit it won't be graded and you will get a zero.
Please carefully watch the due date and time, as Canvas will automatically stop the quiz when time runs out. After
I set it, I do not control it, it is automatic.  If you don't submit the quiz in time you will get a zero.  Please
do not risk this by waiting till the last second.\par}
{Students are encouraged to discuss class material, \emph{but the work must be done individually}.  The homework
and all other graded work should reflect the effort of the individual who receives credit for it.  Cheating will
not be tolerated. The student may never copy other student's work, nor allow others to copy one's own work. If two
assignments look excessively similar, and are not narrow enough to justify the similarity, automatically a grade of
zero results, with the likely referral to appropriate university bodies. Again, students are allowed and encouraged
to discuss the material related to assignments, but when it comes to actually doing the assignment work it is to be
done individually.\par}}

\newcommand{\HomeworkLaTeX}[2]{\section{Homework ({#1}\%)}
{Homework has been implemented as a file upload in the course Canvas, and is due by {#2}.  You may type them in
\LaTeX\footnote{\LaTeX is a free document formatter, available on all platforms, that does a great job with both math
and computer code, and thus will actually make your life easier.  It comes with standard Linux and Unix installs, but
for those who use other platforms, I have put links on my webpage (look for the Tex like on my main page) to where you
can download it for your home computer.} and make a pdf or handwrite neatly and scan, just be careful of the closing date.
Your clock might differ, so
please try to be in safely under the deadline.  You can save your work without submitting, and if you have done this
then in the event of a technical problem with the server I can still see your work and manually grade it.  For extended
answer problems (proofs, algorithm/methods, etc), how you get the answer is as important (if not more important) than
what the answer is.\par}
{Students are encouraged to discuss class material, \emph{but the work must be done individually}.  The homework
and all other graded work should reflect the effort of the individual who receives credit for it.  Cheating will
not be tolerated. The student may never copy other student's work, nor allow others to copy one's own work. If
two assignments look excessively similar, and are not narrow enough to justify the similarity, automatically a
grade of zero results, with the likely referral to appropriate university bodies. Again, students are allowed
and encouraged to discuss the material related to assignments, but when it comes to actually doing the assignment
work it is to be done individually.\par}}
%
%
%
\newcommand{\ProjectHDL}[1]{\section{HDL Project ({#1}\%)}
{The building of a computer is an essential aspect in really understanding the material, and as such we will be
building a MIPS computer in an HDL.  Key parts of the project will be discussed and worked on in class but you
must work on aspects as homework to finish.  You will need to test your components by building testbenches and
generating timing diagrams.  You will work in groups of 2. When your group is finished you will write a report
documenting what you accomplished in \LaTeX\ using the template LabN.tex provided.  All project files must be
uploaded to the class Canvas by the end of day on the day marked on the schedule.  On the due date of the project
you will be assigned a report of someone (random by Canvas) to review and provide them comments to improve.  The
one who wrote the report may then modify their lab write up to improve it.  I will then grade it.  Note you must
submit your project on time, or it will not make it into the review and grading process.  I can't change this later.
Stay on top of your project!\par}
{The first lab will be done by everyone, and then the partners will split the remaining write-ups - each partner writing
one or the other of the remaining pairs of labs.\par}
}
%
%
%
\newcommand{\ProjectKalman}[2]{\section{Project ({#1}\%)}
{Applying what you learned to a practicle problem of interest is essential to learn the topics involved.  You will select
and get approved a project of interest in the course topics area and then solve it.  You will submit weekly status reports
in the course Canvas.  When you are finished you will write a report documenting what you accomplished in \LaTeX, and
present the results during the final time, {#2}.  All project files must be zipped into a single file and uploaded to the
class Canvas by the end of day on the day marked on the schedule.  Stay on top of your project!  Project ideas and
guidance will be handed out in the second week of class. \par}
}
%
%
%
\newcommand{\ProjectADL}[1]{\section{Project ({#1}\%)}
{\textbf{Graduate students only!}  Applying what you learned to a practicle problem of interest is essential to learn the topics involved.  You will select
and get approved a project of interest in the remainder of the textbook (UART, Keyboard, PicoBlaze interfacing a sonar, etc.).
When you are finished you will write a report
documenting what you accomplished.  All project files must be zipped into a single
file and uploaded to the class Canvas by the end of day on the day marked on the schedule.  If you submit your project
on time, you may re-submit a fixed project for a re-grade.  Stay on top of your project!\par}
}
%
%
%
\newcommand{\ProjectBI}[2]{\section{Research Project ({#1}\%)}
Applying what you learned to a practicle problem of interest is essential to learn the topics involved.  You will select
and get approved a project of interest in the course topics area, study it so you can explain it.  When you are finished you
will write a report documenting what you researched.  All project files must be zipped into a single
file and uploaded to the class Canvas by the end of day on the day marked on the schedule.  If you submit your project
early, you may re-submit a fixed project for a re-grade.  Stay on top of your project!
In place of the final, your group will be presenting in about 8-10 min what your group researched.  Each person will evaluate
the other groups.  Evaluating the other groups will be part of your grade.  The final presentation is\par
\indent\textbf{{#2}}\par
}
%
%
%
\newcommand{\Project}[1]{\section{Project ({#1}\%)}
{Applying what you learned to a practicle problem of interest is essential to learn the topics involved.  You will select
and get approved a project of interest in the course topics area and then solve it.  When you are finished you will write a report
documenting what you accomplished.  All project files must be zipped into a single
file and uploaded to the class Canvas by the end of day on the day marked on the schedule.  If you submit your project
on time, you may re-submit a fixed project for a re-grade.  Stay on top of your project!\par}
}
%
% ACA 5313 RP
%
\newcommand{\ResearchPresentation}[3]{\section{Research Presentation ({#1}\%)}
{An essential part of graduate study is the ability to learn new areas and present them to your peers.
The research presentation will help prepare you to do this.  It will be on a topic from this course that you choose.
You will find a journal or conference paper on the subject, and explain it to the class (for instance you can check out
citeseer from the link on my website or use Google scholar).  Note I will not accept presentations on chapters from books,
or articles from popular science magazines, while these are great things to read, they are not scholarly research publications.
You will be given 5-10 minutes (depending on the size of the class) on the last day to present your results.  You should use
some presentation software (power point, pdf, etc.) to present the key ideas of your topic.  The presentation time is short,
but about the time of a poster session.\par}
{You must upload in Moodle by {#2}, an electronic copy of the paper.  Only one person can present on a given article,
and priority is given on a first come basis.\par}
{You must upload in Moodle by {#3}, a one page summary of the key ideas in your paper.\par}}
%
%                lab
%
\newcommand{\Lab}[1]{\section{Lab ({#1}\%)}
The lab is an essential aspect in really understanding the material.  All lab files must be zipped into a single
file and uploaded to the class Canvas by the end of day on the Monday following the lab.  If you submit your lab
on time, you may re-submit a fixed lab for a re-grade.  If you do not submit a completed lab on time, you
will get a 0 and cannot re-submit the lab for a re-grade.  Stay on top of your labs!\par
}
%
%                adv lab
%
\newcommand{\LabAdv}[1]{\section{Lab ({#1}\%)}
The lab is an essential aspect in really understanding the material.  Each day in class we will do labs that will
be integrated into the lesson.  You will then pick one of these labs every two weeks to write-up, thus you will each
write five labs.  You will only receive credit for your write-up and you and your lab partner may not do write-ups
on the same lab. To ensure this, your write-up will have your name first, your partner's name second, and the lab
topic as the title.  If you both submit the same topic, neither gets any credit.  All lab files must be written in
\LaTeX and compiled to a pdf then uploaded to the class Canvas.  You may re-submit a fixed lab for a re-grade, so the
earlier you submit, the more time you have to fix them.  Stay on top of your labs!\par
Labs should have:
\begin{enumerate}
\item an introduction that explains the purpose, theory, and materials needed;
\item an experimental plan that describes what to do and how to do it;
\item an analysis section, which includes the data and your analysis;
\item a conclusion, which pulls it all together and draws out the implications.
\end{enumerate}
I am not forcing a particular format, because I am treating this as an engineering report.  You are trying to explain
clearly what was done, why, and the importance.  Graphs and diagrams are highly encouraged.  A template is provided
online, but you are welcome to use your own.\par
}
%
%                adv lab
%
\newcommand{\LabBI}[1]{\section{Lab ({#1}\%)}
{The lab is an essential aspect in really understanding the material.  In class we will do labs that will
be integrated into the lesson.  You will then pick one of these labs approximately every month to write-up.  Each partner
will write their own lab on a different topic, thus you will each
write two labs.  You will only receive credit for your write-up and you and your lab partner may not do write-ups
on the same lab. To ensure this, your write-up will have your name first, your partner's name second, and the lab
topic as the title.  If you both submit the same topic, each gets half credit.  All lab files must be written in
\LaTeX and compiled to a pdf then uploaded to the class Canvas.  You may re-submit a fixed lab for a re-grade, so the
earlier you submit, the more time you have to fix them.  Stay on top of your labs!\par
Labs should have:
\begin{enumerate}
\item an introduction that explains the purpose, theory, and materials needed;
\item an experimental plan that describes what to do and how to do it;
\item an analysis section, which includes the data and your analysis;
\item a conclusion, which pulls it all together and draws out the implications.
\end{enumerate}
I am not forcing a particular format, because I am treating this as an engineering report.  You are trying to explain
clearly what was done, why, and the importance.  Graphs and diagrams are highly encouraged.  A template is provided
online, but you are welcome to use your own.\par}
}
%
%                midterm
%
\newcommand{\Midterm}[1]{\section{Midterm ({#1}\%)}
The midterm is closed book, but I allow $2$ pages of $8.5\times 11$ front and back of notes in the midterm.  You should
bring paper to write on and a pen or pencil.  You cannot use a calculator.  No electronic device of any type is
permitted in the midterm, use of one in any way will result in a 0 for the exam.  Cell phones should be off and
stored.\par
}
%
%                final
%
\newcommand{\Final}[2]{\section{Final ({#1}\%)}
The final is closed book, but I allow $4$ pages of $8.5\times 11$ front and back of notes in the final.  You should
bring paper to write on and a pen or pencil.  You cannot use a calculator.  No electronic device of any type is
permitted in the final, use of one in any way will result in a 0 for the exam.  Cell phones should be off and
stored.  The final is\par
\indent\textbf{{#2}}\par
}
%
%   Legalese
%
\newcommand{\Legalese}{
\section{Getting Help}
{Everything always seems easier in class.  The goal of this course is to learn the material, not to frustrate or
confuse you.  You will not know what is hard or confusing until you try though.  When you hit that problem that
you can't figure out, don't get frustrated, get help.  You are highly encouraged to take advantage of office
hours.  Office hours are the premiere assistance methodology of this class.  You are also encouraged to discuss
problems and methods with each other.  Study groups can be very helpful.  Do not cheat yourself though by getting
solutions and not understanding!  All work must be your own.  You can discuss and help, but may not copy someone
else's work, or allow your work to be copied.  That is plagiarism and is treated very severely.\par}
{The class website also has my notes, some basic computer practice drills that check themselves if you need to
refresh these topics, student tutorials, and links to other resources.  You are encouraged to avail yourself
of the help these provides.\par}
\@campuspolicies
\@adastatement
\@titleix
\@gradwriting
\section{Other Information}
{The student is responsible for all material covered in the readings, class, labs, and also for all announcements
made therein.  \textbf{The topics and dates in this syllabus are tentative}, for instance I might need to cut a
topic or move things around should we face unpleasant weather or other unforeseeable conditions.  All changes
will be discussed with the class.\par}
{My personal website, \href{http://www.r2labs.org}{r2labs.org}, which has my notes and helps for students is not required for the course, it is
solely there for your help. The university will not provide technical support for resources available on \href{http://www.r2labs.org}{r2labs.org}.
The university is not responsible for the content of \href{http://www.r2labs.org}{r2labs.org} and does not endorse any products which may be
advertised through \href{http://www.r2labs.org}{r2labs.org}.\par}}

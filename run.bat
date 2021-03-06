:: set of 1-gram ---------------------------------------------------------

:: training 1-gram no pos

crf_learn 1gram/template Tests/v2/Test1/Train.txt 1gram/modelv2t1
crf_learn 1gram/template Tests/v2/Test2/Train.txt 1gram/modelv2t2
crf_learn 1gram/template Tests/v2/Test3/Train.txt 1gram/modelv2t3
crf_learn 1gram/template Tests/v2/Test4/Train.txt 1gram/modelv2t4
crf_learn 1gram/template Tests/v2/Test5/Train.txt 1gram/modelv2t5

crf_learn 1gram/template Tests/v3/Test1/Train.txt 1gram/modelv3t1
crf_learn 1gram/template Tests/v3/Test2/Train.txt 1gram/modelv3t2
crf_learn 1gram/template Tests/v3/Test3/Train.txt 1gram/modelv3t3
crf_learn 1gram/template Tests/v3/Test4/Train.txt 1gram/modelv3t4
crf_learn 1gram/template Tests/v3/Test5/Train.txt 1gram/modelv3t5

:: training 1-gram with pos

crf_learn 1gram/postemplate Tests/v2/Test1/Train.txt 1gram/modelv2t1pos
crf_learn 1gram/postemplate Tests/v2/Test2/Train.txt 1gram/modelv2t2pos
crf_learn 1gram/postemplate Tests/v2/Test3/Train.txt 1gram/modelv2t3pos
crf_learn 1gram/postemplate Tests/v2/Test4/Train.txt 1gram/modelv2t4pos
crf_learn 1gram/postemplate Tests/v2/Test5/Train.txt 1gram/modelv2t5pos

crf_learn 1gram/postemplate Tests/v3/Test1/Train.txt 1gram/modelv3t1pos
crf_learn 1gram/postemplate Tests/v3/Test2/Train.txt 1gram/modelv3t2pos
crf_learn 1gram/postemplate Tests/v3/Test3/Train.txt 1gram/modelv3t3pos
crf_learn 1gram/postemplate Tests/v3/Test4/Train.txt 1gram/modelv3t4pos
crf_learn 1gram/postemplate Tests/v3/Test5/Train.txt 1gram/modelv3t5pos

:: testing 1-gram

crf_test -m 1gram/modelv2t1 Tests/v2/Test1/Test.txt > 1gram/outputv2t1.txt
crf_test -m 1gram/modelv2t2 Tests/v2/Test2/Test.txt > 1gram/outputv2t2.txt
crf_test -m 1gram/modelv2t3 Tests/v2/Test3/Test.txt > 1gram/outputv2t3.txt
crf_test -m 1gram/modelv2t4 Tests/v2/Test4/Test.txt > 1gram/outputv2t4.txt
crf_test -m 1gram/modelv2t5 Tests/v2/Test5/Test.txt > 1gram/outputv2t5.txt

crf_test -m 1gram/modelv3t1 Tests/v3/Test1/Test.txt > 1gram/outputv3t1.txt
crf_test -m 1gram/modelv3t2 Tests/v3/Test2/Test.txt > 1gram/outputv3t2.txt
crf_test -m 1gram/modelv3t3 Tests/v3/Test3/Test.txt > 1gram/outputv3t3.txt
crf_test -m 1gram/modelv3t4 Tests/v3/Test4/Test.txt > 1gram/outputv3t4.txt
crf_test -m 1gram/modelv3t5 Tests/v3/Test5/Test.txt > 1gram/outputv3t5.txt

crf_test -m 1gram/modelv2t1pos Tests/v2/Test1/Test.txt > 1gram/outputv2t1pos.txt
crf_test -m 1gram/modelv2t2pos Tests/v2/Test2/Test.txt > 1gram/outputv2t2pos.txt
crf_test -m 1gram/modelv2t3pos Tests/v2/Test3/Test.txt > 1gram/outputv2t3pos.txt
crf_test -m 1gram/modelv2t4pos Tests/v2/Test4/Test.txt > 1gram/outputv2t4pos.txt
crf_test -m 1gram/modelv2t5pos Tests/v2/Test5/Test.txt > 1gram/outputv2t5pos.txt

crf_test -m 1gram/modelv3t1pos Tests/v3/Test1/Test.txt > 1gram/outputv3t1pos.txt
crf_test -m 1gram/modelv3t2pos Tests/v3/Test2/Test.txt > 1gram/outputv3t2pos.txt
crf_test -m 1gram/modelv3t3pos Tests/v3/Test3/Test.txt > 1gram/outputv3t3pos.txt
crf_test -m 1gram/modelv3t4pos Tests/v3/Test4/Test.txt > 1gram/outputv3t4pos.txt
crf_test -m 1gram/modelv3t5pos Tests/v3/Test5/Test.txt > 1gram/outputv3t5pos.txt

:: checking result for 1-gram

perl conlleval.pl -l -d "\t" < 1gram/outputv2t1.txt > 1gram/resultv2t1.txt
perl conlleval.pl -l -d "\t" < 1gram/outputv2t2.txt > 1gram/resultv2t2.txt
perl conlleval.pl -l -d "\t" < 1gram/outputv2t3.txt > 1gram/resultv2t3.txt
perl conlleval.pl -l -d "\t" < 1gram/outputv2t4.txt > 1gram/resultv2t4.txt
perl conlleval.pl -l -d "\t" < 1gram/outputv2t5.txt > 1gram/resultv2t5.txt

perl conlleval.pl -l -d "\t" < 1gram/outputv3t1.txt > 1gram/resultv3t1.txt
perl conlleval.pl -l -d "\t" < 1gram/outputv3t2.txt > 1gram/resultv3t2.txt
perl conlleval.pl -l -d "\t" < 1gram/outputv3t3.txt > 1gram/resultv3t3.txt
perl conlleval.pl -l -d "\t" < 1gram/outputv3t4.txt > 1gram/resultv3t4.txt
perl conlleval.pl -l -d "\t" < 1gram/outputv3t5.txt > 1gram/resultv3t5.txt

perl conlleval.pl -l -d "\t" < 1gram/outputv2t1pos.txt > 1gram/resultv2t1pos.txt
perl conlleval.pl -l -d "\t" < 1gram/outputv2t2pos.txt > 1gram/resultv2t2pos.txt
perl conlleval.pl -l -d "\t" < 1gram/outputv2t3pos.txt > 1gram/resultv2t3pos.txt
perl conlleval.pl -l -d "\t" < 1gram/outputv2t4pos.txt > 1gram/resultv2t4pos.txt
perl conlleval.pl -l -d "\t" < 1gram/outputv2t5pos.txt > 1gram/resultv2t5pos.txt

perl conlleval.pl -l -d "\t" < 1gram/outputv3t1pos.txt > 1gram/resultv3t1pos.txt
perl conlleval.pl -l -d "\t" < 1gram/outputv3t2pos.txt > 1gram/resultv3t2pos.txt
perl conlleval.pl -l -d "\t" < 1gram/outputv3t3pos.txt > 1gram/resultv3t3pos.txt
perl conlleval.pl -l -d "\t" < 1gram/outputv3t4pos.txt > 1gram/resultv3t4pos.txt
perl conlleval.pl -l -d "\t" < 1gram/outputv3t5pos.txt > 1gram/resultv3t5pos.txt

:: set of 2-gram ---------------------------------------------------------

:: training 2-gram no pos

crf_learn 2gram/template Tests/v2/Test1/Train.txt 2gram/modelv2t1
crf_learn 2gram/template Tests/v2/Test2/Train.txt 2gram/modelv2t2
crf_learn 2gram/template Tests/v2/Test3/Train.txt 2gram/modelv2t3
crf_learn 2gram/template Tests/v2/Test4/Train.txt 2gram/modelv2t4
crf_learn 2gram/template Tests/v2/Test5/Train.txt 2gram/modelv2t5

crf_learn 2gram/template Tests/v3/Test1/Train.txt 2gram/modelv3t1
crf_learn 2gram/template Tests/v3/Test2/Train.txt 2gram/modelv3t2
crf_learn 2gram/template Tests/v3/Test3/Train.txt 2gram/modelv3t3
crf_learn 2gram/template Tests/v3/Test4/Train.txt 2gram/modelv3t4
crf_learn 2gram/template Tests/v3/Test5/Train.txt 2gram/modelv3t5

:: training 2-gram with pos

crf_learn 2gram/postemplate Tests/v2/Test1/Train.txt 2gram/modelv2t1pos
crf_learn 2gram/postemplate Tests/v2/Test2/Train.txt 2gram/modelv2t2pos
crf_learn 2gram/postemplate Tests/v2/Test3/Train.txt 2gram/modelv2t3pos
crf_learn 2gram/postemplate Tests/v2/Test4/Train.txt 2gram/modelv2t4pos
crf_learn 2gram/postemplate Tests/v2/Test5/Train.txt 2gram/modelv2t5pos

crf_learn 2gram/postemplate Tests/v3/Test1/Train.txt 2gram/modelv3t1pos
crf_learn 2gram/postemplate Tests/v3/Test2/Train.txt 2gram/modelv3t2pos
crf_learn 2gram/postemplate Tests/v3/Test3/Train.txt 2gram/modelv3t3pos
crf_learn 2gram/postemplate Tests/v3/Test4/Train.txt 2gram/modelv3t4pos
crf_learn 2gram/postemplate Tests/v3/Test5/Train.txt 2gram/modelv3t5pos

:: testing 2-gram

crf_test -m 2gram/modelv2t1 Tests/v2/Test1/Test.txt > 2gram/outputv2t1.txt
crf_test -m 2gram/modelv2t2 Tests/v2/Test2/Test.txt > 2gram/outputv2t2.txt
crf_test -m 2gram/modelv2t3 Tests/v2/Test3/Test.txt > 2gram/outputv2t3.txt
crf_test -m 2gram/modelv2t4 Tests/v2/Test4/Test.txt > 2gram/outputv2t4.txt
crf_test -m 2gram/modelv2t5 Tests/v2/Test5/Test.txt > 2gram/outputv2t5.txt

crf_test -m 2gram/modelv3t1 Tests/v3/Test1/Test.txt > 2gram/outputv3t1.txt
crf_test -m 2gram/modelv3t2 Tests/v3/Test2/Test.txt > 2gram/outputv3t2.txt
crf_test -m 2gram/modelv3t3 Tests/v3/Test3/Test.txt > 2gram/outputv3t3.txt
crf_test -m 2gram/modelv3t4 Tests/v3/Test4/Test.txt > 2gram/outputv3t4.txt
crf_test -m 2gram/modelv3t5 Tests/v3/Test5/Test.txt > 2gram/outputv3t5.txt

crf_test -m 2gram/modelv2t1pos Tests/v2/Test1/Test.txt > 2gram/outputv2t1pos.txt
crf_test -m 2gram/modelv2t2pos Tests/v2/Test2/Test.txt > 2gram/outputv2t2pos.txt
crf_test -m 2gram/modelv2t3pos Tests/v2/Test3/Test.txt > 2gram/outputv2t3pos.txt
crf_test -m 2gram/modelv2t4pos Tests/v2/Test4/Test.txt > 2gram/outputv2t4pos.txt
crf_test -m 2gram/modelv2t5pos Tests/v2/Test5/Test.txt > 2gram/outputv2t5pos.txt

crf_test -m 2gram/modelv3t1pos Tests/v3/Test1/Test.txt > 2gram/outputv3t1pos.txt
crf_test -m 2gram/modelv3t2pos Tests/v3/Test2/Test.txt > 2gram/outputv3t2pos.txt
crf_test -m 2gram/modelv3t3pos Tests/v3/Test3/Test.txt > 2gram/outputv3t3pos.txt
crf_test -m 2gram/modelv3t4pos Tests/v3/Test4/Test.txt > 2gram/outputv3t4pos.txt
crf_test -m 2gram/modelv3t5pos Tests/v3/Test5/Test.txt > 2gram/outputv3t5pos.txt

:: checking result for 2-gram

perl conlleval.pl -l -d "\t" < 2gram/outputv2t1.txt > 2gram/resultv2t1.txt
perl conlleval.pl -l -d "\t" < 2gram/outputv2t2.txt > 2gram/resultv2t2.txt
perl conlleval.pl -l -d "\t" < 2gram/outputv2t3.txt > 2gram/resultv2t3.txt
perl conlleval.pl -l -d "\t" < 2gram/outputv2t4.txt > 2gram/resultv2t4.txt
perl conlleval.pl -l -d "\t" < 2gram/outputv2t5.txt > 2gram/resultv2t5.txt

perl conlleval.pl -l -d "\t" < 2gram/outputv3t1.txt > 2gram/resultv3t1.txt
perl conlleval.pl -l -d "\t" < 2gram/outputv3t2.txt > 2gram/resultv3t2.txt
perl conlleval.pl -l -d "\t" < 2gram/outputv3t3.txt > 2gram/resultv3t3.txt
perl conlleval.pl -l -d "\t" < 2gram/outputv3t4.txt > 2gram/resultv3t4.txt
perl conlleval.pl -l -d "\t" < 2gram/outputv3t5.txt > 2gram/resultv3t5.txt

perl conlleval.pl -l -d "\t" < 2gram/outputv2t1pos.txt > 2gram/resultv2t1pos.txt
perl conlleval.pl -l -d "\t" < 2gram/outputv2t2pos.txt > 2gram/resultv2t2pos.txt
perl conlleval.pl -l -d "\t" < 2gram/outputv2t3pos.txt > 2gram/resultv2t3pos.txt
perl conlleval.pl -l -d "\t" < 2gram/outputv2t4pos.txt > 2gram/resultv2t4pos.txt
perl conlleval.pl -l -d "\t" < 2gram/outputv2t5pos.txt > 2gram/resultv2t5pos.txt

perl conlleval.pl -l -d "\t" < 2gram/outputv3t1pos.txt > 2gram/resultv3t1pos.txt
perl conlleval.pl -l -d "\t" < 2gram/outputv3t2pos.txt > 2gram/resultv3t2pos.txt
perl conlleval.pl -l -d "\t" < 2gram/outputv3t3pos.txt > 2gram/resultv3t3pos.txt
perl conlleval.pl -l -d "\t" < 2gram/outputv3t4pos.txt > 2gram/resultv3t4pos.txt
perl conlleval.pl -l -d "\t" < 2gram/outputv3t5pos.txt > 2gram/resultv3t5pos.txt

:: set of 3-gram ---------------------------------------------------------

:: training 3-gram no pos

crf_learn 3gram/template Tests/v2/Test1/Train.txt 3gram/modelv2t1
crf_learn 3gram/template Tests/v2/Test2/Train.txt 3gram/modelv2t2
crf_learn 3gram/template Tests/v2/Test3/Train.txt 3gram/modelv2t3
crf_learn 3gram/template Tests/v2/Test4/Train.txt 3gram/modelv2t4
crf_learn 3gram/template Tests/v2/Test5/Train.txt 3gram/modelv2t5

crf_learn 3gram/template Tests/v3/Test1/Train.txt 3gram/modelv3t1
crf_learn 3gram/template Tests/v3/Test2/Train.txt 3gram/modelv3t2
crf_learn 3gram/template Tests/v3/Test3/Train.txt 3gram/modelv3t3
crf_learn 3gram/template Tests/v3/Test4/Train.txt 3gram/modelv3t4
crf_learn 3gram/template Tests/v3/Test5/Train.txt 3gram/modelv3t5

:: training 3-gram with pos

crf_learn 3gram/postemplate Tests/v2/Test1/Train.txt 3gram/modelv2t1pos
crf_learn 3gram/postemplate Tests/v2/Test2/Train.txt 3gram/modelv2t2pos
crf_learn 3gram/postemplate Tests/v2/Test3/Train.txt 3gram/modelv2t3pos
crf_learn 3gram/postemplate Tests/v2/Test4/Train.txt 3gram/modelv2t4pos
crf_learn 3gram/postemplate Tests/v2/Test5/Train.txt 3gram/modelv2t5pos

crf_learn 3gram/postemplate Tests/v3/Test1/Train.txt 3gram/modelv3t1pos
crf_learn 3gram/postemplate Tests/v3/Test2/Train.txt 3gram/modelv3t2pos
crf_learn 3gram/postemplate Tests/v3/Test3/Train.txt 3gram/modelv3t3pos
crf_learn 3gram/postemplate Tests/v3/Test4/Train.txt 3gram/modelv3t4pos
crf_learn 3gram/postemplate Tests/v3/Test5/Train.txt 3gram/modelv3t5pos

:: testing 3-gram

crf_test -m 3gram/modelv2t1 Tests/v2/Test1/Test.txt > 3gram/outputv2t1.txt
crf_test -m 3gram/modelv2t2 Tests/v2/Test2/Test.txt > 3gram/outputv2t2.txt
crf_test -m 3gram/modelv2t3 Tests/v2/Test3/Test.txt > 3gram/outputv2t3.txt
crf_test -m 3gram/modelv2t4 Tests/v2/Test4/Test.txt > 3gram/outputv2t4.txt
crf_test -m 3gram/modelv2t5 Tests/v2/Test5/Test.txt > 3gram/outputv2t5.txt

crf_test -m 3gram/modelv3t1 Tests/v3/Test1/Test.txt > 3gram/outputv3t1.txt
crf_test -m 3gram/modelv3t2 Tests/v3/Test2/Test.txt > 3gram/outputv3t2.txt
crf_test -m 3gram/modelv3t3 Tests/v3/Test3/Test.txt > 3gram/outputv3t3.txt
crf_test -m 3gram/modelv3t4 Tests/v3/Test4/Test.txt > 3gram/outputv3t4.txt
crf_test -m 3gram/modelv3t5 Tests/v3/Test5/Test.txt > 3gram/outputv3t5.txt

crf_test -m 3gram/modelv2t1pos Tests/v2/Test1/Test.txt > 3gram/outputv2t1pos.txt
crf_test -m 3gram/modelv2t2pos Tests/v2/Test2/Test.txt > 3gram/outputv2t2pos.txt
crf_test -m 3gram/modelv2t3pos Tests/v2/Test3/Test.txt > 3gram/outputv2t3pos.txt
crf_test -m 3gram/modelv2t4pos Tests/v2/Test4/Test.txt > 3gram/outputv2t4pos.txt
crf_test -m 3gram/modelv2t5pos Tests/v2/Test5/Test.txt > 3gram/outputv2t5pos.txt

crf_test -m 3gram/modelv3t1pos Tests/v3/Test1/Test.txt > 3gram/outputv3t1pos.txt
crf_test -m 3gram/modelv3t2pos Tests/v3/Test2/Test.txt > 3gram/outputv3t2pos.txt
crf_test -m 3gram/modelv3t3pos Tests/v3/Test3/Test.txt > 3gram/outputv3t3pos.txt
crf_test -m 3gram/modelv3t4pos Tests/v3/Test4/Test.txt > 3gram/outputv3t4pos.txt
crf_test -m 3gram/modelv3t5pos Tests/v3/Test5/Test.txt > 3gram/outputv3t5pos.txt

:: checking result for 3-gram

perl conlleval.pl -l -d "\t" < 3gram/outputv2t1.txt > 3gram/resultv2t1.txt
perl conlleval.pl -l -d "\t" < 3gram/outputv2t2.txt > 3gram/resultv2t2.txt
perl conlleval.pl -l -d "\t" < 3gram/outputv2t3.txt > 3gram/resultv2t3.txt
perl conlleval.pl -l -d "\t" < 3gram/outputv2t4.txt > 3gram/resultv2t4.txt
perl conlleval.pl -l -d "\t" < 3gram/outputv2t5.txt > 3gram/resultv2t5.txt

perl conlleval.pl -l -d "\t" < 3gram/outputv3t1.txt > 3gram/resultv3t1.txt
perl conlleval.pl -l -d "\t" < 3gram/outputv3t2.txt > 3gram/resultv3t2.txt
perl conlleval.pl -l -d "\t" < 3gram/outputv3t3.txt > 3gram/resultv3t3.txt
perl conlleval.pl -l -d "\t" < 3gram/outputv3t4.txt > 3gram/resultv3t4.txt
perl conlleval.pl -l -d "\t" < 3gram/outputv3t5.txt > 3gram/resultv3t5.txt

perl conlleval.pl -l -d "\t" < 3gram/outputv2t1pos.txt > 3gram/resultv2t1pos.txt
perl conlleval.pl -l -d "\t" < 3gram/outputv2t2pos.txt > 3gram/resultv2t2pos.txt
perl conlleval.pl -l -d "\t" < 3gram/outputv2t3pos.txt > 3gram/resultv2t3pos.txt
perl conlleval.pl -l -d "\t" < 3gram/outputv2t4pos.txt > 3gram/resultv2t4pos.txt
perl conlleval.pl -l -d "\t" < 3gram/outputv2t5pos.txt > 3gram/resultv2t5pos.txt

perl conlleval.pl -l -d "\t" < 3gram/outputv3t1pos.txt > 3gram/resultv3t1pos.txt
perl conlleval.pl -l -d "\t" < 3gram/outputv3t2pos.txt > 3gram/resultv3t2pos.txt
perl conlleval.pl -l -d "\t" < 3gram/outputv3t3pos.txt > 3gram/resultv3t3pos.txt
perl conlleval.pl -l -d "\t" < 3gram/outputv3t4pos.txt > 3gram/resultv3t4pos.txt
perl conlleval.pl -l -d "\t" < 3gram/outputv3t5pos.txt > 3gram/resultv3t5pos.txt


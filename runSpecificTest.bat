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

crf_test -m 1gram/modelv2t1 Tests/v2/Test1/lawTest.txt > 1gram/lawoutputv2t1.txt
crf_test -m 1gram/modelv2t1 Tests/v2/Test1/fineTest.txt > 1gram/fineoutputv2t1.txt
crf_test -m 1gram/modelv2t2 Tests/v2/Test2/lawTest.txt > 1gram/lawoutputv2t2.txt
crf_test -m 1gram/modelv2t2 Tests/v2/Test2/fineTest.txt > 1gram/fineoutputv2t2.txt
crf_test -m 1gram/modelv2t3 Tests/v2/Test3/lawTest.txt > 1gram/lawoutputv2t3.txt
crf_test -m 1gram/modelv2t3 Tests/v2/Test3/fineTest.txt > 1gram/fineoutputv2t3.txt
crf_test -m 1gram/modelv2t4 Tests/v2/Test4/lawTest.txt > 1gram/lawoutputv2t4.txt
crf_test -m 1gram/modelv2t4 Tests/v2/Test4/fineTest.txt > 1gram/fineoutputv2t4.txt
crf_test -m 1gram/modelv2t5 Tests/v2/Test5/lawTest.txt > 1gram/lawoutputv2t5.txt
crf_test -m 1gram/modelv2t5 Tests/v2/Test5/fineTest.txt > 1gram/fineoutputv2t5.txt

crf_test -m 1gram/modelv3t1 Tests/v3/Test1/lawTest.txt > 1gram/lawoutputv3t1.txt
crf_test -m 1gram/modelv3t1 Tests/v3/Test1/fineTest.txt > 1gram/fineoutputv3t1.txt
crf_test -m 1gram/modelv3t2 Tests/v3/Test2/lawTest.txt > 1gram/lawoutputv3t2.txt
crf_test -m 1gram/modelv3t2 Tests/v3/Test2/fineTest.txt > 1gram/fineoutputv3t2.txt
crf_test -m 1gram/modelv3t3 Tests/v3/Test3/lawTest.txt > 1gram/lawoutputv3t3.txt
crf_test -m 1gram/modelv3t3 Tests/v3/Test3/fineTest.txt > 1gram/fineoutputv3t3.txt
crf_test -m 1gram/modelv3t4 Tests/v3/Test4/lawTest.txt > 1gram/lawoutputv3t4.txt
crf_test -m 1gram/modelv3t4 Tests/v3/Test4/fineTest.txt > 1gram/fineoutputv3t4.txt
crf_test -m 1gram/modelv3t5 Tests/v3/Test5/lawTest.txt > 1gram/lawoutputv3t5.txt
crf_test -m 1gram/modelv3t5 Tests/v3/Test5/fineTest.txt > 1gram/fineoutputv3t5.txt

crf_test -m 1gram/modelv2t1pos Tests/v2/Test1/lawTest.txt > 1gram/lawoutputv2t1pos.txt
crf_test -m 1gram/modelv2t1pos Tests/v2/Test1/fineTest.txt > 1gram/fineoutputv2t1pos.txt
crf_test -m 1gram/modelv2t2pos Tests/v2/Test2/lawTest.txt > 1gram/lawoutputv2t2pos.txt
crf_test -m 1gram/modelv2t2pos Tests/v2/Test2/fineTest.txt > 1gram/fineoutputv2t2pos.txt
crf_test -m 1gram/modelv2t3pos Tests/v2/Test3/lawTest.txt > 1gram/lawoutputv2t3pos.txt
crf_test -m 1gram/modelv2t3pos Tests/v2/Test3/fineTest.txt > 1gram/fineoutputv2t3pos.txt
crf_test -m 1gram/modelv2t4pos Tests/v2/Test4/lawTest.txt > 1gram/lawoutputv2t4pos.txt
crf_test -m 1gram/modelv2t4pos Tests/v2/Test4/fineTest.txt > 1gram/fineoutputv2t4pos.txt
crf_test -m 1gram/modelv2t5pos Tests/v2/Test5/lawTest.txt > 1gram/lawoutputv2t5pos.txt
crf_test -m 1gram/modelv2t5pos Tests/v2/Test5/fineTest.txt > 1gram/fineoutputv2t5pos.txt

crf_test -m 1gram/modelv3t1pos Tests/v3/Test1/lawTest.txt > 1gram/lawoutputv3t1pos.txt
crf_test -m 1gram/modelv3t1pos Tests/v3/Test1/fineTest.txt > 1gram/fineoutputv3t1pos.txt
crf_test -m 1gram/modelv3t2pos Tests/v3/Test2/lawTest.txt > 1gram/lawoutputv3t2pos.txt
crf_test -m 1gram/modelv3t2pos Tests/v3/Test2/fineTest.txt > 1gram/fineoutputv3t2pos.txt
crf_test -m 1gram/modelv3t3pos Tests/v3/Test3/lawTest.txt > 1gram/lawoutputv3t3pos.txt
crf_test -m 1gram/modelv3t3pos Tests/v3/Test3/fineTest.txt > 1gram/fineoutputv3t3pos.txt
crf_test -m 1gram/modelv3t4pos Tests/v3/Test4/lawTest.txt > 1gram/lawoutputv3t4pos.txt
crf_test -m 1gram/modelv3t4pos Tests/v3/Test4/fineTest.txt > 1gram/fineoutputv3t4pos.txt
crf_test -m 1gram/modelv3t5pos Tests/v3/Test5/lawTest.txt > 1gram/lawoutputv3t5pos.txt
crf_test -m 1gram/modelv3t5pos Tests/v3/Test5/fineTest.txt > 1gram/fineoutputv3t5pos.txt

:: checking result for 1-gram

perl conlleval.pl -l -d "\t" < 1gram/lawoutputv2t1.txt > 1gram/fineresultv2t1.txt
perl conlleval.pl -l -d "\t" < 1gram/lawoutputv2t2.txt > 1gram/fineresultv2t2.txt
perl conlleval.pl -l -d "\t" < 1gram/lawoutputv2t3.txt > 1gram/fineresultv2t3.txt
perl conlleval.pl -l -d "\t" < 1gram/lawoutputv2t4.txt > 1gram/fineresultv2t4.txt
perl conlleval.pl -l -d "\t" < 1gram/lawoutputv2t5.txt > 1gram/fineresultv2t5.txt

perl conlleval.pl -l -d "\t" < 1gram/lawoutputv3t1.txt > 1gram/fineresultv3t1.txt
perl conlleval.pl -l -d "\t" < 1gram/lawoutputv3t2.txt > 1gram/fineresultv3t2.txt
perl conlleval.pl -l -d "\t" < 1gram/lawoutputv3t3.txt > 1gram/fineresultv3t3.txt
perl conlleval.pl -l -d "\t" < 1gram/lawoutputv3t4.txt > 1gram/fineresultv3t4.txt
perl conlleval.pl -l -d "\t" < 1gram/lawoutputv3t5.txt > 1gram/fineresultv3t5.txt

perl conlleval.pl -l -d "\t" < 1gram/lawoutputv2t1pos.txt > 1gram/fineresultv2t1pos.txt
perl conlleval.pl -l -d "\t" < 1gram/lawoutputv2t2pos.txt > 1gram/fineresultv2t2pos.txt
perl conlleval.pl -l -d "\t" < 1gram/lawoutputv2t3pos.txt > 1gram/fineresultv2t3pos.txt
perl conlleval.pl -l -d "\t" < 1gram/lawoutputv2t4pos.txt > 1gram/fineresultv2t4pos.txt
perl conlleval.pl -l -d "\t" < 1gram/lawoutputv2t5pos.txt > 1gram/fineresultv2t5pos.txt

perl conlleval.pl -l -d "\t" < 1gram/lawoutputv3t1pos.txt > 1gram/fineresultv3t1pos.txt
perl conlleval.pl -l -d "\t" < 1gram/lawoutputv3t2pos.txt > 1gram/fineresultv3t2pos.txt
perl conlleval.pl -l -d "\t" < 1gram/lawoutputv3t3pos.txt > 1gram/fineresultv3t3pos.txt
perl conlleval.pl -l -d "\t" < 1gram/lawoutputv3t4pos.txt > 1gram/fineresultv3t4pos.txt
perl conlleval.pl -l -d "\t" < 1gram/lawoutputv3t5pos.txt > 1gram/fineresultv3t5pos.txt

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

crf_test -m 2gram/modelv2t1 Tests/v2/Test1/lawTest.txt > 2gram/lawoutputv2t1.txt
crf_test -m 2gram/modelv2t1 Tests/v2/Test1/fineTest.txt > 2gram/fineoutputv2t1.txt
crf_test -m 2gram/modelv2t2 Tests/v2/Test2/lawTest.txt > 2gram/lawoutputv2t2.txt
crf_test -m 2gram/modelv2t2 Tests/v2/Test2/fineTest.txt > 2gram/fineoutputv2t2.txt
crf_test -m 2gram/modelv2t3 Tests/v2/Test3/lawTest.txt > 2gram/lawoutputv2t3.txt
crf_test -m 2gram/modelv2t3 Tests/v2/Test3/fineTest.txt > 2gram/fineoutputv2t3.txt
crf_test -m 2gram/modelv2t4 Tests/v2/Test4/lawTest.txt > 2gram/lawoutputv2t4.txt
crf_test -m 2gram/modelv2t4 Tests/v2/Test4/fineTest.txt > 2gram/fineoutputv2t4.txt
crf_test -m 2gram/modelv2t5 Tests/v2/Test5/lawTest.txt > 2gram/lawoutputv2t5.txt
crf_test -m 2gram/modelv2t5 Tests/v2/Test5/fineTest.txt > 2gram/fineoutputv2t5.txt

crf_test -m 2gram/modelv3t1 Tests/v3/Test1/lawTest.txt > 2gram/lawoutputv3t1.txt
crf_test -m 2gram/modelv3t1 Tests/v3/Test1/fineTest.txt > 2gram/fineoutputv3t1.txt
crf_test -m 2gram/modelv3t2 Tests/v3/Test2/lawTest.txt > 2gram/lawoutputv3t2.txt
crf_test -m 2gram/modelv3t2 Tests/v3/Test2/fineTest.txt > 2gram/fineoutputv3t2.txt
crf_test -m 2gram/modelv3t3 Tests/v3/Test3/lawTest.txt > 2gram/lawoutputv3t3.txt
crf_test -m 2gram/modelv3t3 Tests/v3/Test3/fineTest.txt > 2gram/fineoutputv3t3.txt
crf_test -m 2gram/modelv3t4 Tests/v3/Test4/lawTest.txt > 2gram/lawoutputv3t4.txt
crf_test -m 2gram/modelv3t4 Tests/v3/Test4/fineTest.txt > 2gram/fineoutputv3t4.txt
crf_test -m 2gram/modelv3t5 Tests/v3/Test5/lawTest.txt > 2gram/lawoutputv3t5.txt
crf_test -m 2gram/modelv3t5 Tests/v3/Test5/fineTest.txt > 2gram/fineoutputv3t5.txt

crf_test -m 2gram/modelv2t1pos Tests/v2/Test1/lawTest.txt > 2gram/lawoutputv2t1pos.txt
crf_test -m 2gram/modelv2t1pos Tests/v2/Test1/fineTest.txt > 2gram/fineoutputv2t1pos.txt
crf_test -m 2gram/modelv2t2pos Tests/v2/Test2/lawTest.txt > 2gram/lawoutputv2t2pos.txt
crf_test -m 2gram/modelv2t2pos Tests/v2/Test2/fineTest.txt > 2gram/fineoutputv2t2pos.txt
crf_test -m 2gram/modelv2t3pos Tests/v2/Test3/lawTest.txt > 2gram/lawoutputv2t3pos.txt
crf_test -m 2gram/modelv2t3pos Tests/v2/Test3/fineTest.txt > 2gram/fineoutputv2t3pos.txt
crf_test -m 2gram/modelv2t4pos Tests/v2/Test4/lawTest.txt > 2gram/lawoutputv2t4pos.txt
crf_test -m 2gram/modelv2t4pos Tests/v2/Test4/fineTest.txt > 2gram/fineoutputv2t4pos.txt
crf_test -m 2gram/modelv2t5pos Tests/v2/Test5/lawTest.txt > 2gram/lawoutputv2t5pos.txt
crf_test -m 2gram/modelv2t5pos Tests/v2/Test5/fineTest.txt > 2gram/fineoutputv2t5pos.txt

crf_test -m 2gram/modelv3t1pos Tests/v3/Test1/lawTest.txt > 2gram/lawoutputv3t1pos.txt
crf_test -m 2gram/modelv3t1pos Tests/v3/Test1/fineTest.txt > 2gram/fineoutputv3t1pos.txt
crf_test -m 2gram/modelv3t2pos Tests/v3/Test2/lawTest.txt > 2gram/lawoutputv3t2pos.txt
crf_test -m 2gram/modelv3t2pos Tests/v3/Test2/fineTest.txt > 2gram/fineoutputv3t2pos.txt
crf_test -m 2gram/modelv3t3pos Tests/v3/Test3/lawTest.txt > 2gram/lawoutputv3t3pos.txt
crf_test -m 2gram/modelv3t3pos Tests/v3/Test3/fineTest.txt > 2gram/fineoutputv3t3pos.txt
crf_test -m 2gram/modelv3t4pos Tests/v3/Test4/lawTest.txt > 2gram/lawoutputv3t4pos.txt
crf_test -m 2gram/modelv3t4pos Tests/v3/Test4/fineTest.txt > 2gram/fineoutputv3t4pos.txt
crf_test -m 2gram/modelv3t5pos Tests/v3/Test5/lawTest.txt > 2gram/lawoutputv3t5pos.txt
crf_test -m 2gram/modelv3t5pos Tests/v3/Test5/fineTest.txt > 2gram/fineoutputv3t5pos.txt

:: checking result for 2-gram

perl conlleval.pl -l -d "\t" < 2gram/lawoutputv2t1.txt > 2gram/fineresultv2t1.txt
perl conlleval.pl -l -d "\t" < 2gram/lawoutputv2t2.txt > 2gram/fineresultv2t2.txt
perl conlleval.pl -l -d "\t" < 2gram/lawoutputv2t3.txt > 2gram/fineresultv2t3.txt
perl conlleval.pl -l -d "\t" < 2gram/lawoutputv2t4.txt > 2gram/fineresultv2t4.txt
perl conlleval.pl -l -d "\t" < 2gram/lawoutputv2t5.txt > 2gram/fineresultv2t5.txt

perl conlleval.pl -l -d "\t" < 2gram/lawoutputv3t1.txt > 2gram/fineresultv3t1.txt
perl conlleval.pl -l -d "\t" < 2gram/lawoutputv3t2.txt > 2gram/fineresultv3t2.txt
perl conlleval.pl -l -d "\t" < 2gram/lawoutputv3t3.txt > 2gram/fineresultv3t3.txt
perl conlleval.pl -l -d "\t" < 2gram/lawoutputv3t4.txt > 2gram/fineresultv3t4.txt
perl conlleval.pl -l -d "\t" < 2gram/lawoutputv3t5.txt > 2gram/fineresultv3t5.txt

perl conlleval.pl -l -d "\t" < 2gram/lawoutputv2t1pos.txt > 2gram/fineresultv2t1pos.txt
perl conlleval.pl -l -d "\t" < 2gram/lawoutputv2t2pos.txt > 2gram/fineresultv2t2pos.txt
perl conlleval.pl -l -d "\t" < 2gram/lawoutputv2t3pos.txt > 2gram/fineresultv2t3pos.txt
perl conlleval.pl -l -d "\t" < 2gram/lawoutputv2t4pos.txt > 2gram/fineresultv2t4pos.txt
perl conlleval.pl -l -d "\t" < 2gram/lawoutputv2t5pos.txt > 2gram/fineresultv2t5pos.txt

perl conlleval.pl -l -d "\t" < 2gram/lawoutputv3t1pos.txt > 2gram/fineresultv3t1pos.txt
perl conlleval.pl -l -d "\t" < 2gram/lawoutputv3t2pos.txt > 2gram/fineresultv3t2pos.txt
perl conlleval.pl -l -d "\t" < 2gram/lawoutputv3t3pos.txt > 2gram/fineresultv3t3pos.txt
perl conlleval.pl -l -d "\t" < 2gram/lawoutputv3t4pos.txt > 2gram/fineresultv3t4pos.txt
perl conlleval.pl -l -d "\t" < 2gram/lawoutputv3t5pos.txt > 2gram/fineresultv3t5pos.txt

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

crf_test -m 3gram/modelv2t1 Tests/v2/Test1/lawTest.txt > 3gram/lawoutputv2t1.txt
crf_test -m 3gram/modelv2t1 Tests/v2/Test1/fineTest.txt > 3gram/fineoutputv2t1.txt
crf_test -m 3gram/modelv2t2 Tests/v2/Test2/lawTest.txt > 3gram/lawoutputv2t2.txt
crf_test -m 3gram/modelv2t2 Tests/v2/Test2/fineTest.txt > 3gram/fineoutputv2t2.txt
crf_test -m 3gram/modelv2t3 Tests/v2/Test3/lawTest.txt > 3gram/lawoutputv2t3.txt
crf_test -m 3gram/modelv2t3 Tests/v2/Test3/fineTest.txt > 3gram/fineoutputv2t3.txt
crf_test -m 3gram/modelv2t4 Tests/v2/Test4/lawTest.txt > 3gram/lawoutputv2t4.txt
crf_test -m 3gram/modelv2t4 Tests/v2/Test4/fineTest.txt > 3gram/fineoutputv2t4.txt
crf_test -m 3gram/modelv2t5 Tests/v2/Test5/lawTest.txt > 3gram/lawoutputv2t5.txt
crf_test -m 3gram/modelv2t5 Tests/v2/Test5/fineTest.txt > 3gram/fineoutputv2t5.txt

crf_test -m 3gram/modelv3t1 Tests/v3/Test1/lawTest.txt > 3gram/lawoutputv3t1.txt
crf_test -m 3gram/modelv3t1 Tests/v3/Test1/fineTest.txt > 3gram/fineoutputv3t1.txt
crf_test -m 3gram/modelv3t2 Tests/v3/Test2/lawTest.txt > 3gram/lawoutputv3t2.txt
crf_test -m 3gram/modelv3t2 Tests/v3/Test2/fineTest.txt > 3gram/fineoutputv3t2.txt
crf_test -m 3gram/modelv3t3 Tests/v3/Test3/lawTest.txt > 3gram/lawoutputv3t3.txt
crf_test -m 3gram/modelv3t3 Tests/v3/Test3/fineTest.txt > 3gram/fineoutputv3t3.txt
crf_test -m 3gram/modelv3t4 Tests/v3/Test4/lawTest.txt > 3gram/lawoutputv3t4.txt
crf_test -m 3gram/modelv3t4 Tests/v3/Test4/fineTest.txt > 3gram/fineoutputv3t4.txt
crf_test -m 3gram/modelv3t5 Tests/v3/Test5/lawTest.txt > 3gram/lawoutputv3t5.txt
crf_test -m 3gram/modelv3t5 Tests/v3/Test5/fineTest.txt > 3gram/fineoutputv3t5.txt

crf_test -m 3gram/modelv2t1pos Tests/v2/Test1/lawTest.txt > 3gram/lawoutputv2t1pos.txt
crf_test -m 3gram/modelv2t1pos Tests/v2/Test1/fineTest.txt > 3gram/fineoutputv2t1pos.txt
crf_test -m 3gram/modelv2t2pos Tests/v2/Test2/lawTest.txt > 3gram/lawoutputv2t2pos.txt
crf_test -m 3gram/modelv2t2pos Tests/v2/Test2/fineTest.txt > 3gram/fineoutputv2t2pos.txt
crf_test -m 3gram/modelv2t3pos Tests/v2/Test3/lawTest.txt > 3gram/lawoutputv2t3pos.txt
crf_test -m 3gram/modelv2t3pos Tests/v2/Test3/fineTest.txt > 3gram/fineoutputv2t3pos.txt
crf_test -m 3gram/modelv2t4pos Tests/v2/Test4/lawTest.txt > 3gram/lawoutputv2t4pos.txt
crf_test -m 3gram/modelv2t4pos Tests/v2/Test4/fineTest.txt > 3gram/fineoutputv2t4pos.txt
crf_test -m 3gram/modelv2t5pos Tests/v2/Test5/lawTest.txt > 3gram/lawoutputv2t5pos.txt
crf_test -m 3gram/modelv2t5pos Tests/v2/Test5/fineTest.txt > 3gram/fineoutputv2t5pos.txt

crf_test -m 3gram/modelv3t1pos Tests/v3/Test1/lawTest.txt > 3gram/lawoutputv3t1pos.txt
crf_test -m 3gram/modelv3t1pos Tests/v3/Test1/fineTest.txt > 3gram/fineoutputv3t1pos.txt
crf_test -m 3gram/modelv3t2pos Tests/v3/Test2/lawTest.txt > 3gram/lawoutputv3t2pos.txt
crf_test -m 3gram/modelv3t2pos Tests/v3/Test2/fineTest.txt > 3gram/fineoutputv3t2pos.txt
crf_test -m 3gram/modelv3t3pos Tests/v3/Test3/lawTest.txt > 3gram/lawoutputv3t3pos.txt
crf_test -m 3gram/modelv3t3pos Tests/v3/Test3/fineTest.txt > 3gram/fineoutputv3t3pos.txt
crf_test -m 3gram/modelv3t4pos Tests/v3/Test4/lawTest.txt > 3gram/lawoutputv3t4pos.txt
crf_test -m 3gram/modelv3t4pos Tests/v3/Test4/fineTest.txt > 3gram/fineoutputv3t4pos.txt
crf_test -m 3gram/modelv3t5pos Tests/v3/Test5/lawTest.txt > 3gram/lawoutputv3t5pos.txt
crf_test -m 3gram/modelv3t5pos Tests/v3/Test5/fineTest.txt > 3gram/fineoutputv3t5pos.txt

:: checking result for 3-gram

perl conlleval.pl -l -d "\t" < 3gram/lawoutputv2t1.txt > 3gram/fineresultv2t1.txt
perl conlleval.pl -l -d "\t" < 3gram/lawoutputv2t2.txt > 3gram/fineresultv2t2.txt
perl conlleval.pl -l -d "\t" < 3gram/lawoutputv2t3.txt > 3gram/fineresultv2t3.txt
perl conlleval.pl -l -d "\t" < 3gram/lawoutputv2t4.txt > 3gram/fineresultv2t4.txt
perl conlleval.pl -l -d "\t" < 3gram/lawoutputv2t5.txt > 3gram/fineresultv2t5.txt

perl conlleval.pl -l -d "\t" < 3gram/lawoutputv3t1.txt > 3gram/fineresultv3t1.txt
perl conlleval.pl -l -d "\t" < 3gram/lawoutputv3t2.txt > 3gram/fineresultv3t2.txt
perl conlleval.pl -l -d "\t" < 3gram/lawoutputv3t3.txt > 3gram/fineresultv3t3.txt
perl conlleval.pl -l -d "\t" < 3gram/lawoutputv3t4.txt > 3gram/fineresultv3t4.txt
perl conlleval.pl -l -d "\t" < 3gram/lawoutputv3t5.txt > 3gram/fineresultv3t5.txt

perl conlleval.pl -l -d "\t" < 3gram/lawoutputv2t1pos.txt > 3gram/fineresultv2t1pos.txt
perl conlleval.pl -l -d "\t" < 3gram/lawoutputv2t2pos.txt > 3gram/fineresultv2t2pos.txt
perl conlleval.pl -l -d "\t" < 3gram/lawoutputv2t3pos.txt > 3gram/fineresultv2t3pos.txt
perl conlleval.pl -l -d "\t" < 3gram/lawoutputv2t4pos.txt > 3gram/fineresultv2t4pos.txt
perl conlleval.pl -l -d "\t" < 3gram/lawoutputv2t5pos.txt > 3gram/fineresultv2t5pos.txt

perl conlleval.pl -l -d "\t" < 3gram/lawoutputv3t1pos.txt > 3gram/fineresultv3t1pos.txt
perl conlleval.pl -l -d "\t" < 3gram/lawoutputv3t2pos.txt > 3gram/fineresultv3t2pos.txt
perl conlleval.pl -l -d "\t" < 3gram/lawoutputv3t3pos.txt > 3gram/fineresultv3t3pos.txt
perl conlleval.pl -l -d "\t" < 3gram/lawoutputv3t4pos.txt > 3gram/fineresultv3t4pos.txt
perl conlleval.pl -l -d "\t" < 3gram/lawoutputv3t5pos.txt > 3gram/fineresultv3t5pos.txt


:: set of 1-gram ---------------------------------------------------------

:: training 1-gram no pos

crf_learn -a MIRA 1gram/template Tests/v2/Test1/Train.txt 1gram/miramodelv2t1
crf_learn -a MIRA 1gram/template Tests/v2/Test2/Train.txt 1gram/miramodelv2t2
crf_learn -a MIRA 1gram/template Tests/v2/Test3/Train.txt 1gram/miramodelv2t3
crf_learn -a MIRA 1gram/template Tests/v2/Test4/Train.txt 1gram/miramodelv2t4
crf_learn -a MIRA 1gram/template Tests/v2/Test5/Train.txt 1gram/miramodelv2t5

crf_learn -a MIRA 1gram/template Tests/v3/Test1/Train.txt 1gram/miramodelv3t1
crf_learn -a MIRA 1gram/template Tests/v3/Test2/Train.txt 1gram/miramodelv3t2
crf_learn -a MIRA 1gram/template Tests/v3/Test3/Train.txt 1gram/miramodelv3t3
crf_learn -a MIRA 1gram/template Tests/v3/Test4/Train.txt 1gram/miramodelv3t4
crf_learn -a MIRA 1gram/template Tests/v3/Test5/Train.txt 1gram/miramodelv3t5

:: training 1-gram with pos

crf_learn -a MIRA 1gram/postemplate Tests/v2/Test1/Train.txt 1gram/miramodelv2t1pos
crf_learn -a MIRA 1gram/postemplate Tests/v2/Test2/Train.txt 1gram/miramodelv2t2pos
crf_learn -a MIRA 1gram/postemplate Tests/v2/Test3/Train.txt 1gram/miramodelv2t3pos
crf_learn -a MIRA 1gram/postemplate Tests/v2/Test4/Train.txt 1gram/miramodelv2t4pos
crf_learn -a MIRA 1gram/postemplate Tests/v2/Test5/Train.txt 1gram/miramodelv2t5pos

crf_learn -a MIRA 1gram/postemplate Tests/v3/Test1/Train.txt 1gram/miramodelv3t1pos
crf_learn -a MIRA 1gram/postemplate Tests/v3/Test2/Train.txt 1gram/miramodelv3t2pos
crf_learn -a MIRA 1gram/postemplate Tests/v3/Test3/Train.txt 1gram/miramodelv3t3pos
crf_learn -a MIRA 1gram/postemplate Tests/v3/Test4/Train.txt 1gram/miramodelv3t4pos
crf_learn -a MIRA 1gram/postemplate Tests/v3/Test5/Train.txt 1gram/miramodelv3t5pos

:: testing 1-gram

crf_test -m 1gram/miramodelv2t1 Tests/v2/Test1/Test.txt > 1gram/miraoutputv2t1.txt
crf_test -m 1gram/miramodelv2t2 Tests/v2/Test2/Test.txt > 1gram/miraoutputv2t2.txt
crf_test -m 1gram/miramodelv2t3 Tests/v2/Test3/Test.txt > 1gram/miraoutputv2t3.txt
crf_test -m 1gram/miramodelv2t4 Tests/v2/Test4/Test.txt > 1gram/miraoutputv2t4.txt
crf_test -m 1gram/miramodelv2t5 Tests/v2/Test5/Test.txt > 1gram/miraoutputv2t5.txt

crf_test -m 1gram/miramodelv3t1 Tests/v3/Test1/Test.txt > 1gram/miraoutputv3t1.txt
crf_test -m 1gram/miramodelv3t2 Tests/v3/Test2/Test.txt > 1gram/miraoutputv3t2.txt
crf_test -m 1gram/miramodelv3t3 Tests/v3/Test3/Test.txt > 1gram/miraoutputv3t3.txt
crf_test -m 1gram/miramodelv3t4 Tests/v3/Test4/Test.txt > 1gram/miraoutputv3t4.txt
crf_test -m 1gram/miramodelv3t5 Tests/v3/Test5/Test.txt > 1gram/miraoutputv3t5.txt

crf_test -m 1gram/miramodelv2t1pos Tests/v2/Test1/Test.txt > 1gram/miraoutputv2t1pos.txt
crf_test -m 1gram/miramodelv2t2pos Tests/v2/Test2/Test.txt > 1gram/miraoutputv2t2pos.txt
crf_test -m 1gram/miramodelv2t3pos Tests/v2/Test3/Test.txt > 1gram/miraoutputv2t3pos.txt
crf_test -m 1gram/miramodelv2t4pos Tests/v2/Test4/Test.txt > 1gram/miraoutputv2t4pos.txt
crf_test -m 1gram/miramodelv2t5pos Tests/v2/Test5/Test.txt > 1gram/miraoutputv2t5pos.txt

crf_test -m 1gram/miramodelv3t1pos Tests/v3/Test1/Test.txt > 1gram/miraoutputv3t1pos.txt
crf_test -m 1gram/miramodelv3t2pos Tests/v3/Test2/Test.txt > 1gram/miraoutputv3t2pos.txt
crf_test -m 1gram/miramodelv3t3pos Tests/v3/Test3/Test.txt > 1gram/miraoutputv3t3pos.txt
crf_test -m 1gram/miramodelv3t4pos Tests/v3/Test4/Test.txt > 1gram/miraoutputv3t4pos.txt
crf_test -m 1gram/miramodelv3t5pos Tests/v3/Test5/Test.txt > 1gram/miraoutputv3t5pos.txt

:: checking result for 1-gram

perl conlleval.pl -l -d "\t" < 1gram/miraoutputv2t1.txt > 1gram/miraresultv2t1.txt
perl conlleval.pl -l -d "\t" < 1gram/miraoutputv2t2.txt > 1gram/miraresultv2t2.txt
perl conlleval.pl -l -d "\t" < 1gram/miraoutputv2t3.txt > 1gram/miraresultv2t3.txt
perl conlleval.pl -l -d "\t" < 1gram/miraoutputv2t4.txt > 1gram/miraresultv2t4.txt
perl conlleval.pl -l -d "\t" < 1gram/miraoutputv2t5.txt > 1gram/miraresultv2t5.txt

perl conlleval.pl -l -d "\t" < 1gram/miraoutputv3t1.txt > 1gram/miraresultv3t1.txt
perl conlleval.pl -l -d "\t" < 1gram/miraoutputv3t2.txt > 1gram/miraresultv3t2.txt
perl conlleval.pl -l -d "\t" < 1gram/miraoutputv3t3.txt > 1gram/miraresultv3t3.txt
perl conlleval.pl -l -d "\t" < 1gram/miraoutputv3t4.txt > 1gram/miraresultv3t4.txt
perl conlleval.pl -l -d "\t" < 1gram/miraoutputv3t5.txt > 1gram/miraresultv3t5.txt

perl conlleval.pl -l -d "\t" < 1gram/miraoutputv2t1pos.txt > 1gram/miraresultv2t1pos.txt
perl conlleval.pl -l -d "\t" < 1gram/miraoutputv2t2pos.txt > 1gram/miraresultv2t2pos.txt
perl conlleval.pl -l -d "\t" < 1gram/miraoutputv2t3pos.txt > 1gram/miraresultv2t3pos.txt
perl conlleval.pl -l -d "\t" < 1gram/miraoutputv2t4pos.txt > 1gram/miraresultv2t4pos.txt
perl conlleval.pl -l -d "\t" < 1gram/miraoutputv2t5pos.txt > 1gram/miraresultv2t5pos.txt

perl conlleval.pl -l -d "\t" < 1gram/miraoutputv3t1pos.txt > 1gram/miraresultv3t1pos.txt
perl conlleval.pl -l -d "\t" < 1gram/miraoutputv3t2pos.txt > 1gram/miraresultv3t2pos.txt
perl conlleval.pl -l -d "\t" < 1gram/miraoutputv3t3pos.txt > 1gram/miraresultv3t3pos.txt
perl conlleval.pl -l -d "\t" < 1gram/miraoutputv3t4pos.txt > 1gram/miraresultv3t4pos.txt
perl conlleval.pl -l -d "\t" < 1gram/miraoutputv3t5pos.txt > 1gram/miraresultv3t5pos.txt

:: set of 2-gram ---------------------------------------------------------

:: training 2-gram no pos

crf_learn -a MIRA 2gram/template Tests/v2/Test1/Train.txt 2gram/miramodelv2t1
crf_learn -a MIRA 2gram/template Tests/v2/Test2/Train.txt 2gram/miramodelv2t2
crf_learn -a MIRA 2gram/template Tests/v2/Test3/Train.txt 2gram/miramodelv2t3
crf_learn -a MIRA 2gram/template Tests/v2/Test4/Train.txt 2gram/miramodelv2t4
crf_learn -a MIRA 2gram/template Tests/v2/Test5/Train.txt 2gram/miramodelv2t5

crf_learn -a MIRA 2gram/template Tests/v3/Test1/Train.txt 2gram/miramodelv3t1
crf_learn -a MIRA 2gram/template Tests/v3/Test2/Train.txt 2gram/miramodelv3t2
crf_learn -a MIRA 2gram/template Tests/v3/Test3/Train.txt 2gram/miramodelv3t3
crf_learn -a MIRA 2gram/template Tests/v3/Test4/Train.txt 2gram/miramodelv3t4
crf_learn -a MIRA 2gram/template Tests/v3/Test5/Train.txt 2gram/miramodelv3t5

:: training 2-gram with pos

crf_learn -a MIRA 2gram/postemplate Tests/v2/Test1/Train.txt 2gram/miramodelv2t1pos
crf_learn -a MIRA 2gram/postemplate Tests/v2/Test2/Train.txt 2gram/miramodelv2t2pos
crf_learn -a MIRA 2gram/postemplate Tests/v2/Test3/Train.txt 2gram/miramodelv2t3pos
crf_learn -a MIRA 2gram/postemplate Tests/v2/Test4/Train.txt 2gram/miramodelv2t4pos
crf_learn -a MIRA 2gram/postemplate Tests/v2/Test5/Train.txt 2gram/miramodelv2t5pos

crf_learn -a MIRA 2gram/postemplate Tests/v3/Test1/Train.txt 2gram/miramodelv3t1pos
crf_learn -a MIRA 2gram/postemplate Tests/v3/Test2/Train.txt 2gram/miramodelv3t2pos
crf_learn -a MIRA 2gram/postemplate Tests/v3/Test3/Train.txt 2gram/miramodelv3t3pos
crf_learn -a MIRA 2gram/postemplate Tests/v3/Test4/Train.txt 2gram/miramodelv3t4pos
crf_learn -a MIRA 2gram/postemplate Tests/v3/Test5/Train.txt 2gram/miramodelv3t5pos

:: testing 2-gram

crf_test -m 2gram/miramodelv2t1 Tests/v2/Test1/Test.txt > 2gram/miraoutputv2t1.txt
crf_test -m 2gram/miramodelv2t2 Tests/v2/Test2/Test.txt > 2gram/miraoutputv2t2.txt
crf_test -m 2gram/miramodelv2t3 Tests/v2/Test3/Test.txt > 2gram/miraoutputv2t3.txt
crf_test -m 2gram/miramodelv2t4 Tests/v2/Test4/Test.txt > 2gram/miraoutputv2t4.txt
crf_test -m 2gram/miramodelv2t5 Tests/v2/Test5/Test.txt > 2gram/miraoutputv2t5.txt

crf_test -m 2gram/miramodelv3t1 Tests/v3/Test1/Test.txt > 2gram/miraoutputv3t1.txt
crf_test -m 2gram/miramodelv3t2 Tests/v3/Test2/Test.txt > 2gram/miraoutputv3t2.txt
crf_test -m 2gram/miramodelv3t3 Tests/v3/Test3/Test.txt > 2gram/miraoutputv3t3.txt
crf_test -m 2gram/miramodelv3t4 Tests/v3/Test4/Test.txt > 2gram/miraoutputv3t4.txt
crf_test -m 2gram/miramodelv3t5 Tests/v3/Test5/Test.txt > 2gram/miraoutputv3t5.txt

crf_test -m 2gram/miramodelv2t1pos Tests/v2/Test1/Test.txt > 2gram/miraoutputv2t1pos.txt
crf_test -m 2gram/miramodelv2t2pos Tests/v2/Test2/Test.txt > 2gram/miraoutputv2t2pos.txt
crf_test -m 2gram/miramodelv2t3pos Tests/v2/Test3/Test.txt > 2gram/miraoutputv2t3pos.txt
crf_test -m 2gram/miramodelv2t4pos Tests/v2/Test4/Test.txt > 2gram/miraoutputv2t4pos.txt
crf_test -m 2gram/miramodelv2t5pos Tests/v2/Test5/Test.txt > 2gram/miraoutputv2t5pos.txt

crf_test -m 2gram/miramodelv3t1pos Tests/v3/Test1/Test.txt > 2gram/miraoutputv3t1pos.txt
crf_test -m 2gram/miramodelv3t2pos Tests/v3/Test2/Test.txt > 2gram/miraoutputv3t2pos.txt
crf_test -m 2gram/miramodelv3t3pos Tests/v3/Test3/Test.txt > 2gram/miraoutputv3t3pos.txt
crf_test -m 2gram/miramodelv3t4pos Tests/v3/Test4/Test.txt > 2gram/miraoutputv3t4pos.txt
crf_test -m 2gram/miramodelv3t5pos Tests/v3/Test5/Test.txt > 2gram/miraoutputv3t5pos.txt

:: checking result for 2-gram

perl conlleval.pl -l -d "\t" < 2gram/miraoutputv2t1.txt > 2gram/miraresultv2t1.txt
perl conlleval.pl -l -d "\t" < 2gram/miraoutputv2t2.txt > 2gram/miraresultv2t2.txt
perl conlleval.pl -l -d "\t" < 2gram/miraoutputv2t3.txt > 2gram/miraresultv2t3.txt
perl conlleval.pl -l -d "\t" < 2gram/miraoutputv2t4.txt > 2gram/miraresultv2t4.txt
perl conlleval.pl -l -d "\t" < 2gram/miraoutputv2t5.txt > 2gram/miraresultv2t5.txt

perl conlleval.pl -l -d "\t" < 2gram/miraoutputv3t1.txt > 2gram/miraresultv3t1.txt
perl conlleval.pl -l -d "\t" < 2gram/miraoutputv3t2.txt > 2gram/miraresultv3t2.txt
perl conlleval.pl -l -d "\t" < 2gram/miraoutputv3t3.txt > 2gram/miraresultv3t3.txt
perl conlleval.pl -l -d "\t" < 2gram/miraoutputv3t4.txt > 2gram/miraresultv3t4.txt
perl conlleval.pl -l -d "\t" < 2gram/miraoutputv3t5.txt > 2gram/miraresultv3t5.txt

perl conlleval.pl -l -d "\t" < 2gram/miraoutputv2t1pos.txt > 2gram/miraresultv2t1pos.txt
perl conlleval.pl -l -d "\t" < 2gram/miraoutputv2t2pos.txt > 2gram/miraresultv2t2pos.txt
perl conlleval.pl -l -d "\t" < 2gram/miraoutputv2t3pos.txt > 2gram/miraresultv2t3pos.txt
perl conlleval.pl -l -d "\t" < 2gram/miraoutputv2t4pos.txt > 2gram/miraresultv2t4pos.txt
perl conlleval.pl -l -d "\t" < 2gram/miraoutputv2t5pos.txt > 2gram/miraresultv2t5pos.txt

perl conlleval.pl -l -d "\t" < 2gram/miraoutputv3t1pos.txt > 2gram/miraresultv3t1pos.txt
perl conlleval.pl -l -d "\t" < 2gram/miraoutputv3t2pos.txt > 2gram/miraresultv3t2pos.txt
perl conlleval.pl -l -d "\t" < 2gram/miraoutputv3t3pos.txt > 2gram/miraresultv3t3pos.txt
perl conlleval.pl -l -d "\t" < 2gram/miraoutputv3t4pos.txt > 2gram/miraresultv3t4pos.txt
perl conlleval.pl -l -d "\t" < 2gram/miraoutputv3t5pos.txt > 2gram/miraresultv3t5pos.txt

:: set of 3-gram ---------------------------------------------------------

:: training 3-gram no pos

crf_learn -a MIRA 3gram/template Tests/v2/Test1/Train.txt 3gram/miramodelv2t1
crf_learn -a MIRA 3gram/template Tests/v2/Test2/Train.txt 3gram/miramodelv2t2
crf_learn -a MIRA 3gram/template Tests/v2/Test3/Train.txt 3gram/miramodelv2t3
crf_learn -a MIRA 3gram/template Tests/v2/Test4/Train.txt 3gram/miramodelv2t4
crf_learn -a MIRA 3gram/template Tests/v2/Test5/Train.txt 3gram/miramodelv2t5

crf_learn -a MIRA 3gram/template Tests/v3/Test1/Train.txt 3gram/miramodelv3t1
crf_learn -a MIRA 3gram/template Tests/v3/Test2/Train.txt 3gram/miramodelv3t2
crf_learn -a MIRA 3gram/template Tests/v3/Test3/Train.txt 3gram/miramodelv3t3
crf_learn -a MIRA 3gram/template Tests/v3/Test4/Train.txt 3gram/miramodelv3t4
crf_learn -a MIRA 3gram/template Tests/v3/Test5/Train.txt 3gram/miramodelv3t5

:: training 3-gram with pos

crf_learn -a MIRA 3gram/postemplate Tests/v2/Test1/Train.txt 3gram/miramodelv2t1pos
crf_learn -a MIRA 3gram/postemplate Tests/v2/Test2/Train.txt 3gram/miramodelv2t2pos
crf_learn -a MIRA 3gram/postemplate Tests/v2/Test3/Train.txt 3gram/miramodelv2t3pos
crf_learn -a MIRA 3gram/postemplate Tests/v2/Test4/Train.txt 3gram/miramodelv2t4pos
crf_learn -a MIRA 3gram/postemplate Tests/v2/Test5/Train.txt 3gram/miramodelv2t5pos

crf_learn -a MIRA 3gram/postemplate Tests/v3/Test1/Train.txt 3gram/miramodelv3t1pos
crf_learn -a MIRA 3gram/postemplate Tests/v3/Test2/Train.txt 3gram/miramodelv3t2pos
crf_learn -a MIRA 3gram/postemplate Tests/v3/Test3/Train.txt 3gram/miramodelv3t3pos
crf_learn -a MIRA 3gram/postemplate Tests/v3/Test4/Train.txt 3gram/miramodelv3t4pos
crf_learn -a MIRA 3gram/postemplate Tests/v3/Test5/Train.txt 3gram/miramodelv3t5pos

:: testing 3-gram

crf_test -m 3gram/miramodelv2t1 Tests/v2/Test1/Test.txt > 3gram/miraoutputv2t1.txt
crf_test -m 3gram/miramodelv2t2 Tests/v2/Test2/Test.txt > 3gram/miraoutputv2t2.txt
crf_test -m 3gram/miramodelv2t3 Tests/v2/Test3/Test.txt > 3gram/miraoutputv2t3.txt
crf_test -m 3gram/miramodelv2t4 Tests/v2/Test4/Test.txt > 3gram/miraoutputv2t4.txt
crf_test -m 3gram/miramodelv2t5 Tests/v2/Test5/Test.txt > 3gram/miraoutputv2t5.txt

crf_test -m 3gram/miramodelv3t1 Tests/v3/Test1/Test.txt > 3gram/miraoutputv3t1.txt
crf_test -m 3gram/miramodelv3t2 Tests/v3/Test2/Test.txt > 3gram/miraoutputv3t2.txt
crf_test -m 3gram/miramodelv3t3 Tests/v3/Test3/Test.txt > 3gram/miraoutputv3t3.txt
crf_test -m 3gram/miramodelv3t4 Tests/v3/Test4/Test.txt > 3gram/miraoutputv3t4.txt
crf_test -m 3gram/miramodelv3t5 Tests/v3/Test5/Test.txt > 3gram/miraoutputv3t5.txt

crf_test -m 3gram/miramodelv2t1pos Tests/v2/Test1/Test.txt > 3gram/miraoutputv2t1pos.txt
crf_test -m 3gram/miramodelv2t2pos Tests/v2/Test2/Test.txt > 3gram/miraoutputv2t2pos.txt
crf_test -m 3gram/miramodelv2t3pos Tests/v2/Test3/Test.txt > 3gram/miraoutputv2t3pos.txt
crf_test -m 3gram/miramodelv2t4pos Tests/v2/Test4/Test.txt > 3gram/miraoutputv2t4pos.txt
crf_test -m 3gram/miramodelv2t5pos Tests/v2/Test5/Test.txt > 3gram/miraoutputv2t5pos.txt

crf_test -m 3gram/miramodelv3t1pos Tests/v3/Test1/Test.txt > 3gram/miraoutputv3t1pos.txt
crf_test -m 3gram/miramodelv3t2pos Tests/v3/Test2/Test.txt > 3gram/miraoutputv3t2pos.txt
crf_test -m 3gram/miramodelv3t3pos Tests/v3/Test3/Test.txt > 3gram/miraoutputv3t3pos.txt
crf_test -m 3gram/miramodelv3t4pos Tests/v3/Test4/Test.txt > 3gram/miraoutputv3t4pos.txt
crf_test -m 3gram/miramodelv3t5pos Tests/v3/Test5/Test.txt > 3gram/miraoutputv3t5pos.txt

:: checking result for 3-gram

perl conlleval.pl -l -d "\t" < 3gram/miraoutputv2t1.txt > 3gram/miraresultv2t1.txt
perl conlleval.pl -l -d "\t" < 3gram/miraoutputv2t2.txt > 3gram/miraresultv2t2.txt
perl conlleval.pl -l -d "\t" < 3gram/miraoutputv2t3.txt > 3gram/miraresultv2t3.txt
perl conlleval.pl -l -d "\t" < 3gram/miraoutputv2t4.txt > 3gram/miraresultv2t4.txt
perl conlleval.pl -l -d "\t" < 3gram/miraoutputv2t5.txt > 3gram/miraresultv2t5.txt

perl conlleval.pl -l -d "\t" < 3gram/miraoutputv3t1.txt > 3gram/miraresultv3t1.txt
perl conlleval.pl -l -d "\t" < 3gram/miraoutputv3t2.txt > 3gram/miraresultv3t2.txt
perl conlleval.pl -l -d "\t" < 3gram/miraoutputv3t3.txt > 3gram/miraresultv3t3.txt
perl conlleval.pl -l -d "\t" < 3gram/miraoutputv3t4.txt > 3gram/miraresultv3t4.txt
perl conlleval.pl -l -d "\t" < 3gram/miraoutputv3t5.txt > 3gram/miraresultv3t5.txt

perl conlleval.pl -l -d "\t" < 3gram/miraoutputv2t1pos.txt > 3gram/miraresultv2t1pos.txt
perl conlleval.pl -l -d "\t" < 3gram/miraoutputv2t2pos.txt > 3gram/miraresultv2t2pos.txt
perl conlleval.pl -l -d "\t" < 3gram/miraoutputv2t3pos.txt > 3gram/miraresultv2t3pos.txt
perl conlleval.pl -l -d "\t" < 3gram/miraoutputv2t4pos.txt > 3gram/miraresultv2t4pos.txt
perl conlleval.pl -l -d "\t" < 3gram/miraoutputv2t5pos.txt > 3gram/miraresultv2t5pos.txt

perl conlleval.pl -l -d "\t" < 3gram/miraoutputv3t1pos.txt > 3gram/miraresultv3t1pos.txt
perl conlleval.pl -l -d "\t" < 3gram/miraoutputv3t2pos.txt > 3gram/miraresultv3t2pos.txt
perl conlleval.pl -l -d "\t" < 3gram/miraoutputv3t3pos.txt > 3gram/miraresultv3t3pos.txt
perl conlleval.pl -l -d "\t" < 3gram/miraoutputv3t4pos.txt > 3gram/miraresultv3t4pos.txt
perl conlleval.pl -l -d "\t" < 3gram/miraoutputv3t5pos.txt > 3gram/miraresultv3t5pos.txt


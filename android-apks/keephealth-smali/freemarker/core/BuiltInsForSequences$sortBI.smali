.class Lfreemarker/core/BuiltInsForSequences$sortBI;
.super Lfreemarker/core/BuiltInForSequence;
.source "BuiltInsForSequences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "sortBI"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/BuiltInsForSequences$sortBI$NumericalKVPComparator;,
        Lfreemarker/core/BuiltInsForSequences$sortBI$LexicalKVPComparator;,
        Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;,
        Lfreemarker/core/BuiltInsForSequences$sortBI$DateKVPComparator;,
        Lfreemarker/core/BuiltInsForSequences$sortBI$BooleanKVPComparator;
    }
.end annotation


# static fields
.field static final KEY_TYPE_BOOLEAN:I = 0x4

.field static final KEY_TYPE_DATE:I = 0x3

.field static final KEY_TYPE_NOT_YET_DETECTED:I = 0x0

.field static final KEY_TYPE_NUMBER:I = 0x2

.field static final KEY_TYPE_STRING:I = 0x1


# direct methods
.method constructor <init>()V
    .registers 1

    .line 588
    invoke-direct {p0}, Lfreemarker/core/BuiltInForSequence;-><init>()V

    return-void
.end method

.method static newInconsistentSortKeyTypeException(ILjava/lang/String;Ljava/lang/String;ILfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModelException;
    .registers 22

    move/from16 v0, p0

    if-nez v0, :cond_9

    .line 659
    const-string v1, "value"

    const-string v2, "values"

    goto :goto_d

    .line 662
    :cond_9
    const-string v1, "key value"

    const-string v2, "key values"

    :goto_d
    move-object v11, v1

    move-object v5, v2

    .line 664
    new-instance v1, Lfreemarker/core/_TemplateModelException;

    move/from16 v2, p3

    .line 665
    invoke-static {v0, v2}, Lfreemarker/core/BuiltInsForSequences$sortBI;->startErrorMessage(II)[Ljava/lang/Object;

    move-result-object v3

    new-instance v15, Lfreemarker/core/_DelayedFTLTypeDescription;

    move-object/from16 v0, p4

    invoke-direct {v15, v0}, Lfreemarker/core/_DelayedFTLTypeDescription;-><init>(Lfreemarker/template/TemplateModel;)V

    const-string v16, "."

    const-string v4, "All "

    const-string v6, " in the sequence must be "

    const-string v8, ", because the first "

    const-string v10, " was that. However, the "

    const-string v12, " of the current item isn\'t a "

    const-string v14, " but a "

    move-object/from16 v7, p2

    move-object v9, v11

    move-object/from16 v13, p1

    filled-new-array/range {v3 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v0}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    return-object v1
.end method

.method static sort(Lfreemarker/template/TemplateSequenceModel;[Ljava/lang/String;)Lfreemarker/template/TemplateSequenceModel;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 688
    const-string v2, "The "

    invoke-interface/range {p0 .. p0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v3

    if-nez v3, :cond_d

    return-object v0

    .line 691
    :cond_d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    if-nez v1, :cond_16

    const/4 v6, 0x0

    goto :goto_17

    .line 693
    :cond_16
    array-length v6, v1

    :goto_17
    const/4 v7, 0x0

    move-object v9, v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_1b
    if-ge v8, v3, :cond_176

    .line 699
    invoke-interface {v0, v8}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v11

    move-object v13, v11

    const/4 v12, 0x0

    :goto_23
    if-ge v12, v6, :cond_94

    .line 703
    :try_start_25
    move-object v14, v13

    check-cast v14, Lfreemarker/template/TemplateHashModel;

    aget-object v15, v1, v12

    invoke-interface {v14, v15}, Lfreemarker/template/TemplateHashModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v13
    :try_end_2e
    .catch Ljava/lang/ClassCastException; {:try_start_25 .. :try_end_2e} :catch_56

    if-eqz v13, :cond_33

    add-int/lit8 v12, v12, 0x1

    goto :goto_23

    .line 720
    :cond_33
    new-instance v0, Lfreemarker/core/_TemplateModelException;

    .line 721
    invoke-static {v6, v8}, Lfreemarker/core/BuiltInsForSequences$sortBI;->startErrorMessage(II)[Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v1, v12

    .line 722
    invoke-static {v1}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " subvariable was null or missing."

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    throw v0

    :catch_56
    move-exception v0

    .line 705
    instance-of v3, v13, Lfreemarker/template/TemplateHashModel;

    if-nez v3, :cond_93

    .line 706
    new-instance v0, Lfreemarker/core/_TemplateModelException;

    .line 707
    invoke-static {v6, v8}, Lfreemarker/core/BuiltInsForSequences$sortBI;->startErrorMessage(II)[Ljava/lang/Object;

    move-result-object v13

    if-nez v12, :cond_66

    const-string v2, "Sequence items must be hashes when using ?sort_by. "

    goto :goto_7b

    :cond_66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v12, -0x1

    aget-object v2, v1, v2

    .line 710
    invoke-static {v2}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_7b
    move-object v14, v2

    new-instance v2, Lfreemarker/core/_DelayedJQuote;

    aget-object v1, v1, v12

    invoke-direct {v2, v1}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    const-string v18, " subvariable."

    const-string v15, " subvariable is not a hash, so ?sort_by "

    const-string v16, "can\'t proceed with getting the "

    move-object/from16 v17, v2

    filled-new-array/range {v13 .. v18}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    throw v0

    .line 716
    :cond_93
    throw v0

    :cond_94
    const/4 v12, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v5, 0x1

    if-nez v10, :cond_e6

    .line 727
    instance-of v9, v13, Lfreemarker/template/TemplateScalarModel;

    if-eqz v9, :cond_ad

    .line 729
    new-instance v9, Lfreemarker/core/BuiltInsForSequences$sortBI$LexicalKVPComparator;

    .line 730
    invoke-static {}, Lfreemarker/core/Environment;->getCurrentEnvironment()Lfreemarker/core/Environment;

    move-result-object v10

    invoke-virtual {v10}, Lfreemarker/core/Environment;->getCollator()Ljava/text/Collator;

    move-result-object v10

    invoke-direct {v9, v10}, Lfreemarker/core/BuiltInsForSequences$sortBI$LexicalKVPComparator;-><init>(Ljava/text/Collator;)V

    move v10, v5

    goto :goto_e6

    .line 731
    :cond_ad
    instance-of v9, v13, Lfreemarker/template/TemplateNumberModel;

    if-eqz v9, :cond_c0

    .line 733
    new-instance v9, Lfreemarker/core/BuiltInsForSequences$sortBI$NumericalKVPComparator;

    .line 734
    invoke-static {}, Lfreemarker/core/Environment;->getCurrentEnvironment()Lfreemarker/core/Environment;

    move-result-object v10

    .line 735
    invoke-virtual {v10}, Lfreemarker/core/Environment;->getArithmeticEngine()Lfreemarker/core/ArithmeticEngine;

    move-result-object v10

    invoke-direct {v9, v10, v7}, Lfreemarker/core/BuiltInsForSequences$sortBI$NumericalKVPComparator;-><init>(Lfreemarker/core/ArithmeticEngine;Lfreemarker/core/BuiltInsForSequences$1;)V

    move v10, v15

    goto :goto_e6

    .line 736
    :cond_c0
    instance-of v9, v13, Lfreemarker/template/TemplateDateModel;

    if-eqz v9, :cond_cb

    .line 738
    new-instance v9, Lfreemarker/core/BuiltInsForSequences$sortBI$DateKVPComparator;

    invoke-direct {v9, v7}, Lfreemarker/core/BuiltInsForSequences$sortBI$DateKVPComparator;-><init>(Lfreemarker/core/BuiltInsForSequences$1;)V

    move v10, v14

    goto :goto_e6

    .line 739
    :cond_cb
    instance-of v9, v13, Lfreemarker/template/TemplateBooleanModel;

    if-eqz v9, :cond_d6

    .line 741
    new-instance v9, Lfreemarker/core/BuiltInsForSequences$sortBI$BooleanKVPComparator;

    invoke-direct {v9, v7}, Lfreemarker/core/BuiltInsForSequences$sortBI$BooleanKVPComparator;-><init>(Lfreemarker/core/BuiltInsForSequences$1;)V

    move v10, v12

    goto :goto_e6

    .line 743
    :cond_d6
    new-instance v0, Lfreemarker/core/_TemplateModelException;

    .line 744
    invoke-static {v6, v8}, Lfreemarker/core/BuiltInsForSequences$sortBI;->startErrorMessage(II)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Values used for sorting must be numbers, strings, date/times or booleans."

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    throw v0

    :cond_e6
    :goto_e6
    if-eq v10, v5, :cond_154

    if-eq v10, v15, :cond_136

    if-eq v10, v14, :cond_118

    if-ne v10, v12, :cond_110

    .line 792
    :try_start_ee
    new-instance v5, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;

    move-object v12, v13

    check-cast v12, Lfreemarker/template/TemplateBooleanModel;

    .line 793
    invoke-interface {v12}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v5, v12, v11, v7}, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lfreemarker/core/BuiltInsForSequences$1;)V

    .line 792
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_101
    .catch Ljava/lang/ClassCastException; {:try_start_ee .. :try_end_101} :catch_102

    goto :goto_163

    .line 796
    :catch_102
    instance-of v5, v13, Lfreemarker/template/TemplateBooleanModel;

    if-eqz v5, :cond_107

    goto :goto_163

    .line 797
    :cond_107
    const-string v0, "boolean"

    const-string v1, "booleans"

    invoke-static {v6, v0, v1, v8, v13}, Lfreemarker/core/BuiltInsForSequences$sortBI;->newInconsistentSortKeyTypeException(ILjava/lang/String;Ljava/lang/String;ILfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModelException;

    move-result-object v0

    throw v0

    .line 804
    :cond_110
    new-instance v0, Lfreemarker/core/BugException;

    const-string v1, "Unexpected key type"

    invoke-direct {v0, v1}, Lfreemarker/core/BugException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :cond_118
    :try_start_118
    new-instance v5, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;

    move-object v12, v13

    check-cast v12, Lfreemarker/template/TemplateDateModel;

    .line 780
    invoke-interface {v12}, Lfreemarker/template/TemplateDateModel;->getAsDate()Ljava/util/Date;

    move-result-object v12

    invoke-direct {v5, v12, v11, v7}, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lfreemarker/core/BuiltInsForSequences$1;)V

    .line 779
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_127
    .catch Ljava/lang/ClassCastException; {:try_start_118 .. :try_end_127} :catch_128

    goto :goto_163

    .line 783
    :catch_128
    instance-of v5, v13, Lfreemarker/template/TemplateDateModel;

    if-eqz v5, :cond_12d

    goto :goto_163

    .line 784
    :cond_12d
    const-string v0, "date/time"

    const-string v1, "date/times"

    invoke-static {v6, v0, v1, v8, v13}, Lfreemarker/core/BuiltInsForSequences$sortBI;->newInconsistentSortKeyTypeException(ILjava/lang/String;Ljava/lang/String;ILfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModelException;

    move-result-object v0

    throw v0

    .line 766
    :cond_136
    :try_start_136
    new-instance v5, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;

    move-object v12, v13

    check-cast v12, Lfreemarker/template/TemplateNumberModel;

    .line 767
    invoke-interface {v12}, Lfreemarker/template/TemplateNumberModel;->getAsNumber()Ljava/lang/Number;

    move-result-object v12

    invoke-direct {v5, v12, v11, v7}, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lfreemarker/core/BuiltInsForSequences$1;)V

    .line 766
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_145
    .catch Ljava/lang/ClassCastException; {:try_start_136 .. :try_end_145} :catch_146

    goto :goto_163

    .line 770
    :catch_146
    instance-of v5, v13, Lfreemarker/template/TemplateNumberModel;

    if-eqz v5, :cond_14b

    goto :goto_163

    .line 771
    :cond_14b
    const-string v0, "number"

    const-string v1, "numbers"

    invoke-static {v6, v0, v1, v8, v13}, Lfreemarker/core/BuiltInsForSequences$sortBI;->newInconsistentSortKeyTypeException(ILjava/lang/String;Ljava/lang/String;ILfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModelException;

    move-result-object v0

    throw v0

    .line 751
    :cond_154
    :try_start_154
    new-instance v5, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;

    move-object v12, v13

    check-cast v12, Lfreemarker/template/TemplateScalarModel;

    .line 752
    invoke-interface {v12}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v12, v11, v7}, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lfreemarker/core/BuiltInsForSequences$1;)V

    .line 751
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_163
    .catch Ljava/lang/ClassCastException; {:try_start_154 .. :try_end_163} :catch_167

    :goto_163
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1b

    :catch_167
    move-exception v0

    .line 755
    instance-of v1, v13, Lfreemarker/template/TemplateScalarModel;

    if-nez v1, :cond_175

    .line 756
    const-string v0, "string"

    const-string v1, "strings"

    invoke-static {v6, v0, v1, v8, v13}, Lfreemarker/core/BuiltInsForSequences$sortBI;->newInconsistentSortKeyTypeException(ILjava/lang/String;Ljava/lang/String;ILfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModelException;

    move-result-object v0

    throw v0

    .line 759
    :cond_175
    throw v0

    .line 810
    :cond_176
    :try_start_176
    invoke-static {v4, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_179} :catch_192

    const/4 v5, 0x0

    :goto_17a
    if-ge v5, v3, :cond_18c

    .line 818
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;

    # getter for: Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;->value:Ljava/lang/Object;
    invoke-static {v0}, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;->access$2000(Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_17a

    .line 821
    :cond_18c
    new-instance v0, Lfreemarker/template/TemplateModelListSequence;

    invoke-direct {v0, v4}, Lfreemarker/template/TemplateModelListSequence;-><init>(Ljava/util/List;)V

    return-object v0

    :catch_192
    move-exception v0

    move-object v1, v0

    .line 812
    new-instance v0, Lfreemarker/core/_TemplateModelException;

    .line 813
    invoke-static {v6}, Lfreemarker/core/BuiltInsForSequences$sortBI;->startErrorMessage(I)[Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected error while sorting:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v0
.end method

.method static startErrorMessage(I)[Ljava/lang/Object;
    .registers 2

    if-nez p0, :cond_5

    .line 825
    const-string p0, "?sort"

    goto :goto_7

    :cond_5
    const-string p0, "?sort_by(...)"

    :goto_7
    const-string v0, " failed: "

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static startErrorMessage(II)[Ljava/lang/Object;
    .registers 4

    if-nez p0, :cond_5

    .line 829
    const-string p0, "?sort"

    goto :goto_7

    :cond_5
    const-string p0, "?sort_by(...)"

    .line 831
    :goto_7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p1, :cond_10

    const-string p1, ": "

    goto :goto_12

    :cond_10
    const-string p1, " (0-based): "

    :goto_12
    const-string v1, " failed at sequence index "

    filled-new-array {p0, v1, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method calculateResult(Lfreemarker/template/TemplateSequenceModel;)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 848
    invoke-static {p1, v0}, Lfreemarker/core/BuiltInsForSequences$sortBI;->sort(Lfreemarker/template/TemplateSequenceModel;[Ljava/lang/String;)Lfreemarker/template/TemplateSequenceModel;

    move-result-object p1

    return-object p1
.end method

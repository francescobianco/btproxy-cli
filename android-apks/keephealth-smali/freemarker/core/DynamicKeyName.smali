.class final Lfreemarker/core/DynamicKeyName;
.super Lfreemarker/core/Expression;
.source "DynamicKeyName.java"


# static fields
.field private static NUMERICAL_KEY_LHO_EXPECTED_TYPES:[Ljava/lang/Class; = null

.field private static final UNKNOWN_RESULT_SIZE:I = -0x1


# instance fields
.field private final keyExpression:Lfreemarker/core/Expression;

.field private lazilyGeneratedResultEnabled:Z

.field private final target:Lfreemarker/core/Expression;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 96
    sget-object v0, Lfreemarker/core/NonStringException;->STRING_COERCABLE_TYPES:[Ljava/lang/Class;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lfreemarker/core/DynamicKeyName;->NUMERICAL_KEY_LHO_EXPECTED_TYPES:[Ljava/lang/Class;

    .line 97
    const-class v1, Lfreemarker/template/TemplateSequenceModel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 98
    :goto_e
    sget-object v0, Lfreemarker/core/NonStringException;->STRING_COERCABLE_TYPES:[Ljava/lang/Class;

    array-length v0, v0

    if-ge v2, v0, :cond_1f

    .line 99
    sget-object v0, Lfreemarker/core/DynamicKeyName;->NUMERICAL_KEY_LHO_EXPECTED_TYPES:[Ljava/lang/Class;

    add-int/lit8 v1, v2, 0x1

    sget-object v3, Lfreemarker/core/NonStringException;->STRING_COERCABLE_TYPES:[Ljava/lang/Class;

    aget-object v2, v3, v2

    aput-object v2, v0, v1

    move v2, v1

    goto :goto_e

    :cond_1f
    return-void
.end method

.method constructor <init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Lfreemarker/core/Expression;-><init>()V

    .line 54
    iput-object p1, p0, Lfreemarker/core/DynamicKeyName;->target:Lfreemarker/core/Expression;

    .line 55
    iput-object p2, p0, Lfreemarker/core/DynamicKeyName;->keyExpression:Lfreemarker/core/Expression;

    .line 57
    invoke-virtual {p1}, Lfreemarker/core/Expression;->enableLazilyGeneratedResult()V

    return-void
.end method

.method static synthetic access$000(Lfreemarker/core/DynamicKeyName;II)Lfreemarker/core/_TemplateModelException;
    .registers 3

    .line 45
    invoke-direct {p0, p1, p2}, Lfreemarker/core/DynamicKeyName;->newRangeEndOutOfBoundsException(II)Lfreemarker/core/_TemplateModelException;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lfreemarker/core/DynamicKeyName;Lfreemarker/template/TemplateModelIterator;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Lfreemarker/core/DynamicKeyName;->skipElementsBeforeFirstIndex(Lfreemarker/template/TemplateModelIterator;I)V

    return-void
.end method

.method private dealWithNumericalKey(Lfreemarker/template/TemplateModel;ILfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 107
    instance-of v0, p1, Lfreemarker/template/TemplateSequenceModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 108
    check-cast p1, Lfreemarker/template/TemplateSequenceModel;

    .line 111
    :try_start_7
    invoke-interface {p1}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result p3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_c

    goto :goto_f

    :catch_c
    const p3, 0x7fffffff

    :goto_f
    if-ge p2, p3, :cond_15

    .line 115
    invoke-interface {p1, p2}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v1

    :cond_15
    return-object v1

    .line 117
    :cond_16
    instance-of v0, p1, Lfreemarker/core/LazilyGeneratedCollectionModel;

    if-eqz v0, :cond_3c

    move-object v0, p1

    check-cast v0, Lfreemarker/core/LazilyGeneratedCollectionModel;

    .line 118
    invoke-virtual {v0}, Lfreemarker/core/LazilyGeneratedCollectionModel;->isSequence()Z

    move-result v2

    if-eqz v2, :cond_3c

    if-gez p2, :cond_26

    return-object v1

    .line 122
    :cond_26
    invoke-virtual {v0}, Lfreemarker/core/LazilyGeneratedCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object p1

    const/4 p3, 0x0

    .line 123
    :goto_2b
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 124
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v0

    if-ne p2, p3, :cond_38

    return-object v0

    :cond_38
    add-int/lit8 p3, p3, 0x1

    goto :goto_2b

    :cond_3b
    return-object v1

    .line 134
    :cond_3c
    :try_start_3c
    iget-object v0, p0, Lfreemarker/core/DynamicKeyName;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, p3}, Lfreemarker/core/Expression;->evalAndCoerceToPlainText(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v0
    :try_end_42
    .catch Lfreemarker/core/NonStringException; {:try_start_3c .. :try_end_42} :catch_8b

    .line 136
    :try_start_42
    new-instance v2, Lfreemarker/template/SimpleScalar;

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v0, p2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_42 .. :try_end_4d} :catch_4e
    .catch Lfreemarker/core/NonStringException; {:try_start_42 .. :try_end_4d} :catch_8b

    return-object v2

    :catch_4e
    move-exception v2

    if-ltz p2, :cond_7b

    .line 141
    :try_start_51
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt p2, v3, :cond_73

    .line 142
    new-instance v2, Lfreemarker/core/_MiscTemplateException;

    const-string v3, "String index out of range: The index was "

    .line 143
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v4, " (0-based), but the length of the string is only "

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v5, "."

    filled-new-array {v3, p2, v4, v0, v5}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v2, p2}, Lfreemarker/core/_MiscTemplateException;-><init>([Ljava/lang/Object;)V

    throw v2

    .line 146
    :cond_73
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Can\'t explain exception"

    invoke-direct {p2, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 139
    :cond_7b
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    const-string v2, "Negative index not allowed: "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v0, p2}, Lfreemarker/core/_MiscTemplateException;-><init>([Ljava/lang/Object;)V

    throw v0
    :try_end_8b
    .catch Lfreemarker/core/NonStringException; {:try_start_51 .. :try_end_8b} :catch_8b

    .line 149
    :catch_8b
    new-instance p2, Lfreemarker/core/UnexpectedTypeException;

    iget-object v3, p0, Lfreemarker/core/DynamicKeyName;->target:Lfreemarker/core/Expression;

    sget-object v6, Lfreemarker/core/DynamicKeyName;->NUMERICAL_KEY_LHO_EXPECTED_TYPES:[Ljava/lang/Class;

    instance-of v0, p1, Lfreemarker/template/TemplateHashModel;

    if-eqz v0, :cond_97

    const-string v1, "You had a numberical value inside the []. Currently that\'s only supported for sequences (lists) and strings. To get a Map item with a non-string key, use myMap?api.get(myKey)."

    :cond_97
    move-object v7, v1

    const-string v5, "sequence or string or something automatically convertible to string (number, date or boolean)"

    move-object v2, p2

    move-object v4, p1

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/String;Lfreemarker/core/Environment;)V

    throw p2
.end method

.method private dealWithRangeKey(Lfreemarker/template/TemplateModel;Lfreemarker/core/RangeModel;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    .line 176
    instance-of v3, v1, Lfreemarker/template/TemplateSequenceModel;

    const/4 v4, 0x0

    if-eqz v3, :cond_13

    .line 177
    check-cast v1, Lfreemarker/template/TemplateSequenceModel;

    move-object v3, v1

    move-object v1, v4

    move-object v5, v1

    goto :goto_2b

    .line 180
    :cond_13
    instance-of v3, v1, Lfreemarker/core/LazilyGeneratedCollectionModel;

    if-eqz v3, :cond_23

    check-cast v1, Lfreemarker/core/LazilyGeneratedCollectionModel;

    .line 181
    invoke-virtual {v1}, Lfreemarker/core/LazilyGeneratedCollectionModel;->isSequence()Z

    move-result v3

    if-eqz v3, :cond_23

    move-object v5, v1

    move-object v1, v4

    move-object v3, v1

    goto :goto_2b

    .line 189
    :cond_23
    :try_start_23
    iget-object v1, v0, Lfreemarker/core/DynamicKeyName;->target:Lfreemarker/core/Expression;

    invoke-virtual {v1, v6}, Lfreemarker/core/Expression;->evalAndCoerceToPlainText(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v1
    :try_end_29
    .catch Lfreemarker/core/NonStringException; {:try_start_23 .. :try_end_29} :catch_19c

    move-object v3, v4

    move-object v5, v3

    .line 198
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/RangeModel;->size()I

    move-result v6

    .line 199
    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/RangeModel;->isRightUnbounded()Z

    move-result v7

    .line 200
    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/RangeModel;->isRightAdaptive()Z

    move-result v8

    const/4 v10, 0x1

    if-nez v7, :cond_46

    if-nez v6, :cond_46

    if-eqz v3, :cond_40

    move v9, v10

    goto :goto_41

    :cond_40
    const/4 v9, 0x0

    .line 205
    :goto_41
    invoke-direct {v0, v9}, Lfreemarker/core/DynamicKeyName;->emptyResult(Z)Lfreemarker/template/TemplateModel;

    move-result-object v1

    return-object v1

    .line 208
    :cond_46
    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/RangeModel;->getBegining()I

    move-result v11

    .line 209
    const-string v12, ") isn\'t allowed for a range used for slicing."

    if-ltz v11, :cond_18a

    .line 215
    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/RangeModel;->getStep()I

    move-result v13

    if-eqz v1, :cond_5a

    .line 220
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    :goto_58
    move v15, v10

    goto :goto_71

    :cond_5a
    if-eqz v3, :cond_61

    .line 223
    invoke-interface {v3}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v14

    goto :goto_58

    .line 225
    :cond_61
    instance-of v14, v5, Lfreemarker/template/TemplateCollectionModelEx;

    if-eqz v14, :cond_6d

    .line 227
    move-object v14, v5

    check-cast v14, Lfreemarker/template/TemplateCollectionModelEx;

    invoke-interface {v14}, Lfreemarker/template/TemplateCollectionModelEx;->size()I

    move-result v14

    goto :goto_58

    :cond_6d
    const v14, 0x7fffffff

    const/4 v15, 0x0

    .line 234
    :goto_71
    const-string v16, "character(s)"

    const-string v17, "element(s)"

    const-string v18, "string"

    const-string v19, "sequence"

    if-eqz v15, :cond_b2

    if-eqz v8, :cond_82

    if-ne v13, v10, :cond_82

    if-le v11, v14, :cond_b2

    goto :goto_84

    :cond_82
    if-lt v11, v14, :cond_b2

    .line 241
    :goto_84
    new-instance v2, Lfreemarker/core/_MiscTemplateException;

    iget-object v3, v0, Lfreemarker/core/DynamicKeyName;->keyExpression:Lfreemarker/core/Expression;

    .line 242
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    if-eqz v1, :cond_91

    move-object/from16 v23, v18

    goto :goto_93

    :cond_91
    move-object/from16 v23, v19

    .line 244
    :goto_93
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    if-eqz v1, :cond_9c

    move-object/from16 v27, v16

    goto :goto_9e

    :cond_9c
    move-object/from16 v27, v17

    :goto_9e
    const-string v28, ". "

    const-string v29, "(Note that indices are 0-based)."

    const-string v20, "Range start index "

    const-string v22, " is out of bounds, because the sliced "

    const-string v24, " has only "

    const-string v26, " "

    filled-new-array/range {v20 .. v29}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Expression;[Ljava/lang/Object;)V

    throw v2

    :cond_b2
    const/4 v9, -0x1

    if-nez v7, :cond_10a

    add-int/lit8 v7, v6, -0x1

    mul-int/2addr v7, v13

    add-int/2addr v7, v11

    if-gez v7, :cond_d2

    if-eqz v8, :cond_c0

    add-int/lit8 v6, v11, 0x1

    goto :goto_110

    .line 258
    :cond_c0
    new-instance v1, Lfreemarker/core/_MiscTemplateException;

    iget-object v2, v0, Lfreemarker/core/DynamicKeyName;->keyExpression:Lfreemarker/core/Expression;

    const-string v3, "Negative range end index ("

    .line 259
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4, v12}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Expression;[Ljava/lang/Object;)V

    throw v1

    :cond_d2
    if-eqz v15, :cond_110

    if-lt v7, v14, :cond_110

    if-nez v8, :cond_104

    .line 266
    new-instance v2, Lfreemarker/core/_MiscTemplateException;

    iget-object v3, v0, Lfreemarker/core/DynamicKeyName;->keyExpression:Lfreemarker/core/Expression;

    .line 267
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    if-eqz v1, :cond_e5

    move-object/from16 v23, v18

    goto :goto_e7

    :cond_e5
    move-object/from16 v23, v19

    .line 269
    :goto_e7
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    if-eqz v1, :cond_f0

    move-object/from16 v27, v16

    goto :goto_f2

    :cond_f0
    move-object/from16 v27, v17

    :goto_f2
    const-string v28, ". (Note that indices are 0-based)."

    const-string v20, "Range end index "

    const-string v22, " is out of bounds, because the sliced "

    const-string v24, " has only "

    const-string v26, " "

    filled-new-array/range {v20 .. v28}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Expression;[Ljava/lang/Object;)V

    throw v2

    :cond_104
    sub-int/2addr v14, v11

    .line 272
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v6

    goto :goto_110

    :cond_10a
    if-eqz v15, :cond_10f

    sub-int/2addr v14, v11

    move v6, v14

    goto :goto_110

    :cond_10f
    move v6, v9

    :cond_110
    :goto_110
    if-nez v6, :cond_11c

    if-eqz v3, :cond_116

    move v9, v10

    goto :goto_117

    :cond_116
    const/4 v9, 0x0

    .line 282
    :goto_117
    invoke-direct {v0, v9}, Lfreemarker/core/DynamicKeyName;->emptyResult(Z)Lfreemarker/template/TemplateModel;

    move-result-object v1

    return-object v1

    :cond_11c
    if-eqz v3, :cond_137

    .line 288
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    :goto_124
    if-ge v9, v6, :cond_131

    .line 291
    invoke-interface {v3, v11}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v11, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_124

    .line 295
    :cond_131
    new-instance v2, Lfreemarker/template/SimpleSequence;

    invoke-direct {v2, v1, v4}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;Lfreemarker/template/ObjectWrapper;)V

    return-object v2

    :cond_137
    if-eqz v5, :cond_155

    if-ne v13, v10, :cond_144

    .line 300
    invoke-virtual {v5}, Lfreemarker/core/LazilyGeneratedCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v1

    invoke-direct {v0, v1, v2, v6, v15}, Lfreemarker/core/DynamicKeyName;->getStep1RangeFromIterator(Lfreemarker/template/TemplateModelIterator;Lfreemarker/core/RangeModel;IZ)Lfreemarker/template/TemplateModel;

    move-result-object v1

    return-object v1

    :cond_144
    if-ne v13, v9, :cond_14f

    .line 302
    invoke-virtual {v5}, Lfreemarker/core/LazilyGeneratedCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v1

    invoke-direct {v0, v1, v2, v6}, Lfreemarker/core/DynamicKeyName;->getStepMinus1RangeFromIterator(Lfreemarker/template/TemplateModelIterator;Lfreemarker/core/RangeModel;I)Lfreemarker/template/TemplateModel;

    move-result-object v1

    return-object v1

    .line 304
    :cond_14f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_155
    if-gez v13, :cond_17f

    if-le v6, v10, :cond_17f

    .line 309
    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/RangeModel;->isAffectedByStringSlicingBug()Z

    move-result v2

    if-eqz v2, :cond_164

    const/4 v2, 0x2

    if-ne v6, v2, :cond_164

    move v6, v11

    goto :goto_180

    .line 310
    :cond_164
    new-instance v1, Lfreemarker/core/_MiscTemplateException;

    iget-object v2, v0, Lfreemarker/core/DynamicKeyName;->keyExpression:Lfreemarker/core/Expression;

    .line 312
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sub-int/2addr v6, v10

    mul-int/2addr v6, v13

    add-int/2addr v11, v6

    .line 313
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Decreasing ranges aren\'t allowed for slicing strings (as it would give reversed text). The index range was: first = "

    const-string v6, ", last = "

    filled-new-array {v5, v3, v6, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Expression;[Ljava/lang/Object;)V

    throw v1

    :cond_17f
    add-int/2addr v6, v11

    .line 323
    :goto_180
    new-instance v2, Lfreemarker/template/SimpleScalar;

    invoke-virtual {v1, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 210
    :cond_18a
    new-instance v1, Lfreemarker/core/_MiscTemplateException;

    iget-object v2, v0, Lfreemarker/core/DynamicKeyName;->keyExpression:Lfreemarker/core/Expression;

    const-string v3, "Negative range start index ("

    .line 211
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4, v12}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Expression;[Ljava/lang/Object;)V

    throw v1

    .line 191
    :catch_19c
    new-instance v7, Lfreemarker/core/UnexpectedTypeException;

    iget-object v2, v0, Lfreemarker/core/DynamicKeyName;->target:Lfreemarker/core/Expression;

    .line 192
    invoke-virtual {v2, v6}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    const-string v4, "sequence or string or something automatically convertible to string (number, date or boolean)"

    sget-object v5, Lfreemarker/core/DynamicKeyName;->NUMERICAL_KEY_LHO_EXPECTED_TYPES:[Ljava/lang/Class;

    move-object v1, v7

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/Environment;)V

    throw v7
.end method

.method private dealWithStringKey(Lfreemarker/template/TemplateModel;Ljava/lang/String;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 164
    instance-of v0, p1, Lfreemarker/template/TemplateHashModel;

    if-eqz v0, :cond_b

    .line 165
    check-cast p1, Lfreemarker/template/TemplateHashModel;

    invoke-interface {p1, p2}, Lfreemarker/template/TemplateHashModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 167
    :cond_b
    new-instance p2, Lfreemarker/core/NonHashException;

    iget-object v0, p0, Lfreemarker/core/DynamicKeyName;->target:Lfreemarker/core/Expression;

    invoke-direct {p2, v0, p1, p3}, Lfreemarker/core/NonHashException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    throw p2
.end method

.method private emptyResult(Z)Lfreemarker/template/TemplateModel;
    .registers 4

    if-eqz p1, :cond_16

    .line 440
    invoke-static {p0}, Lfreemarker/template/_TemplateAPI;->getTemplateLanguageVersionAsInt(Lfreemarker/core/TemplateObject;)I

    move-result p1

    sget v0, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_21:I

    if-ge p1, v0, :cond_13

    new-instance p1, Lfreemarker/template/SimpleSequence;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;Lfreemarker/template/ObjectWrapper;)V

    goto :goto_18

    :cond_13
    sget-object p1, Lfreemarker/template/utility/Constants;->EMPTY_SEQUENCE:Lfreemarker/template/TemplateSequenceModel;

    goto :goto_18

    :cond_16
    sget-object p1, Lfreemarker/template/TemplateScalarModel;->EMPTY_STRING:Lfreemarker/template/TemplateModel;

    :goto_18
    return-object p1
.end method

.method private getStep1RangeFromIterator(Lfreemarker/template/TemplateModelIterator;Lfreemarker/core/RangeModel;IZ)Lfreemarker/template/TemplateModel;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 330
    invoke-virtual {p2}, Lfreemarker/core/RangeModel;->getBegining()I

    move-result v6

    .line 331
    invoke-virtual {p2}, Lfreemarker/core/RangeModel;->size()I

    move-result v0

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    add-int v3, v6, v0

    .line 332
    invoke-virtual {p2}, Lfreemarker/core/RangeModel;->isRightAdaptive()Z

    move-result v4

    .line 333
    invoke-virtual {p2}, Lfreemarker/core/RangeModel;->isRightUnbounded()Z

    move-result v2

    .line 334
    iget-boolean p2, p0, Lfreemarker/core/DynamicKeyName;->lazilyGeneratedResultEnabled:Z

    const/4 v8, -0x1

    if-eqz p2, :cond_31

    .line 335
    new-instance p2, Lfreemarker/core/DynamicKeyName$1;

    move-object v0, p2

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/DynamicKeyName$1;-><init>(Lfreemarker/core/DynamicKeyName;ZIZLfreemarker/template/TemplateModelIterator;I)V

    if-eq p3, v8, :cond_2b

    if-eqz p4, :cond_2b

    .line 370
    new-instance p1, Lfreemarker/core/LazilyGeneratedCollectionModelWithAlreadyKnownSize;

    invoke-direct {p1, p2, p3, v7}, Lfreemarker/core/LazilyGeneratedCollectionModelWithAlreadyKnownSize;-><init>(Lfreemarker/template/TemplateModelIterator;IZ)V

    goto :goto_30

    :cond_2b
    new-instance p1, Lfreemarker/core/LazilyGeneratedCollectionModelWithUnknownSize;

    invoke-direct {p1, p2, v7}, Lfreemarker/core/LazilyGeneratedCollectionModelWithUnknownSize;-><init>(Lfreemarker/template/TemplateModelIterator;Z)V

    :goto_30
    return-object p1

    .line 374
    :cond_31
    new-instance p2, Ljava/util/ArrayList;

    if-eq p3, v8, :cond_39

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_3c

    :cond_39
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 377
    :goto_3c
    invoke-direct {p0, p1, v6}, Lfreemarker/core/DynamicKeyName;->skipElementsBeforeFirstIndex(Lfreemarker/template/TemplateModelIterator;I)V

    :goto_3f
    if-nez v2, :cond_43

    if-gt v6, v3, :cond_4b

    .line 379
    :cond_43
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_57

    if-eqz v4, :cond_52

    .line 388
    :cond_4b
    new-instance p1, Lfreemarker/template/SimpleSequence;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;Lfreemarker/template/ObjectWrapper;)V

    return-object p1

    .line 381
    :cond_52
    invoke-direct {p0, v6, v3}, Lfreemarker/core/DynamicKeyName;->newRangeEndOutOfBoundsException(II)Lfreemarker/core/_TemplateModelException;

    move-result-object p1

    throw p1

    .line 385
    :cond_57
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3f
.end method

.method private getStepMinus1RangeFromIterator(Lfreemarker/template/TemplateModelIterator;Lfreemarker/core/RangeModel;I)Lfreemarker/template/TemplateModel;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 415
    invoke-virtual {p2}, Lfreemarker/core/RangeModel;->getBegining()I

    move-result p3

    .line 417
    invoke-virtual {p2}, Lfreemarker/core/RangeModel;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    sub-int p2, p3, p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int v1, p3, p2

    add-int/lit8 v2, v1, 0x1

    .line 419
    new-array v2, v2, [Lfreemarker/template/TemplateModel;

    :goto_17
    if-gt v0, p3, :cond_2d

    .line 423
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 424
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v3

    if-lt v0, p2, :cond_2a

    add-int/lit8 v4, v1, -0x1

    .line 426
    aput-object v3, v2, v1

    move v1, v4

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2d
    const/4 p1, -0x1

    if-ne v1, p1, :cond_3b

    .line 435
    new-instance p1, Lfreemarker/template/SimpleSequence;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;Lfreemarker/template/ObjectWrapper;)V

    return-object p1

    .line 431
    :cond_3b
    new-instance p1, Lfreemarker/core/_MiscTemplateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Range top index "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " (0-based) is outside the sliced sequence of length "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Expression;Ljava/lang/String;)V

    throw p1
.end method

.method private newRangeEndOutOfBoundsException(II)Lfreemarker/core/_TemplateModelException;
    .registers 8

    .line 406
    new-instance v0, Lfreemarker/core/_TemplateModelException;

    iget-object v1, p0, Lfreemarker/core/DynamicKeyName;->keyExpression:Lfreemarker/core/Expression;

    .line 407
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 408
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, " elements."

    const-string v3, "Range end index "

    const-string v4, " is out of bounds, as sliced sequence only has "

    filled-new-array {v3, p2, v4, p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lfreemarker/core/_TemplateModelException;-><init>(Lfreemarker/core/Expression;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private skipElementsBeforeFirstIndex(Lfreemarker/template/TemplateModelIterator;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_29

    .line 395
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 400
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 396
    :cond_f
    new-instance p1, Lfreemarker/core/_TemplateModelException;

    iget-object v1, p0, Lfreemarker/core/DynamicKeyName;->keyExpression:Lfreemarker/core/Expression;

    .line 397
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 398
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, " elements."

    const-string v3, "Range start index "

    const-string v4, " is out of bounds, as the sliced sequence only has "

    filled-new-array {v3, p2, v4, v0, v2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lfreemarker/core/_TemplateModelException;-><init>(Lfreemarker/core/Expression;[Ljava/lang/Object;)V

    throw p1

    :cond_29
    return-void
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lfreemarker/core/DynamicKeyName;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 64
    invoke-virtual {p1}, Lfreemarker/core/Environment;->isClassicCompatible()Z

    move-result v0

    if-eqz v0, :cond_10

    return-object v1

    .line 67
    :cond_10
    iget-object v0, p0, Lfreemarker/core/DynamicKeyName;->target:Lfreemarker/core/Expression;

    invoke-static {v0, p1}, Lfreemarker/core/InvalidReferenceException;->getInstance(Lfreemarker/core/Expression;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object p1

    throw p1

    .line 71
    :cond_17
    iget-object v2, p0, Lfreemarker/core/DynamicKeyName;->keyExpression:Lfreemarker/core/Expression;

    invoke-virtual {v2, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    if-nez v2, :cond_2d

    .line 73
    invoke-virtual {p1}, Lfreemarker/core/Environment;->isClassicCompatible()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 74
    sget-object v2, Lfreemarker/template/TemplateScalarModel;->EMPTY_STRING:Lfreemarker/template/TemplateModel;

    goto :goto_2d

    .line 76
    :cond_28
    iget-object v3, p0, Lfreemarker/core/DynamicKeyName;->keyExpression:Lfreemarker/core/Expression;

    invoke-virtual {v3, v1, p1}, Lfreemarker/core/Expression;->assertNonNull(Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    :cond_2d
    :goto_2d
    move-object v6, v2

    .line 79
    instance-of v1, v6, Lfreemarker/template/TemplateNumberModel;

    if-eqz v1, :cond_41

    .line 80
    iget-object v1, p0, Lfreemarker/core/DynamicKeyName;->keyExpression:Lfreemarker/core/Expression;

    invoke-virtual {v1, v6, p1}, Lfreemarker/core/Expression;->modelToNumber(Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 81
    invoke-direct {p0, v0, v1, p1}, Lfreemarker/core/DynamicKeyName;->dealWithNumericalKey(Lfreemarker/template/TemplateModel;ILfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 83
    :cond_41
    instance-of v1, v6, Lfreemarker/template/TemplateScalarModel;

    if-eqz v1, :cond_52

    .line 84
    check-cast v6, Lfreemarker/template/TemplateScalarModel;

    iget-object v1, p0, Lfreemarker/core/DynamicKeyName;->keyExpression:Lfreemarker/core/Expression;

    invoke-static {v6, v1, p1}, Lfreemarker/core/EvalUtil;->modelToString(Lfreemarker/template/TemplateScalarModel;Lfreemarker/core/Expression;Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-direct {p0, v0, v1, p1}, Lfreemarker/core/DynamicKeyName;->dealWithStringKey(Lfreemarker/template/TemplateModel;Ljava/lang/String;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 87
    :cond_52
    instance-of v1, v6, Lfreemarker/core/RangeModel;

    if-eqz v1, :cond_5d

    .line 88
    check-cast v6, Lfreemarker/core/RangeModel;

    invoke-direct {p0, v0, v6, p1}, Lfreemarker/core/DynamicKeyName;->dealWithRangeKey(Lfreemarker/template/TemplateModel;Lfreemarker/core/RangeModel;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 90
    :cond_5d
    new-instance v0, Lfreemarker/core/UnexpectedTypeException;

    iget-object v5, p0, Lfreemarker/core/DynamicKeyName;->keyExpression:Lfreemarker/core/Expression;

    const/4 v1, 0x3

    new-array v8, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lfreemarker/template/TemplateNumberModel;

    aput-object v2, v8, v1

    const/4 v1, 0x1

    const-class v2, Lfreemarker/template/TemplateScalarModel;

    aput-object v2, v8, v1

    const/4 v1, 0x2

    const-class v2, Lfreemarker/core/Range;

    aput-object v2, v8, v1

    const-string v7, "number, range, or string"

    move-object v4, v0

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/Environment;)V

    throw v0
.end method

.method protected deepCloneWithIdentifierReplaced_inner(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;
    .registers 7

    .line 487
    new-instance v0, Lfreemarker/core/DynamicKeyName;

    iget-object v1, p0, Lfreemarker/core/DynamicKeyName;->target:Lfreemarker/core/Expression;

    .line 488
    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/Expression;->deepCloneWithIdentifierReplaced(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/DynamicKeyName;->keyExpression:Lfreemarker/core/Expression;

    .line 489
    invoke-virtual {v2, p1, p2, p3}, Lfreemarker/core/Expression;->deepCloneWithIdentifierReplaced(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lfreemarker/core/DynamicKeyName;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;)V

    return-object v0
.end method

.method enableLazilyGeneratedResult()V
    .registers 2

    const/4 v0, 0x1

    .line 448
    iput-boolean v0, p0, Lfreemarker/core/DynamicKeyName;->lazilyGeneratedResultEnabled:Z

    return-void
.end method

.method public getCanonicalForm()Ljava/lang/String;
    .registers 3

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfreemarker/core/DynamicKeyName;->target:Lfreemarker/core/Expression;

    invoke-virtual {v1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/DynamicKeyName;->keyExpression:Lfreemarker/core/Expression;

    .line 455
    invoke-virtual {v1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 461
    const-string v0, "...[...]"

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 2

    if-nez p1, :cond_5

    .line 481
    sget-object p1, Lfreemarker/core/ParameterRole;->LEFT_HAND_OPERAND:Lfreemarker/core/ParameterRole;

    goto :goto_7

    :cond_5
    sget-object p1, Lfreemarker/core/ParameterRole;->ENCLOSED_OPERAND:Lfreemarker/core/ParameterRole;

    :goto_7
    return-object p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 2

    if-nez p1, :cond_5

    .line 476
    iget-object p1, p0, Lfreemarker/core/DynamicKeyName;->target:Lfreemarker/core/Expression;

    goto :goto_7

    :cond_5
    iget-object p1, p0, Lfreemarker/core/DynamicKeyName;->keyExpression:Lfreemarker/core/Expression;

    :goto_7
    return-object p1
.end method

.method isLiteral()Z
    .registers 2

    .line 466
    iget-object v0, p0, Lfreemarker/core/DynamicKeyName;->constantValue:Lfreemarker/template/TemplateModel;

    if-nez v0, :cond_17

    iget-object v0, p0, Lfreemarker/core/DynamicKeyName;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0}, Lfreemarker/core/Expression;->isLiteral()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lfreemarker/core/DynamicKeyName;->keyExpression:Lfreemarker/core/Expression;

    invoke-virtual {v0}, Lfreemarker/core/Expression;->isLiteral()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

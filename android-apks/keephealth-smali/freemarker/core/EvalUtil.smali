.class Lfreemarker/core/EvalUtil;
.super Ljava/lang/Object;
.source "EvalUtil.java"


# static fields
.field static final CMP_OP_EQUALS:I = 0x1

.field static final CMP_OP_GREATER_THAN:I = 0x4

.field static final CMP_OP_GREATER_THAN_EQUALS:I = 0x6

.field static final CMP_OP_LESS_THAN:I = 0x3

.field static final CMP_OP_LESS_THAN_EQUALS:I = 0x5

.field static final CMP_OP_NOT_EQUALS:I = 0x2

.field private static final VALUE_OF_THE_COMPARISON_IS_UNKNOWN_DATE_LIKE:Ljava/lang/String; = "value of the comparison is a date-like value where it\'s not known if it\'s a date (no time part), time, or date-time, and thus can\'t be used in a comparison."


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static assertFormatResultNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    if-eqz p0, :cond_3

    return-object p0

    .line 559
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "TemplateValueFormatter result can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static assertFormatResultNotNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_3

    return-object p0

    .line 552
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "TemplateValueFormatter result can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static cmpOpToString(ILjava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    packed-switch p0, :pswitch_data_1c

    .line 341
    const-string p0, "???"

    return-object p0

    .line 340
    :pswitch_9
    const-string p0, "greater-than-equals"

    return-object p0

    .line 339
    :pswitch_c
    const-string p0, "less-than-equals"

    return-object p0

    .line 338
    :pswitch_f
    const-string p0, "greater-than"

    return-object p0

    .line 337
    :pswitch_12
    const-string p0, "less-than"

    return-object p0

    .line 336
    :pswitch_15
    const-string p0, "not-equals"

    return-object p0

    .line 335
    :pswitch_18
    const-string p0, "equals"

    return-object p0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method static coerceModelToPlainText(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;Ljava/lang/String;Lfreemarker/core/Environment;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 449
    instance-of v0, p0, Lfreemarker/template/TemplateNumberModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 450
    check-cast p0, Lfreemarker/template/TemplateNumberModel;

    invoke-virtual {p3, p0, p1, v1}, Lfreemarker/core/Environment;->formatNumberToPlainText(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/Expression;Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/core/EvalUtil;->assertFormatResultNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 451
    :cond_10
    instance-of v0, p0, Lfreemarker/template/TemplateDateModel;

    if-eqz v0, :cond_1f

    .line 452
    check-cast p0, Lfreemarker/template/TemplateDateModel;

    invoke-virtual {p3, p0, p1, v1}, Lfreemarker/core/Environment;->formatDateToPlainText(Lfreemarker/template/TemplateDateModel;Lfreemarker/core/Expression;Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/core/EvalUtil;->assertFormatResultNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 454
    invoke-static/range {v0 .. v5}, Lfreemarker/core/EvalUtil;->coerceModelToTextualCommon(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;Ljava/lang/String;ZZLfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static coerceModelToStringOrMarkup(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;Ljava/lang/String;Lfreemarker/core/Environment;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 370
    invoke-static {p0, p1, v0, p2, p3}, Lfreemarker/core/EvalUtil;->coerceModelToStringOrMarkup(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;ZLjava/lang/String;Lfreemarker/core/Environment;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static coerceModelToStringOrMarkup(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;ZLjava/lang/String;Lfreemarker/core/Environment;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 382
    instance-of v0, p0, Lfreemarker/template/TemplateNumberModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 383
    check-cast p0, Lfreemarker/template/TemplateNumberModel;

    .line 384
    invoke-virtual {p4, p1, v1}, Lfreemarker/core/Environment;->getTemplateNumberFormat(Lfreemarker/core/Expression;Z)Lfreemarker/core/TemplateNumberFormat;

    move-result-object p2

    .line 386
    :try_start_b
    invoke-virtual {p2, p0}, Lfreemarker/core/TemplateNumberFormat;->format(Lfreemarker/template/TemplateNumberModel;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/core/EvalUtil;->assertFormatResultNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_13
    .catch Lfreemarker/core/TemplateValueFormatException; {:try_start_b .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    .line 388
    invoke-static {p2, p1, p0, v1}, Lfreemarker/core/_MessageUtil;->newCantFormatNumberException(Lfreemarker/core/TemplateNumberFormat;Lfreemarker/core/Expression;Lfreemarker/core/TemplateValueFormatException;Z)Lfreemarker/template/TemplateException;

    move-result-object p0

    throw p0

    .line 390
    :cond_1a
    instance-of v0, p0, Lfreemarker/template/TemplateDateModel;

    if-eqz v0, :cond_33

    .line 391
    check-cast p0, Lfreemarker/template/TemplateDateModel;

    .line 392
    invoke-virtual {p4, p0, p1, v1}, Lfreemarker/core/Environment;->getTemplateDateFormat(Lfreemarker/template/TemplateDateModel;Lfreemarker/core/Expression;Z)Lfreemarker/core/TemplateDateFormat;

    move-result-object p2

    .line 394
    :try_start_24
    invoke-virtual {p2, p0}, Lfreemarker/core/TemplateDateFormat;->format(Lfreemarker/template/TemplateDateModel;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/core/EvalUtil;->assertFormatResultNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2c
    .catch Lfreemarker/core/TemplateValueFormatException; {:try_start_24 .. :try_end_2c} :catch_2d

    return-object p0

    :catch_2d
    move-exception p0

    .line 396
    invoke-static {p2, p1, p0, v1}, Lfreemarker/core/_MessageUtil;->newCantFormatDateException(Lfreemarker/core/TemplateDateFormat;Lfreemarker/core/Expression;Lfreemarker/core/TemplateValueFormatException;Z)Lfreemarker/template/TemplateException;

    move-result-object p0

    throw p0

    .line 398
    :cond_33
    instance-of v0, p0, Lfreemarker/core/TemplateMarkupOutputModel;

    if-eqz v0, :cond_38

    return-object p0

    :cond_38
    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v5, p2

    move-object v6, p4

    .line 401
    invoke-static/range {v1 .. v6}, Lfreemarker/core/EvalUtil;->coerceModelToTextualCommon(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;Ljava/lang/String;ZZLfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static coerceModelToStringOrUnsupportedMarkup(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;Ljava/lang/String;Lfreemarker/core/Environment;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 417
    instance-of v0, p0, Lfreemarker/template/TemplateNumberModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 418
    check-cast p0, Lfreemarker/template/TemplateNumberModel;

    .line 419
    invoke-virtual {p3, p1, v1}, Lfreemarker/core/Environment;->getTemplateNumberFormat(Lfreemarker/core/Expression;Z)Lfreemarker/core/TemplateNumberFormat;

    move-result-object p2

    .line 421
    :try_start_b
    invoke-virtual {p2, p0}, Lfreemarker/core/TemplateNumberFormat;->format(Lfreemarker/template/TemplateNumberModel;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1, p3}, Lfreemarker/core/EvalUtil;->ensureFormatResultString(Ljava/lang/Object;Lfreemarker/core/Expression;Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object p0
    :try_end_13
    .catch Lfreemarker/core/TemplateValueFormatException; {:try_start_b .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    .line 423
    invoke-static {p2, p1, p0, v1}, Lfreemarker/core/_MessageUtil;->newCantFormatNumberException(Lfreemarker/core/TemplateNumberFormat;Lfreemarker/core/Expression;Lfreemarker/core/TemplateValueFormatException;Z)Lfreemarker/template/TemplateException;

    move-result-object p0

    throw p0

    .line 425
    :cond_1a
    instance-of v0, p0, Lfreemarker/template/TemplateDateModel;

    if-eqz v0, :cond_33

    .line 426
    check-cast p0, Lfreemarker/template/TemplateDateModel;

    .line 427
    invoke-virtual {p3, p0, p1, v1}, Lfreemarker/core/Environment;->getTemplateDateFormat(Lfreemarker/template/TemplateDateModel;Lfreemarker/core/Expression;Z)Lfreemarker/core/TemplateDateFormat;

    move-result-object p2

    .line 429
    :try_start_24
    invoke-virtual {p2, p0}, Lfreemarker/core/TemplateDateFormat;->format(Lfreemarker/template/TemplateDateModel;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1, p3}, Lfreemarker/core/EvalUtil;->ensureFormatResultString(Ljava/lang/Object;Lfreemarker/core/Expression;Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object p0
    :try_end_2c
    .catch Lfreemarker/core/TemplateValueFormatException; {:try_start_24 .. :try_end_2c} :catch_2d

    return-object p0

    :catch_2d
    move-exception p0

    .line 431
    invoke-static {p2, p1, p0, v1}, Lfreemarker/core/_MessageUtil;->newCantFormatDateException(Lfreemarker/core/TemplateDateFormat;Lfreemarker/core/Expression;Lfreemarker/core/TemplateValueFormatException;Z)Lfreemarker/template/TemplateException;

    move-result-object p0

    throw p0

    :cond_33
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 434
    invoke-static/range {v0 .. v5}, Lfreemarker/core/EvalUtil;->coerceModelToTextualCommon(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;Ljava/lang/String;ZZLfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static coerceModelToTextualCommon(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;Ljava/lang/String;ZZLfreemarker/core/Environment;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;,
            Lfreemarker/core/InvalidReferenceException;,
            Lfreemarker/template/TemplateException;,
            Lfreemarker/core/NonStringOrTemplateOutputException;,
            Lfreemarker/core/NonStringException;
        }
    .end annotation

    .line 472
    instance-of v0, p0, Lfreemarker/template/TemplateScalarModel;

    if-eqz v0, :cond_b

    .line 473
    check-cast p0, Lfreemarker/template/TemplateScalarModel;

    invoke-static {p0, p1, p5}, Lfreemarker/core/EvalUtil;->modelToString(Lfreemarker/template/TemplateScalarModel;Lfreemarker/core/Expression;Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 474
    :cond_b
    const-string v0, ""

    if-nez p0, :cond_25

    .line 475
    invoke-virtual {p5}, Lfreemarker/core/Environment;->isClassicCompatible()Z

    move-result p0

    if-eqz p0, :cond_16

    return-object v0

    :cond_16
    if-eqz p1, :cond_1d

    .line 479
    invoke-static {p1, p5}, Lfreemarker/core/InvalidReferenceException;->getInstance(Lfreemarker/core/Expression;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object p0

    throw p0

    .line 481
    :cond_1d
    new-instance p0, Lfreemarker/core/InvalidReferenceException;

    const-string p1, "Null/missing value (no more informatoin avilable)"

    invoke-direct {p0, p1, p5}, Lfreemarker/core/InvalidReferenceException;-><init>(Ljava/lang/String;Lfreemarker/core/Environment;)V

    throw p0

    .line 486
    :cond_25
    instance-of v1, p0, Lfreemarker/template/TemplateBooleanModel;

    if-eqz v1, :cond_6c

    .line 490
    move-object p1, p0

    check-cast p1, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result p1

    .line 491
    invoke-virtual {p5}, Lfreemarker/core/Environment;->getClassicCompatibleAsInt()I

    move-result p2

    if-nez p2, :cond_3c

    const/4 p0, 0x0

    .line 493
    invoke-virtual {p5, p1, p0}, Lfreemarker/core/Environment;->formatBoolean(ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3c
    const/4 p3, 0x1

    .line 495
    const-string p4, "true"

    if-ne p2, p3, :cond_45

    if-eqz p1, :cond_44

    move-object v0, p4

    :cond_44
    return-object v0

    :cond_45
    const/4 p3, 0x2

    if-ne p2, p3, :cond_57

    .line 498
    instance-of p2, p0, Lfreemarker/ext/beans/BeanModel;

    if-eqz p2, :cond_53

    .line 500
    check-cast p0, Lfreemarker/ext/beans/BeanModel;

    invoke-static {p0}, Lfreemarker/ext/beans/_BeansAPI;->getAsClassicCompatibleString(Lfreemarker/ext/beans/BeanModel;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_53
    if-eqz p1, :cond_56

    move-object v0, p4

    :cond_56
    return-object v0

    .line 505
    :cond_57
    new-instance p0, Lfreemarker/core/BugException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported classic_compatible variation: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/core/BugException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 509
    :cond_6c
    invoke-virtual {p5}, Lfreemarker/core/Environment;->isClassicCompatible()Z

    move-result v0

    if-eqz v0, :cond_7d

    instance-of v0, p0, Lfreemarker/ext/beans/BeanModel;

    if-eqz v0, :cond_7d

    .line 510
    check-cast p0, Lfreemarker/ext/beans/BeanModel;

    invoke-static {p0}, Lfreemarker/ext/beans/_BeansAPI;->getAsClassicCompatibleString(Lfreemarker/ext/beans/BeanModel;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7d
    if-eqz p4, :cond_81

    const/4 p0, 0x0

    return-object p0

    :cond_81
    if-eqz p2, :cond_99

    .line 515
    instance-of p4, p0, Lfreemarker/template/TemplateSequenceModel;

    if-nez p4, :cond_8b

    instance-of p4, p0, Lfreemarker/template/TemplateCollectionModel;

    if-eqz p4, :cond_99

    :cond_8b
    if-eqz p3, :cond_93

    .line 517
    new-instance p3, Lfreemarker/core/NonStringOrTemplateOutputException;

    invoke-direct {p3, p1, p0, p2, p5}, Lfreemarker/core/NonStringOrTemplateOutputException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Ljava/lang/String;Lfreemarker/core/Environment;)V

    throw p3

    .line 519
    :cond_93
    new-instance p3, Lfreemarker/core/NonStringException;

    invoke-direct {p3, p1, p0, p2, p5}, Lfreemarker/core/NonStringException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Ljava/lang/String;Lfreemarker/core/Environment;)V

    throw p3

    :cond_99
    if-eqz p3, :cond_a1

    .line 523
    new-instance p2, Lfreemarker/core/NonStringOrTemplateOutputException;

    invoke-direct {p2, p1, p0, p5}, Lfreemarker/core/NonStringOrTemplateOutputException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    throw p2

    .line 525
    :cond_a1
    new-instance p2, Lfreemarker/core/NonStringException;

    invoke-direct {p2, p1, p0, p5}, Lfreemarker/core/NonStringException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    throw p2
.end method

.method static compare(Lfreemarker/core/Expression;ILjava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression;Lfreemarker/core/Environment;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v11, p5

    .line 113
    invoke-virtual {p0, v11}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    move-object v5, p3

    .line 114
    invoke-virtual {p3, v11}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v2, p1

    move-object v3, p2

    move-object/from16 v6, p4

    .line 115
    invoke-static/range {v0 .. v11}, Lfreemarker/core/EvalUtil;->compare(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;ILjava/lang/String;Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;Lfreemarker/core/Expression;ZZZZLfreemarker/core/Environment;)Z

    move-result v0

    return v0
.end method

.method static compare(Lfreemarker/template/TemplateModel;ILfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v2, p1

    move-object v4, p2

    move-object v11, p3

    .line 137
    invoke-static/range {v0 .. v11}, Lfreemarker/core/EvalUtil;->compare(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;ILjava/lang/String;Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;Lfreemarker/core/Expression;ZZZZLfreemarker/core/Environment;)Z

    move-result p0

    return p0
.end method

.method static compare(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;ILjava/lang/String;Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;Lfreemarker/core/Expression;ZZZZLfreemarker/core/Environment;)Z
    .registers 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p11

    const/4 v5, 0x0

    if-nez p0, :cond_2a

    if-eqz v4, :cond_18

    .line 191
    invoke-virtual/range {p11 .. p11}, Lfreemarker/core/Environment;->isClassicCompatible()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 192
    sget-object v6, Lfreemarker/template/TemplateScalarModel;->EMPTY_STRING:Lfreemarker/template/TemplateModel;

    goto :goto_2c

    :cond_18
    if-eqz p9, :cond_1b

    return v5

    :cond_1b
    if-eqz v0, :cond_22

    .line 198
    invoke-static {v0, v4}, Lfreemarker/core/InvalidReferenceException;->getInstance(Lfreemarker/core/Expression;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object v0

    throw v0

    .line 200
    :cond_22
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    const-string v1, "The left operand of the comparison was undefined or null."

    invoke-direct {v0, v3, v4, v1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Environment;Ljava/lang/String;)V

    throw v0

    :cond_2a
    move-object/from16 v6, p0

    :goto_2c
    if-nez p4, :cond_4b

    if-eqz v4, :cond_39

    .line 208
    invoke-virtual/range {p11 .. p11}, Lfreemarker/core/Environment;->isClassicCompatible()Z

    move-result v7

    if-eqz v7, :cond_39

    .line 209
    sget-object v7, Lfreemarker/template/TemplateScalarModel;->EMPTY_STRING:Lfreemarker/template/TemplateModel;

    goto :goto_4d

    :cond_39
    if-eqz p10, :cond_3c

    return v5

    :cond_3c
    if-eqz v2, :cond_43

    .line 215
    invoke-static {v2, v4}, Lfreemarker/core/InvalidReferenceException;->getInstance(Lfreemarker/core/Expression;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object v0

    throw v0

    .line 217
    :cond_43
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    const-string v1, "The right operand of the comparison was undefined or null."

    invoke-direct {v0, v3, v4, v1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Environment;Ljava/lang/String;)V

    throw v0

    :cond_4b
    move-object/from16 v7, p4

    .line 225
    :goto_4d
    instance-of v8, v6, Lfreemarker/template/TemplateNumberModel;

    const/4 v9, 0x1

    if-eqz v8, :cond_8a

    instance-of v8, v7, Lfreemarker/template/TemplateNumberModel;

    if-eqz v8, :cond_8a

    .line 226
    check-cast v6, Lfreemarker/template/TemplateNumberModel;

    invoke-static {v6, v0}, Lfreemarker/core/EvalUtil;->modelToNumber(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/Expression;)Ljava/lang/Number;

    move-result-object v6

    .line 227
    check-cast v7, Lfreemarker/template/TemplateNumberModel;

    invoke-static {v7, v2}, Lfreemarker/core/EvalUtil;->modelToNumber(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/Expression;)Ljava/lang/Number;

    move-result-object v2

    if-eqz v4, :cond_69

    .line 230
    invoke-virtual/range {p11 .. p11}, Lfreemarker/core/Environment;->getArithmeticEngine()Lfreemarker/core/ArithmeticEngine;

    move-result-object v0

    goto :goto_76

    :cond_69
    if-eqz v0, :cond_74

    .line 232
    invoke-virtual/range {p1 .. p1}, Lfreemarker/core/Expression;->getTemplate()Lfreemarker/template/Template;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/Template;->getArithmeticEngine()Lfreemarker/core/ArithmeticEngine;

    move-result-object v0

    goto :goto_76

    :cond_74
    sget-object v0, Lfreemarker/core/ArithmeticEngine;->BIGDECIMAL_ENGINE:Lfreemarker/core/ArithmeticEngine$BigDecimalEngine;

    .line 235
    :goto_76
    :try_start_76
    invoke-virtual {v0, v6, v2}, Lfreemarker/core/ArithmeticEngine;->compareNumbers(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0
    :try_end_7a
    .catch Ljava/lang/RuntimeException; {:try_start_76 .. :try_end_7a} :catch_7c

    goto/16 :goto_161

    :catch_7c
    move-exception v0

    move-object v1, v0

    .line 237
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    const-string v2, "Unexpected error while comparing two numbers: "

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v3, v1, v4, v2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Expression;Ljava/lang/Throwable;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v0

    .line 240
    :cond_8a
    instance-of v8, v6, Lfreemarker/template/TemplateDateModel;

    if-eqz v8, :cond_eb

    instance-of v8, v7, Lfreemarker/template/TemplateDateModel;

    if-eqz v8, :cond_eb

    .line 241
    check-cast v6, Lfreemarker/template/TemplateDateModel;

    .line 242
    check-cast v7, Lfreemarker/template/TemplateDateModel;

    .line 244
    invoke-interface {v6}, Lfreemarker/template/TemplateDateModel;->getDateType()I

    move-result v8

    .line 245
    invoke-interface {v7}, Lfreemarker/template/TemplateDateModel;->getDateType()I

    move-result v10

    if-eqz v8, :cond_cf

    if-nez v10, :cond_a3

    goto :goto_cf

    :cond_a3
    if-ne v8, v10, :cond_b3

    .line 270
    invoke-static {v6, v0}, Lfreemarker/core/EvalUtil;->modelToDate(Lfreemarker/template/TemplateDateModel;Lfreemarker/core/Expression;)Ljava/util/Date;

    move-result-object v0

    .line 271
    invoke-static {v7, v2}, Lfreemarker/core/EvalUtil;->modelToDate(Lfreemarker/template/TemplateDateModel;Lfreemarker/core/Expression;)Ljava/util/Date;

    move-result-object v2

    .line 272
    invoke-virtual {v0, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    goto/16 :goto_161

    .line 264
    :cond_b3
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    sget-object v1, Lfreemarker/template/TemplateDateModel;->TYPE_NAMES:Ljava/util/List;

    .line 266
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lfreemarker/template/TemplateDateModel;->TYPE_NAMES:Ljava/util/List;

    .line 267
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "."

    const-string v6, "Can\'t compare dates of different types. Left date type is "

    const-string v7, ", right date type is "

    filled-new-array {v6, v1, v7, v2, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v3, v4, v1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v0

    :cond_cf
    :goto_cf
    if-nez v8, :cond_d4

    .line 252
    const-string v1, "left"

    goto :goto_d7

    .line 255
    :cond_d4
    const-string v1, "right"

    move-object v0, v2

    .line 258
    :goto_d7
    new-instance v2, Lfreemarker/core/_MiscTemplateException;

    if-eqz v0, :cond_dc

    goto :goto_dd

    :cond_dc
    move-object v0, v3

    :goto_dd
    const-string v3, " "

    const-string v5, "value of the comparison is a date-like value where it\'s not known if it\'s a date (no time part), time, or date-time, and thus can\'t be used in a comparison."

    const-string v6, "The "

    filled-new-array {v6, v1, v3, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, v0, v4, v1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v2

    .line 273
    :cond_eb
    instance-of v8, v6, Lfreemarker/template/TemplateScalarModel;

    const-string v10, "Can\'t use operator \""

    const/4 v11, 0x2

    if-eqz v8, :cond_120

    instance-of v8, v7, Lfreemarker/template/TemplateScalarModel;

    if-eqz v8, :cond_120

    if-eq v1, v9, :cond_10b

    if-ne v1, v11, :cond_fb

    goto :goto_10b

    .line 275
    :cond_fb
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    .line 276
    invoke-static/range {p2 .. p3}, Lfreemarker/core/EvalUtil;->cmpOpToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\" on string values."

    filled-new-array {v10, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v3, v4, v1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v0

    .line 278
    :cond_10b
    :goto_10b
    check-cast v6, Lfreemarker/template/TemplateScalarModel;

    invoke-static {v6, v0, v4}, Lfreemarker/core/EvalUtil;->modelToString(Lfreemarker/template/TemplateScalarModel;Lfreemarker/core/Expression;Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v0

    .line 279
    check-cast v7, Lfreemarker/template/TemplateScalarModel;

    invoke-static {v7, v2, v4}, Lfreemarker/core/EvalUtil;->modelToString(Lfreemarker/template/TemplateScalarModel;Lfreemarker/core/Expression;Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-virtual/range {p11 .. p11}, Lfreemarker/core/Environment;->getCollator()Ljava/text/Collator;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_161

    .line 282
    :cond_120
    instance-of v8, v6, Lfreemarker/template/TemplateBooleanModel;

    if-eqz v8, :cond_14b

    instance-of v8, v7, Lfreemarker/template/TemplateBooleanModel;

    if-eqz v8, :cond_14b

    if-eq v1, v9, :cond_13d

    if-ne v1, v11, :cond_12d

    goto :goto_13d

    .line 284
    :cond_12d
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    .line 285
    invoke-static/range {p2 .. p3}, Lfreemarker/core/EvalUtil;->cmpOpToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\" on boolean values."

    filled-new-array {v10, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v3, v4, v1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v0

    .line 287
    :cond_13d
    :goto_13d
    check-cast v6, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {v6}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result v0

    .line 288
    check-cast v7, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {v7}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_161

    .line 290
    :cond_14b
    invoke-virtual/range {p11 .. p11}, Lfreemarker/core/Environment;->isClassicCompatible()Z

    move-result v8

    if-eqz v8, :cond_191

    .line 291
    invoke-virtual {v0, v4}, Lfreemarker/core/Expression;->evalAndCoerceToPlainText(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-virtual {v2, v4}, Lfreemarker/core/Expression;->evalAndCoerceToPlainText(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v2

    .line 293
    invoke-virtual/range {p11 .. p11}, Lfreemarker/core/Environment;->getCollator()Ljava/text/Collator;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_161
    packed-switch v1, :pswitch_data_1fc

    .line 326
    new-instance v0, Lfreemarker/core/BugException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported comparator operator code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/core/BugException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_179
    if-ltz v0, :cond_17c

    move v5, v9

    :cond_17c
    return v5

    :pswitch_17d
    if-gtz v0, :cond_180

    move v5, v9

    :cond_180
    return v5

    :pswitch_181
    if-lez v0, :cond_184

    move v5, v9

    :cond_184
    return v5

    :pswitch_185
    if-gez v0, :cond_188

    move v5, v9

    :cond_188
    return v5

    :pswitch_189
    if-eqz v0, :cond_18c

    move v5, v9

    :cond_18c
    return v5

    :pswitch_18d
    if-nez v0, :cond_190

    move v5, v9

    :cond_190
    return v5

    :cond_191
    if-eqz p8, :cond_199

    if-ne v1, v9, :cond_196

    return v5

    :cond_196
    if-ne v1, v11, :cond_199

    return v9

    .line 303
    :cond_199
    new-instance v1, Lfreemarker/core/_MiscTemplateException;

    const-string v8, ") value "

    const-string v10, "("

    const/4 v12, 0x3

    const-string v13, ""

    if-eqz p7, :cond_1b6

    if-eqz v0, :cond_1b6

    new-array v14, v12, [Ljava/lang/Object;

    aput-object v10, v14, v5

    new-instance v15, Lfreemarker/core/_DelayedGetCanonicalForm;

    invoke-direct {v15, v0}, Lfreemarker/core/_DelayedGetCanonicalForm;-><init>(Lfreemarker/core/TemplateObject;)V

    aput-object v15, v14, v9

    aput-object v8, v14, v11

    move-object/from16 v19, v14

    goto :goto_1b8

    :cond_1b6
    move-object/from16 v19, v13

    :goto_1b8
    new-instance v0, Lfreemarker/core/_DelayedAOrAn;

    new-instance v14, Lfreemarker/core/_DelayedFTLTypeDescription;

    invoke-direct {v14, v6}, Lfreemarker/core/_DelayedFTLTypeDescription;-><init>(Lfreemarker/template/TemplateModel;)V

    invoke-direct {v0, v14}, Lfreemarker/core/_DelayedAOrAn;-><init>(Ljava/lang/Object;)V

    if-eqz p7, :cond_1d3

    if-eqz v2, :cond_1d3

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v10, v13, v5

    new-instance v5, Lfreemarker/core/_DelayedGetCanonicalForm;

    invoke-direct {v5, v2}, Lfreemarker/core/_DelayedGetCanonicalForm;-><init>(Lfreemarker/core/TemplateObject;)V

    aput-object v5, v13, v9

    aput-object v8, v13, v11

    :cond_1d3
    move-object/from16 v24, v13

    new-instance v2, Lfreemarker/core/_DelayedAOrAn;

    new-instance v5, Lfreemarker/core/_DelayedFTLTypeDescription;

    invoke-direct {v5, v7}, Lfreemarker/core/_DelayedFTLTypeDescription;-><init>(Lfreemarker/template/TemplateModel;)V

    invoke-direct {v2, v5}, Lfreemarker/core/_DelayedAOrAn;-><init>(Ljava/lang/Object;)V

    const-string v27, "."

    const-string v16, "Can\'t compare values of these types. "

    const-string v17, "Allowed comparisons are between two numbers, two strings, two dates, or two booleans.\n"

    const-string v18, "Left hand operand "

    const-string v20, "is "

    const-string v22, ".\n"

    const-string v23, "Right hand operand "

    const-string v25, "is "

    move-object/from16 v21, v0

    move-object/from16 v26, v2

    filled-new-array/range {v16 .. v27}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v3, v4, v0}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v1

    nop

    :pswitch_data_1fc
    .packed-switch 0x1
        :pswitch_18d
        :pswitch_189
        :pswitch_185
        :pswitch_181
        :pswitch_17d
        :pswitch_179
    .end packed-switch
.end method

.method static compareLenient(Lfreemarker/template/TemplateModel;ILfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move v2, p1

    move-object v4, p2

    move-object v11, p3

    .line 154
    invoke-static/range {v0 .. v11}, Lfreemarker/core/EvalUtil;->compare(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;ILjava/lang/String;Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;Lfreemarker/core/Expression;ZZZZLfreemarker/core/Environment;)Z

    move-result p0

    return p0
.end method

.method static concatMarkupOutputs(Lfreemarker/core/TemplateObject;Lfreemarker/core/TemplateMarkupOutputModel;Lfreemarker/core/TemplateMarkupOutputModel;)Lfreemarker/core/TemplateMarkupOutputModel;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 564
    invoke-interface {p1}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/MarkupOutputFormat;

    move-result-object v0

    .line 565
    invoke-interface {p2}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/MarkupOutputFormat;

    move-result-object v1

    if-eq v1, v0, :cond_4e

    .line 569
    invoke-virtual {v1, p2}, Lfreemarker/core/MarkupOutputFormat;->getSourcePlainText(Lfreemarker/core/TemplateMarkupOutputModel;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 570
    invoke-virtual {v0, v2}, Lfreemarker/core/MarkupOutputFormat;->fromPlainTextByEscaping(Ljava/lang/String;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lfreemarker/core/MarkupOutputFormat;->concat(Lfreemarker/core/TemplateMarkupOutputModel;Lfreemarker/core/TemplateMarkupOutputModel;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object p0

    return-object p0

    .line 571
    :cond_19
    invoke-virtual {v0, p1}, Lfreemarker/core/MarkupOutputFormat;->getSourcePlainText(Lfreemarker/core/TemplateMarkupOutputModel;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 572
    invoke-virtual {v1, p1}, Lfreemarker/core/MarkupOutputFormat;->fromPlainTextByEscaping(Ljava/lang/String;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object p0

    invoke-virtual {v1, p0, p2}, Lfreemarker/core/MarkupOutputFormat;->concat(Lfreemarker/core/TemplateMarkupOutputModel;Lfreemarker/core/TemplateMarkupOutputModel;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object p0

    return-object p0

    .line 574
    :cond_28
    new-instance p1, Lfreemarker/core/_DelayedToString;

    invoke-direct {p1, v0}, Lfreemarker/core/_DelayedToString;-><init>(Ljava/lang/Object;)V

    new-instance p2, Lfreemarker/core/_DelayedToString;

    invoke-direct {p2, v1}, Lfreemarker/core/_DelayedToString;-><init>(Ljava/lang/Object;)V

    const-string v0, ". Conversion to common format wasn\'t possible."

    const-string v1, "Concatenation left hand operand is in "

    const-string v2, " format, while the right hand operand is in "

    filled-new-array {v1, p1, v2, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 577
    instance-of p2, p0, Lfreemarker/core/Expression;

    if-eqz p2, :cond_48

    .line 578
    new-instance p2, Lfreemarker/core/_MiscTemplateException;

    check-cast p0, Lfreemarker/core/Expression;

    invoke-direct {p2, p0, p1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Expression;[Ljava/lang/Object;)V

    throw p2

    .line 580
    :cond_48
    new-instance p0, Lfreemarker/core/_MiscTemplateException;

    invoke-direct {p0, p1}, Lfreemarker/core/_MiscTemplateException;-><init>([Ljava/lang/Object;)V

    throw p0

    .line 584
    :cond_4e
    invoke-virtual {v0, p1, p2}, Lfreemarker/core/MarkupOutputFormat;->concat(Lfreemarker/core/TemplateMarkupOutputModel;Lfreemarker/core/TemplateMarkupOutputModel;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object p0

    return-object p0
.end method

.method private static ensureFormatResultString(Ljava/lang/Object;Lfreemarker/core/Expression;Lfreemarker/core/Environment;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/NonStringException;
        }
    .end annotation

    .line 533
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 534
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 537
    :cond_7
    invoke-static {p0}, Lfreemarker/core/EvalUtil;->assertFormatResultNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    check-cast p0, Lfreemarker/core/TemplateMarkupOutputModel;

    .line 540
    new-instance p2, Lfreemarker/core/_ErrorDescriptionBuilder;

    new-instance v0, Lfreemarker/core/_DelayedJQuote;

    .line 542
    invoke-interface {p0}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/MarkupOutputFormat;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    const-string p0, "."

    const-string v1, "Value was formatted to convert it to string, but the result was markup of ouput format "

    filled-new-array {v1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p2, p0}, Lfreemarker/core/_ErrorDescriptionBuilder;-><init>([Ljava/lang/Object;)V

    const-string p0, "Use value?string to force formatting to plain text."

    .line 543
    invoke-virtual {p2, p0}, Lfreemarker/core/_ErrorDescriptionBuilder;->tip(Ljava/lang/String;)Lfreemarker/core/_ErrorDescriptionBuilder;

    move-result-object p0

    .line 544
    invoke-virtual {p0, p1}, Lfreemarker/core/_ErrorDescriptionBuilder;->blame(Lfreemarker/core/Expression;)Lfreemarker/core/_ErrorDescriptionBuilder;

    move-result-object p0

    .line 545
    new-instance p1, Lfreemarker/core/NonStringException;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lfreemarker/core/NonStringException;-><init>(Lfreemarker/core/Environment;Lfreemarker/core/_ErrorDescriptionBuilder;)V

    throw p1
.end method

.method static getArithmeticEngine(Lfreemarker/core/Environment;Lfreemarker/core/TemplateObject;)Lfreemarker/core/ArithmeticEngine;
    .registers 2

    if-eqz p0, :cond_7

    .line 593
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getArithmeticEngine()Lfreemarker/core/ArithmeticEngine;

    move-result-object p0

    goto :goto_13

    .line 594
    :cond_7
    invoke-virtual {p1}, Lfreemarker/core/TemplateObject;->getTemplate()Lfreemarker/template/Template;

    move-result-object p0

    invoke-virtual {p0}, Lfreemarker/template/Template;->getParserConfiguration()Lfreemarker/core/ParserConfiguration;

    move-result-object p0

    invoke-interface {p0}, Lfreemarker/core/ParserConfiguration;->getArithmeticEngine()Lfreemarker/core/ArithmeticEngine;

    move-result-object p0

    :goto_13
    return-object p0
.end method

.method static mirrorCmpOperator(I)I
    .registers 4

    packed-switch p0, :pswitch_data_24

    .line 354
    new-instance v0, Lfreemarker/core/BugException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported comparator operator code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/core/BugException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_18
    const/4 p0, 0x5

    return p0

    :pswitch_1a
    const/4 p0, 0x6

    return p0

    :pswitch_1c
    const/4 p0, 0x3

    return p0

    :pswitch_1e
    const/4 p0, 0x4

    return p0

    :pswitch_20
    const/4 p0, 0x2

    return p0

    :pswitch_22
    const/4 p0, 0x1

    return p0

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_22
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
        :pswitch_1a
        :pswitch_18
    .end packed-switch
.end method

.method static modelToDate(Lfreemarker/template/TemplateDateModel;Lfreemarker/core/Expression;)Ljava/util/Date;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 86
    invoke-interface {p0}, Lfreemarker/template/TemplateDateModel;->getAsDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 87
    :cond_7
    const-class v0, Ljava/util/Date;

    invoke-static {v0, p0, p1}, Lfreemarker/core/EvalUtil;->newModelHasStoredNullException(Ljava/lang/Class;Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0
.end method

.method static modelToNumber(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/Expression;)Ljava/lang/Number;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 76
    invoke-interface {p0}, Lfreemarker/template/TemplateNumberModel;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 77
    :cond_7
    const-class v0, Ljava/lang/Number;

    invoke-static {v0, p0, p1}, Lfreemarker/core/EvalUtil;->newModelHasStoredNullException(Ljava/lang/Class;Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0
.end method

.method static modelToString(Lfreemarker/template/TemplateScalarModel;Lfreemarker/core/Expression;Lfreemarker/core/Environment;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 59
    invoke-interface {p0}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    if-nez p2, :cond_c

    .line 61
    invoke-static {}, Lfreemarker/core/Environment;->getCurrentEnvironment()Lfreemarker/core/Environment;

    move-result-object p2

    :cond_c
    if-eqz p2, :cond_17

    .line 62
    invoke-virtual {p2}, Lfreemarker/core/Environment;->isClassicCompatible()Z

    move-result p2

    if-eqz p2, :cond_17

    .line 63
    const-string p0, ""

    return-object p0

    .line 65
    :cond_17
    const-class p2, Ljava/lang/String;

    invoke-static {p2, p0, p1}, Lfreemarker/core/EvalUtil;->newModelHasStoredNullException(Ljava/lang/Class;Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0

    :cond_1e
    return-object v0
.end method

.method static newModelHasStoredNullException(Ljava/lang/Class;Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;)Lfreemarker/template/TemplateModelException;
    .registers 4

    .line 94
    new-instance v0, Lfreemarker/core/_TemplateModelException;

    .line 95
    invoke-static {p0, p1}, Lfreemarker/core/_TemplateModelException;->modelHasStoredNullDescription(Ljava/lang/Class;Lfreemarker/template/TemplateModel;)[Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p2, p0}, Lfreemarker/core/_TemplateModelException;-><init>(Lfreemarker/core/Expression;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static shouldWrapUncheckedException(Ljava/lang/Throwable;Lfreemarker/core/Environment;)Z
    .registers 5

    .line 598
    const-class v0, Lfreemarker/core/FlowControlException;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 601
    :cond_a
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getWrapUncheckedExceptions()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    return v2

    .line 603
    :cond_12
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getConfiguration()Lfreemarker/template/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/Configuration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/Version;->intValue()I

    move-result p1

    sget v0, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_27:I

    if-lt p1, v0, :cond_37

    .line 608
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 609
    const-class p1, Ljava/lang/NullPointerException;

    if-eq p0, p1, :cond_36

    const-class p1, Ljava/lang/ClassCastException;

    if-eq p0, p1, :cond_36

    const-class p1, Ljava/lang/IndexOutOfBoundsException;

    if-eq p0, p1, :cond_36

    const-class p1, Ljava/lang/reflect/InvocationTargetException;

    if-ne p0, p1, :cond_37

    :cond_36
    move v1, v2

    :cond_37
    return v1
.end method

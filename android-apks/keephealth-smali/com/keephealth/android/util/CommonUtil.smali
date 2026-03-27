.class public Lcom/keephealth/android/util/CommonUtil;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# static fields
.field private static decimalFormat:Ljava/text/DecimalFormat;

.field private static df:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 449
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 450
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/CommonUtil;->df:Ljava/text/DecimalFormat;

    .line 451
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###,##0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/CommonUtil;->decimalFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustTvTextSize(Landroid/widget/TextView;ILjava/lang/String;)V
    .registers 7

    .line 427
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, -0xa

    if-gtz p1, :cond_f

    return-void

    .line 433
    :cond_f
    new-instance v0, Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 435
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    .line 437
    :goto_1c
    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    int-to-float v3, p1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2c

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    .line 439
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_1c

    :cond_2c
    const/4 p1, 0x0

    .line 442
    invoke-virtual {p0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public static alarmToShowAlarm([ZI)[Z
    .registers 10

    const/4 v0, 0x7

    .line 326
    new-array v0, v0, [Z

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez p1, :cond_29

    .line 328
    aget-boolean p1, p0, v5

    aput-boolean p1, v0, v6

    .line 329
    aget-boolean p1, p0, v4

    aput-boolean p1, v0, v7

    .line 330
    aget-boolean p1, p0, v3

    aput-boolean p1, v0, v5

    .line 331
    aget-boolean p1, p0, v2

    aput-boolean p1, v0, v4

    .line 332
    aget-boolean p1, p0, v1

    aput-boolean p1, v0, v3

    .line 333
    aget-boolean p1, p0, v6

    aput-boolean p1, v0, v2

    .line 334
    aget-boolean p0, p0, v7

    aput-boolean p0, v0, v1

    goto :goto_4d

    :cond_29
    if-ne p1, v7, :cond_48

    .line 336
    aget-boolean p1, p0, v7

    aput-boolean p1, v0, v6

    .line 337
    aget-boolean p1, p0, v5

    aput-boolean p1, v0, v7

    .line 338
    aget-boolean p1, p0, v4

    aput-boolean p1, v0, v5

    .line 339
    aget-boolean p1, p0, v3

    aput-boolean p1, v0, v4

    .line 340
    aget-boolean p1, p0, v2

    aput-boolean p1, v0, v3

    .line 341
    aget-boolean p1, p0, v1

    aput-boolean p1, v0, v2

    .line 342
    aget-boolean p0, p0, v6

    aput-boolean p0, v0, v1

    goto :goto_4d

    .line 344
    :cond_48
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    :goto_4d
    return-object v0
.end method

.method public static alarmToShowAlarm2([ZI)[Z
    .registers 10

    const/4 v0, 0x7

    .line 356
    new-array v0, v0, [Z

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez p1, :cond_29

    .line 358
    aget-boolean p1, p0, v5

    aput-boolean p1, v0, v6

    .line 359
    aget-boolean p1, p0, v4

    aput-boolean p1, v0, v7

    .line 360
    aget-boolean p1, p0, v6

    aput-boolean p1, v0, v3

    .line 361
    aget-boolean p1, p0, v7

    aput-boolean p1, v0, v2

    .line 362
    aget-boolean p1, p0, v3

    aput-boolean p1, v0, v1

    .line 363
    aget-boolean p1, p0, v2

    aput-boolean p1, v0, v5

    .line 364
    aget-boolean p0, p0, v1

    aput-boolean p0, v0, v4

    goto :goto_4d

    :cond_29
    if-ne p1, v7, :cond_48

    .line 366
    aget-boolean p1, p0, v4

    aput-boolean p1, v0, v6

    .line 367
    aget-boolean p1, p0, v6

    aput-boolean p1, v0, v7

    .line 368
    aget-boolean p1, p0, v7

    aput-boolean p1, v0, v3

    .line 369
    aget-boolean p1, p0, v3

    aput-boolean p1, v0, v2

    .line 370
    aget-boolean p1, p0, v2

    aput-boolean p1, v0, v1

    .line 371
    aget-boolean p1, p0, v1

    aput-boolean p1, v0, v5

    .line 372
    aget-boolean p0, p0, v5

    aput-boolean p0, v0, v4

    goto :goto_4d

    .line 374
    :cond_48
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    :goto_4d
    return-object v0
.end method

.method private static calculationDaysOfMonth(II)I
    .registers 4

    packed-switch p1, :pswitch_data_20

    const/4 p0, 0x0

    goto :goto_1f

    :pswitch_5
    const/16 p0, 0x1e

    goto :goto_1f

    .line 513
    :pswitch_8
    rem-int/lit8 p1, p0, 0x64

    const/16 v0, 0x1d

    const/16 v1, 0x1c

    if-nez p1, :cond_15

    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_1b

    goto :goto_19

    .line 514
    :cond_15
    rem-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_1b

    :goto_19
    move p0, v0

    goto :goto_1f

    :cond_1b
    move p0, v1

    goto :goto_1f

    :pswitch_1d
    const/16 p0, 0x1f

    :goto_1f
    return p0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_8
        :pswitch_1d
        :pswitch_5
        :pswitch_1d
        :pswitch_5
        :pswitch_1d
        :pswitch_1d
        :pswitch_5
        :pswitch_1d
        :pswitch_5
        :pswitch_1d
    .end packed-switch
.end method

.method public static format24To12(I)I
    .registers 3

    .line 51
    rem-int/lit8 v0, p0, 0xc

    const/16 v1, 0xc

    if-ne p0, v1, :cond_a

    if-nez v0, :cond_d

    move v0, v1

    goto :goto_d

    :cond_a
    if-nez v0, :cond_d

    const/4 v0, 0x0

    :cond_d
    :goto_d
    return v0
.end method

.method public static formatDistance(F)Ljava/lang/String;
    .registers 4

    .line 479
    sget-object v0, Lcom/keephealth/android/util/CommonUtil;->decimalFormat:Ljava/text/DecimalFormat;

    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatNumber(I)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x2710

    if-le p0, v0, :cond_7

    .line 465
    const-string p0, "10,000+"

    goto :goto_e

    .line 467
    :cond_7
    sget-object v0, Lcom/keephealth/android/util/CommonUtil;->df:Ljava/text/DecimalFormat;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    :goto_e
    return-object p0
.end method

.method public static formatThree(F)Ljava/lang/String;
    .registers 4

    .line 459
    sget-object v0, Lcom/keephealth/android/util/CommonUtil;->df:Ljava/text/DecimalFormat;

    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatThree(I)Ljava/lang/String;
    .registers 4

    .line 455
    sget-object v0, Lcom/keephealth/android/util/CommonUtil;->df:Ljava/text/DecimalFormat;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDistanceList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 573
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 574
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    :goto_f
    const/16 v2, 0x64

    if-gt v1, v2, :cond_21

    int-to-float v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    .line 576
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_21
    return-object v0
.end method

.method public static getFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .registers 2

    .line 483
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getHourAndMin(IZ)[I
    .registers 4

    .line 180
    div-int/lit8 v0, p0, 0x3c

    if-eqz p1, :cond_5

    goto :goto_11

    .line 182
    :cond_5
    rem-int/lit8 p1, v0, 0xc

    const/16 v1, 0xc

    if-nez p1, :cond_d

    move v0, v1

    goto :goto_11

    :cond_d
    if-le v0, v1, :cond_11

    add-int/lit8 v0, v0, -0xc

    .line 183
    :cond_11
    :goto_11
    rem-int/lit8 p0, p0, 0x3c

    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static getPromptCalorieList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 586
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100769

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12c

    :goto_16
    const/16 v3, 0x2328

    if-gt v2, v3, :cond_31

    .line 588
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit16 v2, v2, 0x12c

    goto :goto_16

    :cond_31
    return-object v0
.end method

.method public static getSportDistanceList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 560
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 561
    invoke-static {}, Lcom/keephealth/android/util/UnitUtil;->getUnitStr()Ljava/lang/String;

    move-result-object v1

    .line 562
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0.5"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    :goto_1c
    const/16 v3, 0x64

    if-gt v2, v3, :cond_37

    .line 564
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_37
    return-object v0
.end method

.method public static getSportTimeList()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 529
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100775

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 531
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10076d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 532
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "5"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v3, 0xa

    :goto_37
    const/16 v4, 0x1e0

    if-gt v3, v4, :cond_81

    .line 534
    div-int/lit8 v4, v3, 0x3c

    .line 535
    rem-int/lit8 v5, v3, 0x3c

    .line 536
    const-string v6, ""

    if-gtz v4, :cond_45

    move-object v4, v6

    goto :goto_56

    :cond_45
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_56
    if-gtz v5, :cond_59

    goto :goto_6a

    .line 537
    :cond_59
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 538
    :goto_6a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0xa

    goto :goto_37

    :cond_81
    return-object v0
.end method

.method public static getTimeList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/high16 v1, 0x40a00000    # 5.0f

    .line 548
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xa

    :goto_10
    const/16 v2, 0x1770

    if-gt v1, v2, :cond_22

    int-to-float v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    .line 550
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0xa

    goto :goto_10

    :cond_22
    return-object v0
.end method

.method public static getWeeksByWeekStartDay(Landroid/content/Context;I)[Ljava/lang/String;
    .registers 6

    .line 290
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 291
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_27

    .line 293
    :goto_12
    array-length p1, p0

    if-ge v1, p1, :cond_4c

    if-nez v1, :cond_1e

    .line 295
    array-length p1, p0

    sub-int/2addr p1, v2

    aget-object p1, p0, p1

    aput-object p1, v0, v1

    goto :goto_24

    :cond_1e
    add-int/lit8 p1, v1, -0x1

    .line 297
    aget-object p1, p0, p1

    aput-object p1, v0, v1

    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_27
    if-ne p1, v2, :cond_33

    .line 301
    :goto_29
    array-length p1, p0

    if-ge v1, p1, :cond_4c

    .line 302
    aget-object p1, p0, v1

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_33
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4c

    move p1, v1

    .line 305
    :goto_37
    array-length v3, p0

    if-ge p1, v3, :cond_4c

    .line 306
    array-length v3, p0

    sub-int/2addr v3, v2

    if-ne p1, v3, :cond_43

    .line 307
    aget-object v3, p0, v1

    aput-object v3, v0, p1

    goto :goto_49

    :cond_43
    add-int/lit8 v3, p1, 0x1

    .line 309
    aget-object v3, p0, v3

    aput-object v3, v0, p1

    :goto_49
    add-int/lit8 p1, p1, 0x1

    goto :goto_37

    :cond_4c
    return-object v0
.end method

.method public static gettCalorieList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 597
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x12c

    :goto_7
    const/16 v2, 0x2328

    if-gt v1, v2, :cond_19

    int-to-float v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    .line 599
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit16 v1, v1, 0x12c

    goto :goto_7

    :cond_19
    return-object v0
.end method

.method public static hasOrbit(I)Z
    .registers 7

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x4

    .line 390
    filled-new-array {v2, v0, v1, v3}, [I

    move-result-object v0

    const/4 v1, 0x0

    move v4, v1

    :goto_a
    if-ge v4, v3, :cond_14

    .line 391
    aget v5, v0, v4

    if-ne v5, p0, :cond_11

    return v2

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_14
    return v1
.end method

.method public static is24Hour()Z
    .registers 2

    .line 39
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 41
    const-string v1, "time_12_24"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string v1, "24"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public static isAM(I)Z
    .registers 2

    const/16 v0, 0xc

    if-ge p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static isOPen(Landroid/content/Context;)Z
    .registers 3

    .line 247
    :try_start_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    .line 249
    const-string v0, "gps"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 251
    const-string v1, "network"

    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_1a

    if-nez v0, :cond_18

    if-eqz p0, :cond_1a

    :cond_18
    const/4 p0, 0x1

    return p0

    :catch_1a
    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static noBloodPressure(II)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_1d

    if-nez p1, :cond_5

    goto :goto_1d

    .line 410
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 408
    :cond_1d
    :goto_1d
    const-string p0, "--/--"

    return-object p0
.end method

.method public static noHeartRate(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 400
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_23

    .line 403
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 401
    :cond_23
    :goto_23
    const-string p0, "--"

    return-object p0
.end method

.method public static noPace(I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    .line 415
    const-string p0, "--"

    return-object p0

    .line 417
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 418
    div-int/lit8 v1, p0, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 419
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    rem-int/lit8 p0, p0, 0x3c

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 421
    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static openGPS(Landroid/content/Context;)V
    .registers 4

    .line 267
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 268
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string v1, "custom:3"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 273
    :try_start_1b
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_22
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1b .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception p0

    .line 275
    invoke-virtual {p0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :goto_27
    return-void
.end method

.method public static timeFormat(IIILandroid/content/Context;ZZ)Ljava/lang/String;
    .registers 6

    mul-int/lit8 p0, p0, 0x3c

    add-int/2addr p0, p1

    if-ge p0, p2, :cond_7

    add-int/lit16 p0, p0, 0x5a0

    :cond_7
    sub-int/2addr p0, p2

    .line 199
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030001

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p5, p1, p4}, Lcom/keephealth/android/util/CommonUtil;->timeFormatter(IZ[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static timeFormatter(IIZLandroid/app/Activity;)Ljava/lang/String;
    .registers 6

    .line 209
    const-string p3, "%1$02d:%2$02d"

    if-eqz p2, :cond_1c

    .line 210
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/16 v0, 0x18

    if-ne p0, v0, :cond_b

    const/4 p0, 0x0

    :cond_b
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p3, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    const/16 p2, 0xc

    if-ge p0, p2, :cond_23

    .line 212
    const-string v0, "AM"

    goto :goto_25

    :cond_23
    const-string v0, "PM"

    :goto_25
    if-le p0, p2, :cond_29

    add-int/lit8 p0, p0, -0xc

    .line 214
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-nez p0, :cond_37

    goto :goto_38

    :cond_37
    move p2, p0

    :goto_38
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p3, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static timeFormatter(IZ[Ljava/lang/String;Z)Ljava/lang/String;
    .registers 14

    const/4 v0, 0x1

    .line 71
    const-string v1, "am"

    const-string v2, "pm"

    const-string v3, ""

    const/16 v4, 0x5a0

    const/16 v5, 0x2d0

    const/16 v6, 0x18

    const-string v7, "%1$02d:%2$02d"

    const/4 v8, 0x0

    if-ltz p0, :cond_6f

    if-ge p0, v4, :cond_6f

    .line 72
    invoke-static {p0, p1}, Lcom/keephealth/android/util/CommonUtil;->getHourAndMin(IZ)[I

    move-result-object v4

    aget v4, v4, v8

    .line 73
    rem-int/lit8 v9, p0, 0x3c

    if-eqz p1, :cond_35

    .line 75
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v4, v6, :cond_23

    goto :goto_24

    :cond_23
    move v8, v4

    :goto_24
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v7, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_35
    if-eqz p3, :cond_47

    if-eqz p2, :cond_42

    if-gt p0, v5, :cond_3e

    .line 80
    aget-object p0, p2, v8

    goto :goto_40

    :cond_3e
    aget-object p0, p2, v0

    :goto_40
    move-object v3, p0

    goto :goto_47

    :cond_42
    if-gt p0, v5, :cond_45

    goto :goto_46

    :cond_45
    move-object v1, v2

    :goto_46
    move-object v3, v1

    .line 88
    :cond_47
    :goto_47
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v4, v6, :cond_51

    goto :goto_52

    :cond_51
    move v8, v4

    :goto_52
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v7, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6f
    if-lt p0, v4, :cond_d3

    add-int/lit16 p0, p0, -0x5a0

    if-lez p0, :cond_7e

    .line 96
    invoke-static {p0, p1}, Lcom/keephealth/android/util/CommonUtil;->getHourAndMin(IZ)[I

    move-result-object v4

    aget v4, v4, v8

    .line 97
    rem-int/lit8 v9, p0, 0x3c

    goto :goto_80

    :cond_7e
    move v4, v8

    move v9, v4

    :goto_80
    if-eqz p1, :cond_99

    .line 100
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v4, v6, :cond_87

    goto :goto_88

    :cond_87
    move v8, v4

    :goto_88
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v7, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_99
    if-eqz p3, :cond_ab

    if-eqz p2, :cond_a6

    if-gt p0, v5, :cond_a2

    .line 105
    aget-object p0, p2, v8

    goto :goto_a4

    :cond_a2
    aget-object p0, p2, v0

    :goto_a4
    move-object v3, p0

    goto :goto_ab

    :cond_a6
    if-gt p0, v5, :cond_a9

    goto :goto_aa

    :cond_a9
    move-object v1, v2

    :goto_aa
    move-object v3, v1

    .line 111
    :cond_ab
    :goto_ab
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v4, v6, :cond_b5

    goto :goto_b6

    :cond_b5
    move v8, v4

    :goto_b6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v7, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 117
    :cond_d3
    const-string p0, "00:00"

    return-object p0
.end method

.method public static timeFormatter(IZ[Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 16

    .line 127
    const-string v0, "am"

    const-string v1, "pm"

    const-string v2, ""

    const/16 v3, 0x5a0

    const/16 v4, 0x2d0

    const/4 v5, 0x1

    const/16 v6, 0x18

    const-string v7, "%1$02d:%2$02d"

    const/4 v8, 0x0

    .line 135
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-ltz p0, :cond_71

    if-ge p0, v3, :cond_71

    .line 128
    invoke-static {p0, p1}, Lcom/keephealth/android/util/CommonUtil;->getHourAndMin(IZ)[I

    move-result-object v3

    aget v3, v3, v8

    .line 129
    rem-int/lit8 v10, p0, 0x3c

    if-nez p4, :cond_26

    if-eqz v10, :cond_26

    add-int/lit8 v3, v3, 0x1

    :cond_26
    if-eqz p1, :cond_3b

    .line 135
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v3, v6, :cond_2d

    goto :goto_2e

    :cond_2d
    move v8, v3

    :goto_2e
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, v9}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v7, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3b
    if-eqz p3, :cond_4d

    if-eqz p2, :cond_48

    if-ge p0, v4, :cond_44

    .line 140
    aget-object p0, p2, v8

    goto :goto_46

    :cond_44
    aget-object p0, p2, v5

    :goto_46
    move-object v2, p0

    goto :goto_4d

    :cond_48
    if-ge p0, v4, :cond_4b

    goto :goto_4c

    :cond_4b
    move-object v0, v1

    :goto_4c
    move-object v2, v0

    .line 145
    :cond_4d
    :goto_4d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v3, v6, :cond_5b

    goto :goto_5c

    :cond_5b
    move v8, v3

    :goto_5c
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2, v9}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v7, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_71
    if-lt p0, v3, :cond_d3

    add-int/lit16 p0, p0, -0x5a0

    if-lez p0, :cond_80

    .line 152
    invoke-static {p0, p1}, Lcom/keephealth/android/util/CommonUtil;->getHourAndMin(IZ)[I

    move-result-object v3

    aget v3, v3, v8

    .line 153
    rem-int/lit8 v10, p0, 0x3c

    goto :goto_82

    :cond_80
    move v3, v8

    move v10, v3

    :goto_82
    if-nez p4, :cond_88

    if-eqz v10, :cond_88

    add-int/lit8 v3, v3, 0x1

    :cond_88
    if-eqz p1, :cond_9d

    .line 160
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v3, v6, :cond_8f

    goto :goto_90

    :cond_8f
    move v8, v3

    :goto_90
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, v9}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v7, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9d
    if-eqz p3, :cond_af

    if-eqz p2, :cond_aa

    if-ge p0, v4, :cond_a6

    .line 165
    aget-object p0, p2, v8

    goto :goto_a8

    :cond_a6
    aget-object p0, p2, v5

    :goto_a8
    move-object v2, p0

    goto :goto_af

    :cond_aa
    if-ge p0, v4, :cond_ad

    goto :goto_ae

    :cond_ad
    move-object v0, v1

    :goto_ae
    move-object v2, v0

    .line 170
    :cond_af
    :goto_af
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v3, v6, :cond_bd

    goto :goto_be

    :cond_bd
    move v8, v3

    :goto_be
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2, v9}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v7, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 176
    :cond_d3
    const-string p0, "00:00"

    return-object p0
.end method

.method public static timeFormatter(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 224
    const-string p2, ":"

    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 225
    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    aget-object p0, p0, p2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 226
    const-string p2, "%1$02d:%2$02d"

    if-eqz p1, :cond_35

    .line 227
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/16 v2, 0x18

    if-ne v0, v2, :cond_23

    goto :goto_24

    :cond_23
    move v1, v0

    :goto_24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_35
    const/16 p1, 0xc

    if-ge v0, p1, :cond_3c

    .line 229
    const-string v1, "AM"

    goto :goto_3e

    :cond_3c
    const-string v1, "PM"

    :goto_3e
    if-le v0, p1, :cond_42

    add-int/lit8 v0, v0, -0xc

    .line 231
    :cond_42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-nez v0, :cond_50

    goto :goto_51

    :cond_50
    move p1, v0

    :goto_51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

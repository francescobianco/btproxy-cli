.class public Lfreemarker/template/utility/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field private static final AMP:[C

.field private static final ESCAPES:[C

.field private static final ESC_BACKSLASH:I = 0x3

.field private static final ESC_HEXA:I = 0x1

.field private static final GT:[C

.field private static final HTML_APOS:[C

.field private static final LT:[C

.field private static final NO_ESC:I

.field private static final QUOT:[C

.field private static final XML_APOS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 45
    invoke-static {}, Lfreemarker/template/utility/StringUtil;->createEscapes()[C

    move-result-object v0

    sput-object v0, Lfreemarker/template/utility/StringUtil;->ESCAPES:[C

    const/4 v0, 0x4

    .line 47
    new-array v1, v0, [C

    fill-array-data v1, :array_34

    sput-object v1, Lfreemarker/template/utility/StringUtil;->LT:[C

    .line 48
    new-array v0, v0, [C

    fill-array-data v0, :array_3c

    sput-object v0, Lfreemarker/template/utility/StringUtil;->GT:[C

    const/4 v0, 0x5

    .line 49
    new-array v1, v0, [C

    fill-array-data v1, :array_44

    sput-object v1, Lfreemarker/template/utility/StringUtil;->AMP:[C

    const/4 v1, 0x6

    .line 50
    new-array v2, v1, [C

    fill-array-data v2, :array_4e

    sput-object v2, Lfreemarker/template/utility/StringUtil;->QUOT:[C

    .line 51
    new-array v0, v0, [C

    fill-array-data v0, :array_58

    sput-object v0, Lfreemarker/template/utility/StringUtil;->HTML_APOS:[C

    .line 52
    new-array v0, v1, [C

    fill-array-data v0, :array_62

    sput-object v0, Lfreemarker/template/utility/StringUtil;->XML_APOS:[C

    return-void

    :array_34
    .array-data 2
        0x26s
        0x6cs
        0x74s
        0x3bs
    .end array-data

    :array_3c
    .array-data 2
        0x26s
        0x67s
        0x74s
        0x3bs
    .end array-data

    :array_44
    .array-data 2
        0x26s
        0x61s
        0x6ds
        0x70s
        0x3bs
    .end array-data

    nop

    :array_4e
    .array-data 2
        0x26s
        0x71s
        0x75s
        0x6fs
        0x74s
        0x3bs
    .end array-data

    :array_58
    .array-data 2
        0x26s
        0x23s
        0x33s
        0x39s
        0x3bs
    .end array-data

    nop

    :array_62
    .array-data 2
        0x26s
        0x61s
        0x70s
        0x6fs
        0x73s
        0x3bs
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FTLStringLiteralDec(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0x5c

    .line 559
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    return-object p0

    .line 564
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 566
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    move v6, v5

    .line 568
    :cond_17
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v1, v3, :cond_116

    add-int/lit8 v6, v1, 0x1

    .line 572
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x22

    if-eq v6, v7, :cond_fe

    const/16 v7, 0x27

    if-eq v6, v7, :cond_fa

    const/16 v7, 0x3d

    if-eq v6, v7, :cond_f6

    if-eq v6, v0, :cond_f2

    const/16 v7, 0x6c

    if-eq v6, v7, :cond_ec

    const/16 v7, 0x6e

    if-eq v6, v7, :cond_e6

    const/16 v7, 0x72

    if-eq v6, v7, :cond_e0

    const/16 v7, 0x74

    if-eq v6, v7, :cond_da

    const/16 v7, 0x78

    const/16 v8, 0x66

    const/16 v9, 0x61

    if-eq v6, v7, :cond_93

    const/16 v7, 0x7b

    if-eq v6, v7, :cond_f6

    if-eq v6, v9, :cond_8c

    const/16 v7, 0x62

    if-eq v6, v7, :cond_85

    if-eq v6, v8, :cond_7e

    const/16 v7, 0x67

    if-ne v6, v7, :cond_63

    const/16 v6, 0x3e

    .line 607
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_101

    .line 653
    :cond_63
    new-instance p0, Lfreemarker/core/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid escape sequence (\\"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in a string literal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5, v5}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;II)V

    throw p0

    :cond_7e
    const/16 v6, 0xc

    .line 599
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_101

    :cond_85
    const/16 v6, 0x8

    .line 603
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_101

    :cond_8c
    const/16 v6, 0x26

    .line 615
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_101

    :cond_93
    add-int/lit8 v6, v1, 0x2

    add-int/lit8 v1, v1, 0x5

    if-le v3, v1, :cond_9a

    goto :goto_9b

    :cond_9a
    move v1, v3

    :goto_9b
    move v10, v5

    move v7, v6

    :goto_9d
    if-gt v7, v1, :cond_ca

    .line 629
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    if-lt v11, v12, :cond_b1

    const/16 v12, 0x39

    if-gt v11, v12, :cond_b1

    shl-int/lit8 v10, v10, 0x4

    add-int/lit8 v11, v11, -0x30

    :goto_af
    add-int/2addr v10, v11

    goto :goto_c7

    :cond_b1
    if-lt v11, v9, :cond_ba

    if-gt v11, v8, :cond_ba

    shl-int/lit8 v10, v10, 0x4

    add-int/lit8 v11, v11, -0x57

    goto :goto_af

    :cond_ba
    const/16 v12, 0x41

    if-lt v11, v12, :cond_ca

    const/16 v12, 0x46

    if-gt v11, v12, :cond_ca

    shl-int/lit8 v10, v10, 0x4

    add-int/lit8 v11, v11, -0x37

    goto :goto_af

    :goto_c7
    add-int/lit8 v7, v7, 0x1

    goto :goto_9d

    :cond_ca
    if-ge v6, v7, :cond_d2

    int-to-char v1, v10

    .line 645
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v6, v7

    goto :goto_104

    .line 647
    :cond_d2
    new-instance p0, Lfreemarker/core/ParseException;

    const-string v0, "Invalid \\x escape in a string literal"

    invoke-direct {p0, v0, v5, v5}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;II)V

    throw p0

    :cond_da
    const/16 v6, 0x9

    .line 595
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_101

    :cond_e0
    const/16 v6, 0xd

    .line 591
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_101

    :cond_e6
    const/16 v6, 0xa

    .line 587
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_101

    :cond_ec
    const/16 v6, 0x3c

    .line 611
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_101

    .line 583
    :cond_f2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_101

    .line 620
    :cond_f6
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_101

    .line 579
    :cond_fa
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_101

    .line 575
    :cond_fe
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_101
    add-int/lit8 v1, v1, 0x2

    move v6, v1

    .line 655
    :goto_104
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v2, :cond_17

    .line 657
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 570
    :cond_116
    new-instance p0, Lfreemarker/core/ParseException;

    const-string v0, "The last character of string literal is backslash"

    invoke-direct {p0, v0, v5, v5}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;II)V

    throw p0
.end method

.method public static FTLStringLiteralEnc(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 467
    invoke-static {p0, v0, v0}, Lfreemarker/template/utility/StringUtil;->FTLStringLiteralEnc(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static FTLStringLiteralEnc(Ljava/lang/String;C)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 456
    invoke-static {p0, p1, v0}, Lfreemarker/template/utility/StringUtil;->FTLStringLiteralEnc(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static FTLStringLiteralEnc(Ljava/lang/String;CZ)Ljava/lang/String;
    .registers 13

    .line 471
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_9

    move v2, v1

    goto :goto_13

    :cond_9
    const/16 v2, 0x27

    const/16 v3, 0x22

    if-ne p1, v3, :cond_10

    goto :goto_13

    :cond_10
    if-ne p1, v2, :cond_cc

    move v2, v3

    .line 484
    :goto_13
    sget-object v3, Lfreemarker/template/utility/StringUtil;->ESCAPES:[C

    array-length v3, v3

    const/4 v4, 0x0

    move v5, v1

    :goto_18
    if-ge v5, v0, :cond_a8

    .line 487
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_2f

    if-lez v5, :cond_49

    add-int/lit8 v8, v5, -0x1

    .line 490
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5b

    if-ne v8, v9, :cond_49

    goto :goto_4a

    :cond_2f
    if-ge v6, v3, :cond_36

    .line 492
    sget-object v7, Lfreemarker/template/utility/StringUtil;->ESCAPES:[C

    aget-char v7, v7, v6

    goto :goto_4a

    :cond_36
    const/16 v7, 0x7b

    if-ne v6, v7, :cond_49

    if-lez v5, :cond_49

    add-int/lit8 v8, v5, -0x1

    .line 493
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lfreemarker/template/utility/StringUtil;->isInterpolationStart(C)Z

    move-result v8

    if-eqz v8, :cond_49

    goto :goto_4a

    :cond_49
    move v7, v1

    :goto_4a
    if-eqz v7, :cond_9f

    if-ne v7, v2, :cond_4f

    goto :goto_9f

    :cond_4f
    if-nez v4, :cond_6e

    .line 504
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    if-eqz p2, :cond_5d

    const/4 v9, 0x2

    goto :goto_5e

    :cond_5d
    move v9, v1

    :goto_5e
    add-int/2addr v8, v9

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p2, :cond_67

    .line 506
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 508
    :cond_67
    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6e
    const/4 v8, 0x1

    if-ne v7, v8, :cond_96

    .line 513
    const-string v7, "\\x00"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v7, v6, 0x4

    and-int/lit8 v7, v7, 0xf

    and-int/lit8 v6, v6, 0xf

    int-to-char v6, v6

    const/16 v8, 0xa

    if-ge v7, v8, :cond_84

    add-int/lit8 v7, v7, 0x30

    goto :goto_86

    :cond_84
    add-int/lit8 v7, v7, 0x37

    :goto_86
    int-to-char v7, v7

    .line 516
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge v6, v8, :cond_8f

    add-int/lit8 v6, v6, 0x30

    goto :goto_91

    :cond_8f
    add-int/lit8 v6, v6, 0x37

    :goto_91
    int-to-char v6, v6

    .line 517
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a4

    :cond_96
    const/16 v6, 0x5c

    .line 519
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a4

    :cond_9f
    :goto_9f
    if-eqz v4, :cond_a4

    .line 500
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a4
    :goto_a4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_18

    :cond_a8
    if-nez v4, :cond_c2

    if-eqz p2, :cond_c1

    .line 526
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_c1
    return-object p0

    :cond_c2
    if-eqz p2, :cond_c7

    .line 529
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 531
    :cond_c7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 481
    :cond_cc
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported quotation character: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static HTMLEnc(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    invoke-static {p0}, Lfreemarker/template/utility/StringUtil;->XMLEncNA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static RTFEnc(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .line 275
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    move v5, v3

    move v6, v5

    :goto_a
    const/16 v7, 0x7d

    const/16 v8, 0x7b

    const/16 v9, 0x5c

    if-ge v3, v0, :cond_25

    .line 282
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v8, :cond_1c

    if-eq v10, v7, :cond_1c

    if-ne v10, v9, :cond_22

    :cond_1c
    if-ne v4, v1, :cond_1f

    move v4, v3

    :cond_1f
    add-int/lit8 v5, v5, 0x1

    move v6, v3

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_25
    if-ne v4, v1, :cond_28

    return-object p0

    :cond_28
    add-int/2addr v5, v0

    .line 295
    new-array v1, v5, [C

    if-eqz v4, :cond_30

    .line 297
    invoke-virtual {p0, v2, v4, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    :cond_30
    move v2, v4

    :goto_31
    if-gt v4, v6, :cond_4a

    .line 301
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v8, :cond_3d

    if-eq v3, v7, :cond_3d

    if-ne v3, v9, :cond_42

    :cond_3d
    add-int/lit8 v5, v2, 0x1

    .line 303
    aput-char v9, v1, v2

    move v2, v5

    :cond_42
    add-int/lit8 v5, v2, 0x1

    .line 305
    aput-char v3, v1, v2

    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_31

    :cond_4a
    add-int/lit8 v3, v0, -0x1

    if-eq v6, v3, :cond_53

    add-int/lit8 v6, v6, 0x1

    .line 308
    invoke-virtual {p0, v6, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 311
    :cond_53
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static RTFEnc(Ljava/lang/String;Ljava/io/Writer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_26

    .line 324
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7b

    const/16 v5, 0x5c

    if-eq v3, v4, :cond_18

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_18

    if-ne v3, v5, :cond_23

    :cond_18
    sub-int v3, v1, v2

    if-eqz v3, :cond_1f

    .line 328
    invoke-virtual {p1, p0, v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 330
    :cond_1f
    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    move v2, v1

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_26
    if-ge v2, v0, :cond_2c

    sub-int/2addr v0, v2

    .line 335
    invoke-virtual {p1, p0, v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    :cond_2c
    return-void
.end method

.method public static URLEnc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 345
    invoke-static {p0, p1, v0}, Lfreemarker/template/utility/StringUtil;->URLEnc(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static URLEnc(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 362
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_16

    .line 365
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 366
    invoke-static {v3, p2}, Lfreemarker/template/utility/StringUtil;->safeInURL(CZ)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_16

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    :goto_16
    if-ne v2, v0, :cond_19

    return-object p0

    .line 375
    :cond_19
    new-instance v3, Ljava/lang/StringBuilder;

    div-int/lit8 v4, v0, 0x3

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 376
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    :goto_2c
    const/16 v5, 0x25

    const/16 v6, 0xa

    const/4 v7, -0x1

    if-ge v4, v0, :cond_7a

    .line 380
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 381
    invoke-static {v8, p2}, Lfreemarker/template/utility/StringUtil;->safeInURL(CZ)Z

    move-result v9

    if-eqz v9, :cond_74

    if-eq v2, v7, :cond_70

    .line 383
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    move v9, v1

    .line 384
    :goto_48
    array-length v10, v2

    if-ge v9, v10, :cond_6f

    .line 385
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 386
    aget-byte v10, v2, v9

    and-int/lit8 v11, v10, 0xf

    shr-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0xf

    if-ge v10, v6, :cond_5b

    add-int/lit8 v10, v10, 0x30

    goto :goto_5d

    :cond_5b
    add-int/lit8 v10, v10, 0x37

    :goto_5d
    int-to-char v10, v10

    .line 389
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge v11, v6, :cond_66

    add-int/lit8 v11, v11, 0x30

    goto :goto_68

    :cond_66
    add-int/lit8 v11, v11, 0x37

    :goto_68
    int-to-char v10, v11

    .line 390
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_48

    :cond_6f
    move v2, v7

    .line 394
    :cond_70
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_77

    :cond_74
    if-ne v2, v7, :cond_77

    move v2, v4

    :cond_77
    :goto_77
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_7a
    if-eq v2, v7, :cond_ab

    .line 402
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 403
    :goto_84
    array-length p1, p0

    if-ge v1, p1, :cond_ab

    .line 404
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 405
    aget-byte p1, p0, v1

    and-int/lit8 p2, p1, 0xf

    shr-int/lit8 p1, p1, 0x4

    and-int/lit8 p1, p1, 0xf

    if-ge p1, v6, :cond_97

    add-int/lit8 p1, p1, 0x30

    goto :goto_99

    :cond_97
    add-int/lit8 p1, p1, 0x37

    :goto_99
    int-to-char p1, p1

    .line 408
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge p2, v6, :cond_a2

    add-int/lit8 p2, p2, 0x30

    goto :goto_a4

    :cond_a2
    add-int/lit8 p2, p2, 0x37

    :goto_a4
    int-to-char p1, p2

    .line 409
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    .line 413
    :cond_ab
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static URLPathEnc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 357
    invoke-static {p0, p1, v0}, Lfreemarker/template/utility/StringUtil;->URLEnc(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static XHTMLEnc(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    .line 96
    sget-object v1, Lfreemarker/template/utility/StringUtil;->HTML_APOS:[C

    invoke-static {p0, v0, v0, v1}, Lfreemarker/template/utility/StringUtil;->XMLOrHTMLEnc(Ljava/lang/String;ZZ[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static XHTMLEnc(Ljava/lang/String;Ljava/io/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    sget-object v0, Lfreemarker/template/utility/StringUtil;->HTML_APOS:[C

    invoke-static {p0, v0, p1}, Lfreemarker/template/utility/StringUtil;->XMLOrHTMLEnc(Ljava/lang/String;[CLjava/io/Writer;)V

    return-void
.end method

.method public static XMLEnc(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    .line 76
    sget-object v1, Lfreemarker/template/utility/StringUtil;->XML_APOS:[C

    invoke-static {p0, v0, v0, v1}, Lfreemarker/template/utility/StringUtil;->XMLOrHTMLEnc(Ljava/lang/String;ZZ[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static XMLEnc(Ljava/lang/String;Ljava/io/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    sget-object v0, Lfreemarker/template/utility/StringUtil;->XML_APOS:[C

    invoke-static {p0, v0, p1}, Lfreemarker/template/utility/StringUtil;->XMLOrHTMLEnc(Ljava/lang/String;[CLjava/io/Writer;)V

    return-void
.end method

.method public static XMLEncNA(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 249
    invoke-static {p0, v0, v0, v1}, Lfreemarker/template/utility/StringUtil;->XMLOrHTMLEnc(Ljava/lang/String;ZZ[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static XMLEncNQG(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 267
    invoke-static {p0, v0, v0, v1}, Lfreemarker/template/utility/StringUtil;->XMLOrHTMLEnc(Ljava/lang/String;ZZ[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static XMLEncQAttr(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 258
    invoke-static {p0, v2, v0, v1}, Lfreemarker/template/utility/StringUtil;->XMLOrHTMLEnc(Ljava/lang/String;ZZ[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static XMLOrHTMLEnc(Ljava/lang/String;ZZ[C)Ljava/lang/String;
    .registers 19

    move-object v0, p0

    move-object/from16 v1, p3

    .line 109
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v6, v3

    move v5, v4

    move v7, v5

    move v8, v7

    :goto_d
    const/16 v9, 0x27

    const/16 v10, 0x26

    const/16 v11, 0x3e

    const/16 v12, 0x3c

    const/16 v13, 0x22

    if-ge v5, v2, :cond_53

    .line 117
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v13, :cond_45

    if-eq v14, v12, :cond_41

    if-eq v14, v11, :cond_34

    if-eq v14, v10, :cond_2d

    if-eq v14, v9, :cond_28

    goto :goto_50

    :cond_28
    if-nez v1, :cond_2b

    goto :goto_50

    .line 141
    :cond_2b
    array-length v8, v1

    goto :goto_30

    .line 129
    :cond_2d
    sget-object v8, Lfreemarker/template/utility/StringUtil;->AMP:[C

    array-length v8, v8

    :goto_30
    add-int/lit8 v8, v8, -0x1

    add-int/2addr v7, v8

    goto :goto_4c

    :cond_34
    if-nez p1, :cond_3d

    .line 123
    invoke-static {p0, v5}, Lfreemarker/template/utility/StringUtil;->maybeCDataEndGT(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_3d

    goto :goto_50

    .line 126
    :cond_3d
    sget-object v8, Lfreemarker/template/utility/StringUtil;->GT:[C

    array-length v8, v8

    goto :goto_30

    .line 120
    :cond_41
    sget-object v8, Lfreemarker/template/utility/StringUtil;->LT:[C

    array-length v8, v8

    goto :goto_30

    :cond_45
    if-nez p2, :cond_48

    goto :goto_50

    .line 135
    :cond_48
    sget-object v8, Lfreemarker/template/utility/StringUtil;->QUOT:[C

    array-length v8, v8

    goto :goto_30

    :goto_4c
    if-ne v6, v3, :cond_4f

    move v6, v5

    :cond_4f
    move v8, v5

    :goto_50
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_53
    if-ne v6, v3, :cond_56

    return-object v0

    :cond_56
    add-int/2addr v7, v2

    .line 157
    new-array v3, v7, [C

    if-eqz v6, :cond_5e

    .line 159
    invoke-virtual {p0, v4, v6, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    :cond_5e
    move v4, v6

    :goto_5f
    if-gt v6, v8, :cond_a7

    .line 163
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v13, :cond_96

    if-eq v5, v12, :cond_8f

    if-eq v5, v11, :cond_7f

    if-eq v5, v10, :cond_78

    if-eq v5, v9, :cond_70

    goto :goto_98

    :cond_70
    if-nez v1, :cond_73

    goto :goto_98

    .line 187
    :cond_73
    invoke-static {v1, v3, v4}, Lfreemarker/template/utility/StringUtil;->shortArrayCopy([C[CI)I

    move-result v4

    goto :goto_a4

    .line 175
    :cond_78
    sget-object v5, Lfreemarker/template/utility/StringUtil;->AMP:[C

    invoke-static {v5, v3, v4}, Lfreemarker/template/utility/StringUtil;->shortArrayCopy([C[CI)I

    move-result v4

    goto :goto_a4

    :cond_7f
    if-nez p1, :cond_88

    .line 169
    invoke-static {p0, v6}, Lfreemarker/template/utility/StringUtil;->maybeCDataEndGT(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_88

    goto :goto_98

    .line 172
    :cond_88
    sget-object v5, Lfreemarker/template/utility/StringUtil;->GT:[C

    invoke-static {v5, v3, v4}, Lfreemarker/template/utility/StringUtil;->shortArrayCopy([C[CI)I

    move-result v4

    goto :goto_a4

    .line 166
    :cond_8f
    sget-object v5, Lfreemarker/template/utility/StringUtil;->LT:[C

    invoke-static {v5, v3, v4}, Lfreemarker/template/utility/StringUtil;->shortArrayCopy([C[CI)I

    move-result v4

    goto :goto_a4

    :cond_96
    if-nez p2, :cond_9e

    :goto_98
    add-int/lit8 v7, v4, 0x1

    .line 190
    aput-char v5, v3, v4

    move v4, v7

    goto :goto_a4

    .line 181
    :cond_9e
    sget-object v5, Lfreemarker/template/utility/StringUtil;->QUOT:[C

    invoke-static {v5, v3, v4}, Lfreemarker/template/utility/StringUtil;->shortArrayCopy([C[CI)I

    move-result v4

    :goto_a4
    add-int/lit8 v6, v6, 0x1

    goto :goto_5f

    :cond_a7
    add-int/lit8 v1, v2, -0x1

    if-eq v8, v1, :cond_b0

    add-int/lit8 v8, v8, 0x1

    .line 193
    invoke-virtual {p0, v8, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 196
    :cond_b0
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static XMLOrHTMLEnc(Ljava/lang/String;[CLjava/io/Writer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_4f

    .line 211
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x26

    const/16 v5, 0x22

    const/16 v6, 0x3e

    const/16 v7, 0x3c

    if-eq v3, v7, :cond_20

    if-eq v3, v6, :cond_20

    if-eq v3, v4, :cond_20

    if-eq v3, v5, :cond_20

    const/16 v8, 0x27

    if-ne v3, v8, :cond_4c

    :cond_20
    sub-int v8, v1, v2

    if-eqz v8, :cond_27

    .line 215
    invoke-virtual {p2, p0, v2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    :cond_27
    add-int/lit8 v2, v1, 0x1

    if-eq v3, v5, :cond_47

    if-eq v3, v4, :cond_41

    if-eq v3, v7, :cond_3b

    if-eq v3, v6, :cond_35

    .line 224
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write([C)V

    goto :goto_4c

    .line 221
    :cond_35
    sget-object v3, Lfreemarker/template/utility/StringUtil;->GT:[C

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write([C)V

    goto :goto_4c

    .line 220
    :cond_3b
    sget-object v3, Lfreemarker/template/utility/StringUtil;->LT:[C

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write([C)V

    goto :goto_4c

    .line 222
    :cond_41
    sget-object v3, Lfreemarker/template/utility/StringUtil;->AMP:[C

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write([C)V

    goto :goto_4c

    .line 223
    :cond_47
    sget-object v3, Lfreemarker/template/utility/StringUtil;->QUOT:[C

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write([C)V

    :cond_4c
    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_4f
    if-ge v2, v0, :cond_55

    sub-int/2addr v0, v2

    .line 229
    invoke-virtual {p2, p0, v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    :cond_55
    return-void
.end method

.method private static appendLiteralGlobSection(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .registers 4

    if-ne p2, p3, :cond_3

    return-void

    .line 2127
    :cond_3
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->unescapeLiteralGlobSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2128
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 683
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, " \t\r\n"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 685
    :goto_11
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_33

    .line 686
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    .line 687
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 690
    :cond_33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static chomp(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 852
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 853
    :cond_14
    const-string v0, "\r"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_26

    :cond_25
    return-object p0

    .line 854
    :cond_26
    :goto_26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createEscapes()[C
    .registers 3

    const/16 v0, 0x5d

    .line 425
    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_5
    const/16 v2, 0x20

    if-ge v1, v2, :cond_f

    const/4 v2, 0x1

    .line 427
    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    const/16 v1, 0x5c

    .line 429
    aput-char v1, v0, v1

    const/16 v1, 0x27

    .line 430
    aput-char v1, v0, v1

    const/16 v1, 0x22

    .line 431
    aput-char v1, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x6c

    .line 432
    aput-char v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x67

    .line 434
    aput-char v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x61

    .line 435
    aput-char v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x62

    .line 436
    aput-char v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x74

    .line 437
    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x6e

    .line 438
    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x66

    .line 439
    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x72

    .line 440
    aput-char v2, v0, v1

    return-object v0
.end method

.method public static deduceLocale(Ljava/lang/String;)Ljava/util/Locale;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 664
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 665
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_20

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_20

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 666
    :cond_20
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ",_ "

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    const-string v1, ""

    if-eqz p0, :cond_34

    .line 669
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    goto :goto_35

    :cond_34
    move-object p0, v1

    .line 671
    :goto_35
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 672
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 674
    :cond_3f
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_4b

    .line 675
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    .line 677
    :cond_4b
    new-instance v2, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    :goto_55
    return-object v0
.end method

.method public static emptyToNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 864
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    move-object p0, v0

    :cond_b
    return-object p0
.end method

.method private static failedToStringSubstitute(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    .line 1899
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    goto :goto_9

    .line 1901
    :catchall_5
    invoke-static {p1}, Lfreemarker/template/utility/ClassUtil;->getShortClassNameOfObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1903
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lfreemarker/template/utility/ClassUtil;->getShortClassNameOfObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".toString() failed: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ftlQuote(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/16 v0, 0x22

    .line 986
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_12

    const/16 v1, 0x27

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v2, :cond_12

    move v0, v1

    :cond_12
    const/4 v1, 0x1

    .line 991
    invoke-static {p0, v0, v1}, Lfreemarker/template/utility/StringUtil;->FTLStringLiteralEnc(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getYesNo(Ljava/lang/String;)Z
    .registers 4

    .line 694
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    .line 695
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 698
    :cond_12
    const-string v0, "n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string v0, "no"

    .line 699
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string v0, "f"

    .line 700
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string v0, "false"

    .line 701
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_6a

    .line 703
    :cond_33
    const-string v0, "y"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string v0, "yes"

    .line 704
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string v0, "t"

    .line 705
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string v0, "true"

    .line 706
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    goto :goto_69

    .line 709
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal boolean value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_69
    :goto_69
    return v1

    :cond_6a
    :goto_6a
    const/4 p0, 0x0

    return p0
.end method

.method public static globToRegularExpression(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 2

    const/4 v0, 0x0

    .line 2045
    invoke-static {p0, v0}, Lfreemarker/template/utility/StringUtil;->globToRegularExpression(Ljava/lang/String;Z)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static globToRegularExpression(Ljava/lang/String;Z)Ljava/util/regex/Pattern;
    .registers 11

    .line 2071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2075
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_d
    if-ge v3, v1, :cond_bf

    .line 2077
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, 0x1

    if-nez v5, :cond_bb

    const/16 v8, 0x3f

    if-ne v6, v8, :cond_26

    .line 2080
    invoke-static {v0, p0, v4, v3}, Lfreemarker/template/utility/StringUtil;->appendLiteralGlobSection(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 2081
    const-string v4, "[^/]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_22
    add-int/lit8 v4, v3, 0x1

    goto/16 :goto_bc

    :cond_26
    const/16 v8, 0x2a

    if-ne v6, v8, :cond_8d

    .line 2084
    invoke-static {v0, p0, v4, v3}, Lfreemarker/template/utility/StringUtil;->appendLiteralGlobSection(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    add-int/lit8 v4, v3, 0x1

    if-ge v4, v1, :cond_87

    .line 2085
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_87

    const/16 v6, 0x2f

    if-eqz v3, :cond_59

    add-int/lit8 v8, v3, -0x1

    .line 2086
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_44

    goto :goto_59

    .line 2087
    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The \"**\" wildcard must be directly after a \"/\" or it must be at the beginning, in this glob: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_59
    :goto_59
    add-int/lit8 v3, v3, 0x2

    if-ne v3, v1, :cond_64

    .line 2093
    const-string v3, ".*"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v4

    goto :goto_22

    :cond_64
    if-ge v3, v1, :cond_72

    .line 2096
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_72

    .line 2101
    const-string v4, "(.*?/)*"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 2097
    :cond_72
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The \"**\" wildcard must be followed by \"/\", or must be at tehe end, in this glob: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2105
    :cond_87
    const-string v4, "[^/]*"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    :cond_8d
    const/16 v8, 0x5c

    if-ne v6, v8, :cond_93

    move v5, v7

    goto :goto_bc

    :cond_93
    const/16 v8, 0x5b

    if-eq v6, v8, :cond_9c

    const/16 v8, 0x7b

    if-eq v6, v8, :cond_9c

    goto :goto_bc

    .line 2111
    :cond_9c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" glob operator is currently unsupported (precede it with \\ for literal matching), in this glob: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_bb
    move v5, v2

    :goto_bc
    add-int/2addr v3, v7

    goto/16 :goto_d

    .line 2120
    :cond_bf
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, p0, v4, v1}, Lfreemarker/template/utility/StringUtil;->appendLiteralGlobSection(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 2122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_ce

    const/16 v2, 0x42

    :cond_ce
    invoke-static {p0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static isFTLIdentifierPart(C)Z
    .registers 2

    .line 1271
    invoke-static {p0}, Lfreemarker/template/utility/StringUtil;->isFTLIdentifierStart(C)Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x30

    if-lt p0, v0, :cond_f

    const/16 v0, 0x39

    if-gt p0, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public static isFTLIdentifierStart(C)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xaa

    if-ge p0, v2, :cond_21

    const/16 v2, 0x61

    if-lt p0, v2, :cond_e

    const/16 v2, 0x7a

    if-le p0, v2, :cond_16

    :cond_e
    const/16 v2, 0x40

    if-lt p0, v2, :cond_17

    const/16 v2, 0x5a

    if-gt p0, v2, :cond_17

    :cond_16
    return v1

    :cond_17
    const/16 v2, 0x24

    if-eq p0, v2, :cond_1f

    const/16 v2, 0x5f

    if-ne p0, v2, :cond_20

    :cond_1f
    move v0, v1

    :cond_20
    return v0

    :cond_21
    const v3, 0xa7f8

    if-ge p0, v3, :cond_2a6

    const/16 v3, 0x2d6f

    if-ge p0, v3, :cond_146

    const/16 v3, 0x2128

    if-ge p0, v3, :cond_ae

    const/16 v3, 0x2090

    if-ge p0, v3, :cond_70

    const/16 v3, 0xd8

    if-ge p0, v3, :cond_50

    const/16 v3, 0xba

    if-ge p0, v3, :cond_42

    if-eq p0, v2, :cond_40

    const/16 v2, 0xb5

    if-ne p0, v2, :cond_41

    :cond_40
    move v0, v1

    :cond_41
    return v0

    :cond_42
    const/16 v2, 0xba

    if-eq p0, v2, :cond_4e

    const/16 v2, 0xc0

    if-lt p0, v2, :cond_4f

    const/16 v2, 0xd6

    if-gt p0, v2, :cond_4f

    :cond_4e
    move v0, v1

    :cond_4f
    return v0

    :cond_50
    const/16 v2, 0x2071

    if-ge p0, v2, :cond_66

    const/16 v2, 0xd8

    if-lt p0, v2, :cond_5c

    const/16 v2, 0xf6

    if-le p0, v2, :cond_64

    :cond_5c
    const/16 v2, 0xf8

    if-lt p0, v2, :cond_65

    const/16 v2, 0x1fff

    if-gt p0, v2, :cond_65

    :cond_64
    move v0, v1

    :cond_65
    return v0

    :cond_66
    const/16 v2, 0x2071

    if-eq p0, v2, :cond_6e

    const/16 v2, 0x207f

    if-ne p0, v2, :cond_6f

    :cond_6e
    move v0, v1

    :cond_6f
    return v0

    :cond_70
    const/16 v2, 0x2115

    if-ge p0, v2, :cond_92

    const/16 v2, 0x2107

    if-ge p0, v2, :cond_84

    if-lt p0, v3, :cond_7e

    const/16 v2, 0x209c

    if-le p0, v2, :cond_82

    :cond_7e
    const/16 v2, 0x2102

    if-ne p0, v2, :cond_83

    :cond_82
    move v0, v1

    :cond_83
    return v0

    :cond_84
    const/16 v2, 0x2107

    if-eq p0, v2, :cond_90

    const/16 v2, 0x210a

    if-lt p0, v2, :cond_91

    const/16 v2, 0x2113

    if-gt p0, v2, :cond_91

    :cond_90
    move v0, v1

    :cond_91
    return v0

    :cond_92
    const/16 v2, 0x2124

    if-ge p0, v2, :cond_a4

    const/16 v2, 0x2115

    if-eq p0, v2, :cond_a2

    const/16 v2, 0x2119

    if-lt p0, v2, :cond_a3

    const/16 v2, 0x211d

    if-gt p0, v2, :cond_a3

    :cond_a2
    move v0, v1

    :cond_a3
    return v0

    :cond_a4
    const/16 v2, 0x2124

    if-eq p0, v2, :cond_ac

    const/16 v2, 0x2126

    if-ne p0, v2, :cond_ad

    :cond_ac
    move v0, v1

    :cond_ad
    return v0

    :cond_ae
    const/16 v2, 0x2c30

    if-ge p0, v2, :cond_fc

    const/16 v2, 0x2145

    if-ge p0, v2, :cond_d8

    const/16 v2, 0x212f

    if-ge p0, v2, :cond_c6

    if-eq p0, v3, :cond_c4

    const/16 v2, 0x212a

    if-lt p0, v2, :cond_c5

    const/16 v2, 0x212d

    if-gt p0, v2, :cond_c5

    :cond_c4
    move v0, v1

    :cond_c5
    return v0

    :cond_c6
    const/16 v2, 0x212f

    if-lt p0, v2, :cond_ce

    const/16 v2, 0x2139

    if-le p0, v2, :cond_d6

    :cond_ce
    const/16 v2, 0x213c

    if-lt p0, v2, :cond_d7

    const/16 v2, 0x213f

    if-gt p0, v2, :cond_d7

    :cond_d6
    move v0, v1

    :cond_d7
    return v0

    :cond_d8
    const/16 v2, 0x2183

    if-ge p0, v2, :cond_ea

    const/16 v2, 0x2145

    if-lt p0, v2, :cond_e4

    const/16 v2, 0x2149

    if-le p0, v2, :cond_e8

    :cond_e4
    const/16 v2, 0x214e

    if-ne p0, v2, :cond_e9

    :cond_e8
    move v0, v1

    :cond_e9
    return v0

    :cond_ea
    const/16 v2, 0x2183

    if-lt p0, v2, :cond_f2

    const/16 v2, 0x2184

    if-le p0, v2, :cond_fa

    :cond_f2
    const/16 v2, 0x2c00

    if-lt p0, v2, :cond_fb

    const/16 v2, 0x2c2e

    if-gt p0, v2, :cond_fb

    :cond_fa
    move v0, v1

    :cond_fb
    return v0

    :cond_fc
    const/16 v3, 0x2d00

    if-ge p0, v3, :cond_126

    const/16 v3, 0x2ceb

    if-ge p0, v3, :cond_114

    if-lt p0, v2, :cond_10a

    const/16 v2, 0x2c5e

    if-le p0, v2, :cond_112

    :cond_10a
    const/16 v2, 0x2c60

    if-lt p0, v2, :cond_113

    const/16 v2, 0x2ce4

    if-gt p0, v2, :cond_113

    :cond_112
    move v0, v1

    :cond_113
    return v0

    :cond_114
    const/16 v2, 0x2ceb

    if-lt p0, v2, :cond_11c

    const/16 v2, 0x2cee

    if-le p0, v2, :cond_124

    :cond_11c
    const/16 v2, 0x2cf2

    if-lt p0, v2, :cond_125

    const/16 v2, 0x2cf3

    if-gt p0, v2, :cond_125

    :cond_124
    move v0, v1

    :cond_125
    return v0

    :cond_126
    const/16 v2, 0x2d2d

    if-ge p0, v2, :cond_138

    const/16 v2, 0x2d00

    if-lt p0, v2, :cond_132

    const/16 v2, 0x2d25

    if-le p0, v2, :cond_136

    :cond_132
    const/16 v2, 0x2d27

    if-ne p0, v2, :cond_137

    :cond_136
    move v0, v1

    :cond_137
    return v0

    :cond_138
    const/16 v2, 0x2d2d

    if-eq p0, v2, :cond_144

    const/16 v2, 0x2d30

    if-lt p0, v2, :cond_145

    const/16 v2, 0x2d67

    if-gt p0, v2, :cond_145

    :cond_144
    move v0, v1

    :cond_145
    return v0

    :cond_146
    const/16 v2, 0x31f0

    if-ge p0, v2, :cond_1ea

    const/16 v2, 0x2dd0

    if-ge p0, v2, :cond_19c

    const/16 v2, 0x2db0

    if-ge p0, v2, :cond_174

    const/16 v2, 0x2da0

    if-ge p0, v2, :cond_162

    if-eq p0, v3, :cond_160

    const/16 v2, 0x2d80

    if-lt p0, v2, :cond_161

    const/16 v2, 0x2d96

    if-gt p0, v2, :cond_161

    :cond_160
    move v0, v1

    :cond_161
    return v0

    :cond_162
    const/16 v2, 0x2da0

    if-lt p0, v2, :cond_16a

    const/16 v2, 0x2da6

    if-le p0, v2, :cond_172

    :cond_16a
    const/16 v2, 0x2da8

    if-lt p0, v2, :cond_173

    const/16 v2, 0x2dae

    if-gt p0, v2, :cond_173

    :cond_172
    move v0, v1

    :cond_173
    return v0

    :cond_174
    const/16 v2, 0x2dc0

    if-ge p0, v2, :cond_18a

    const/16 v2, 0x2db0

    if-lt p0, v2, :cond_180

    const/16 v2, 0x2db6

    if-le p0, v2, :cond_188

    :cond_180
    const/16 v2, 0x2db8

    if-lt p0, v2, :cond_189

    const/16 v2, 0x2dbe

    if-gt p0, v2, :cond_189

    :cond_188
    move v0, v1

    :cond_189
    return v0

    :cond_18a
    const/16 v2, 0x2dc0

    if-lt p0, v2, :cond_192

    const/16 v2, 0x2dc6

    if-le p0, v2, :cond_19a

    :cond_192
    const/16 v2, 0x2dc8

    if-lt p0, v2, :cond_19b

    const/16 v2, 0x2dce

    if-gt p0, v2, :cond_19b

    :cond_19a
    move v0, v1

    :cond_19b
    return v0

    :cond_19c
    const/16 v3, 0x3031

    if-ge p0, v3, :cond_1c2

    const/16 v3, 0x2e2f

    if-ge p0, v3, :cond_1b4

    if-lt p0, v2, :cond_1aa

    const/16 v2, 0x2dd6

    if-le p0, v2, :cond_1b2

    :cond_1aa
    const/16 v2, 0x2dd8

    if-lt p0, v2, :cond_1b3

    const/16 v2, 0x2dde

    if-gt p0, v2, :cond_1b3

    :cond_1b2
    move v0, v1

    :cond_1b3
    return v0

    :cond_1b4
    const/16 v2, 0x2e2f

    if-eq p0, v2, :cond_1c0

    const/16 v2, 0x3005

    if-lt p0, v2, :cond_1c1

    const/16 v2, 0x3006

    if-gt p0, v2, :cond_1c1

    :cond_1c0
    move v0, v1

    :cond_1c1
    return v0

    :cond_1c2
    const/16 v2, 0x3040

    if-ge p0, v2, :cond_1d8

    const/16 v2, 0x3031

    if-lt p0, v2, :cond_1ce

    const/16 v2, 0x3035

    if-le p0, v2, :cond_1d6

    :cond_1ce
    const/16 v2, 0x303b

    if-lt p0, v2, :cond_1d7

    const/16 v2, 0x303c

    if-gt p0, v2, :cond_1d7

    :cond_1d6
    move v0, v1

    :cond_1d7
    return v0

    :cond_1d8
    const/16 v2, 0x3040

    if-lt p0, v2, :cond_1e0

    const/16 v2, 0x318f

    if-le p0, v2, :cond_1e8

    :cond_1e0
    const/16 v2, 0x31a0

    if-lt p0, v2, :cond_1e9

    const/16 v2, 0x31ba

    if-gt p0, v2, :cond_1e9

    :cond_1e8
    move v0, v1

    :cond_1e9
    return v0

    :cond_1ea
    const v3, 0xa67f

    if-ge p0, v3, :cond_24c

    const v3, 0xa4d0

    if-ge p0, v3, :cond_21b

    const/16 v3, 0x3400

    if-ge p0, v3, :cond_208

    if-lt p0, v2, :cond_1fe

    const/16 v2, 0x31ff

    if-le p0, v2, :cond_206

    :cond_1fe
    const/16 v2, 0x3300

    if-lt p0, v2, :cond_207

    const/16 v2, 0x337f

    if-gt p0, v2, :cond_207

    :cond_206
    move v0, v1

    :cond_207
    return v0

    :cond_208
    const/16 v2, 0x3400

    if-lt p0, v2, :cond_210

    const/16 v2, 0x4db5

    if-le p0, v2, :cond_219

    :cond_210
    const/16 v2, 0x4e00

    if-lt p0, v2, :cond_21a

    const v2, 0xa48c

    if-gt p0, v2, :cond_21a

    :cond_219
    move v0, v1

    :cond_21a
    return v0

    :cond_21b
    const v2, 0xa610

    if-ge p0, v2, :cond_236

    const v2, 0xa4d0

    if-lt p0, v2, :cond_22a

    const v2, 0xa4fd

    if-le p0, v2, :cond_234

    :cond_22a
    const v2, 0xa500

    if-lt p0, v2, :cond_235

    const v2, 0xa60c

    if-gt p0, v2, :cond_235

    :cond_234
    move v0, v1

    :cond_235
    return v0

    :cond_236
    const v2, 0xa610

    if-lt p0, v2, :cond_240

    const v2, 0xa62b

    if-le p0, v2, :cond_24a

    :cond_240
    const v2, 0xa640

    if-lt p0, v2, :cond_24b

    const v2, 0xa66e

    if-gt p0, v2, :cond_24b

    :cond_24a
    move v0, v1

    :cond_24b
    return v0

    :cond_24c
    const v2, 0xa78b

    if-ge p0, v2, :cond_27f

    const v2, 0xa717

    if-ge p0, v2, :cond_269

    if-lt p0, v3, :cond_25d

    const v2, 0xa697

    if-le p0, v2, :cond_267

    :cond_25d
    const v2, 0xa6a0

    if-lt p0, v2, :cond_268

    const v2, 0xa6e5

    if-gt p0, v2, :cond_268

    :cond_267
    move v0, v1

    :cond_268
    return v0

    :cond_269
    const v2, 0xa717

    if-lt p0, v2, :cond_273

    const v2, 0xa71f

    if-le p0, v2, :cond_27d

    :cond_273
    const v2, 0xa722

    if-lt p0, v2, :cond_27e

    const v2, 0xa788

    if-gt p0, v2, :cond_27e

    :cond_27d
    move v0, v1

    :cond_27e
    return v0

    :cond_27f
    const v2, 0xa7a0

    if-ge p0, v2, :cond_29a

    const v2, 0xa78b

    if-lt p0, v2, :cond_28e

    const v2, 0xa78e

    if-le p0, v2, :cond_298

    :cond_28e
    const v2, 0xa790

    if-lt p0, v2, :cond_299

    const v2, 0xa793

    if-gt p0, v2, :cond_299

    :cond_298
    move v0, v1

    :cond_299
    return v0

    :cond_29a
    const v2, 0xa7a0

    if-lt p0, v2, :cond_2a5

    const v2, 0xa7aa

    if-gt p0, v2, :cond_2a5

    move v0, v1

    :cond_2a5
    return v0

    :cond_2a6
    const v2, 0xab20

    if-ge p0, v2, :cond_431

    const v2, 0xaa44

    if-ge p0, v2, :cond_378

    const v2, 0xa8fb

    if-ge p0, v2, :cond_319

    const v2, 0xa840

    if-ge p0, v2, :cond_2e8

    const v2, 0xa807

    if-ge p0, v2, :cond_2d2

    if-lt p0, v3, :cond_2c6

    const v2, 0xa801

    if-le p0, v2, :cond_2d0

    :cond_2c6
    const v2, 0xa803

    if-lt p0, v2, :cond_2d1

    const v2, 0xa805

    if-gt p0, v2, :cond_2d1

    :cond_2d0
    move v0, v1

    :cond_2d1
    return v0

    :cond_2d2
    const v2, 0xa807

    if-lt p0, v2, :cond_2dc

    const v2, 0xa80a

    if-le p0, v2, :cond_2e6

    :cond_2dc
    const v2, 0xa80c

    if-lt p0, v2, :cond_2e7

    const v2, 0xa822

    if-gt p0, v2, :cond_2e7

    :cond_2e6
    move v0, v1

    :cond_2e7
    return v0

    :cond_2e8
    const v2, 0xa8d0

    if-ge p0, v2, :cond_303

    const v2, 0xa840

    if-lt p0, v2, :cond_2f7

    const v2, 0xa873

    if-le p0, v2, :cond_301

    :cond_2f7
    const v2, 0xa882

    if-lt p0, v2, :cond_302

    const v2, 0xa8b3

    if-gt p0, v2, :cond_302

    :cond_301
    move v0, v1

    :cond_302
    return v0

    :cond_303
    const v2, 0xa8d0

    if-lt p0, v2, :cond_30d

    const v2, 0xa8d9

    if-le p0, v2, :cond_317

    :cond_30d
    const v2, 0xa8f2

    if-lt p0, v2, :cond_318

    const v2, 0xa8f7

    if-gt p0, v2, :cond_318

    :cond_317
    move v0, v1

    :cond_318
    return v0

    :cond_319
    const v3, 0xa984

    if-ge p0, v3, :cond_347

    const v3, 0xa930

    if-ge p0, v3, :cond_331

    if-eq p0, v2, :cond_32f

    const v2, 0xa900

    if-lt p0, v2, :cond_330

    const v2, 0xa925

    if-gt p0, v2, :cond_330

    :cond_32f
    move v0, v1

    :cond_330
    return v0

    :cond_331
    const v2, 0xa930

    if-lt p0, v2, :cond_33b

    const v2, 0xa946

    if-le p0, v2, :cond_345

    :cond_33b
    const v2, 0xa960

    if-lt p0, v2, :cond_346

    const v2, 0xa97c

    if-gt p0, v2, :cond_346

    :cond_345
    move v0, v1

    :cond_346
    return v0

    :cond_347
    const v2, 0xaa00

    if-ge p0, v2, :cond_362

    const v2, 0xa984

    if-lt p0, v2, :cond_356

    const v2, 0xa9b2

    if-le p0, v2, :cond_360

    :cond_356
    const v2, 0xa9cf

    if-lt p0, v2, :cond_361

    const v2, 0xa9d9

    if-gt p0, v2, :cond_361

    :cond_360
    move v0, v1

    :cond_361
    return v0

    :cond_362
    const v2, 0xaa00

    if-lt p0, v2, :cond_36c

    const v2, 0xaa28

    if-le p0, v2, :cond_376

    :cond_36c
    const v2, 0xaa40

    if-lt p0, v2, :cond_377

    const v2, 0xaa42

    if-gt p0, v2, :cond_377

    :cond_376
    move v0, v1

    :cond_377
    return v0

    :cond_378
    const v3, 0xaac0

    if-ge p0, v3, :cond_3d7

    const v3, 0xaa80

    if-ge p0, v3, :cond_3ab

    const v3, 0xaa60

    if-ge p0, v3, :cond_39a

    if-lt p0, v2, :cond_38e

    const v2, 0xaa4b

    if-le p0, v2, :cond_398

    :cond_38e
    const v2, 0xaa50

    if-lt p0, v2, :cond_399

    const v2, 0xaa59

    if-gt p0, v2, :cond_399

    :cond_398
    move v0, v1

    :cond_399
    return v0

    :cond_39a
    const v2, 0xaa60

    if-lt p0, v2, :cond_3a4

    const v2, 0xaa76

    if-le p0, v2, :cond_3a9

    :cond_3a4
    const v2, 0xaa7a

    if-ne p0, v2, :cond_3aa

    :cond_3a9
    move v0, v1

    :cond_3aa
    return v0

    :cond_3ab
    const v2, 0xaab5

    if-ge p0, v2, :cond_3c1

    const v2, 0xaa80

    if-lt p0, v2, :cond_3ba

    const v2, 0xaaaf

    if-le p0, v2, :cond_3bf

    :cond_3ba
    const v2, 0xaab1

    if-ne p0, v2, :cond_3c0

    :cond_3bf
    move v0, v1

    :cond_3c0
    return v0

    :cond_3c1
    const v2, 0xaab5

    if-lt p0, v2, :cond_3cb

    const v2, 0xaab6

    if-le p0, v2, :cond_3d5

    :cond_3cb
    const v2, 0xaab9

    if-lt p0, v2, :cond_3d6

    const v2, 0xaabd

    if-gt p0, v2, :cond_3d6

    :cond_3d5
    move v0, v1

    :cond_3d6
    return v0

    :cond_3d7
    const v2, 0xaaf2

    if-ge p0, v2, :cond_400

    const v2, 0xaadb

    if-ge p0, v2, :cond_3ea

    if-eq p0, v3, :cond_3e8

    const v2, 0xaac2

    if-ne p0, v2, :cond_3e9

    :cond_3e8
    move v0, v1

    :cond_3e9
    return v0

    :cond_3ea
    const v2, 0xaadb

    if-lt p0, v2, :cond_3f4

    const v2, 0xaadd

    if-le p0, v2, :cond_3fe

    :cond_3f4
    const v2, 0xaae0

    if-lt p0, v2, :cond_3ff

    const v2, 0xaaea

    if-gt p0, v2, :cond_3ff

    :cond_3fe
    move v0, v1

    :cond_3ff
    return v0

    :cond_400
    const v2, 0xab09

    if-ge p0, v2, :cond_41b

    const v2, 0xaaf2

    if-lt p0, v2, :cond_40f

    const v2, 0xaaf4

    if-le p0, v2, :cond_419

    :cond_40f
    const v2, 0xab01

    if-lt p0, v2, :cond_41a

    const v2, 0xab06

    if-gt p0, v2, :cond_41a

    :cond_419
    move v0, v1

    :cond_41a
    return v0

    :cond_41b
    const v2, 0xab09

    if-lt p0, v2, :cond_425

    const v2, 0xab0e

    if-le p0, v2, :cond_42f

    :cond_425
    const v2, 0xab11

    if-lt p0, v2, :cond_430

    const v2, 0xab16

    if-gt p0, v2, :cond_430

    :cond_42f
    move v0, v1

    :cond_430
    return v0

    :cond_431
    const v3, 0xfb46

    if-ge p0, v3, :cond_4f3

    const v3, 0xfb13

    if-ge p0, v3, :cond_49c

    const v3, 0xac00

    if-ge p0, v3, :cond_46e

    const v3, 0xabc0

    if-ge p0, v3, :cond_458

    if-lt p0, v2, :cond_44c

    const v2, 0xab26

    if-le p0, v2, :cond_456

    :cond_44c
    const v2, 0xab28

    if-lt p0, v2, :cond_457

    const v2, 0xab2e

    if-gt p0, v2, :cond_457

    :cond_456
    move v0, v1

    :cond_457
    return v0

    :cond_458
    const v2, 0xabc0

    if-lt p0, v2, :cond_462

    const v2, 0xabe2

    if-le p0, v2, :cond_46c

    :cond_462
    const v2, 0xabf0

    if-lt p0, v2, :cond_46d

    const v2, 0xabf9

    if-gt p0, v2, :cond_46d

    :cond_46c
    move v0, v1

    :cond_46d
    return v0

    :cond_46e
    const v2, 0xd7cb

    if-ge p0, v2, :cond_486

    if-lt p0, v3, :cond_47a

    const v2, 0xd7a3

    if-le p0, v2, :cond_484

    :cond_47a
    const v2, 0xd7b0

    if-lt p0, v2, :cond_485

    const v2, 0xd7c6

    if-gt p0, v2, :cond_485

    :cond_484
    move v0, v1

    :cond_485
    return v0

    :cond_486
    const v2, 0xd7cb

    if-lt p0, v2, :cond_490

    const v2, 0xd7fb

    if-le p0, v2, :cond_49a

    :cond_490
    const v2, 0xf900

    if-lt p0, v2, :cond_49b

    const v2, 0xfb06

    if-gt p0, v2, :cond_49b

    :cond_49a
    move v0, v1

    :cond_49b
    return v0

    :cond_49c
    const v2, 0xfb38

    if-ge p0, v2, :cond_4ca

    const v2, 0xfb1f

    if-ge p0, v2, :cond_4b4

    if-lt p0, v3, :cond_4ad

    const v2, 0xfb17

    if-le p0, v2, :cond_4b2

    :cond_4ad
    const v2, 0xfb1d

    if-ne p0, v2, :cond_4b3

    :cond_4b2
    move v0, v1

    :cond_4b3
    return v0

    :cond_4b4
    const v2, 0xfb1f

    if-lt p0, v2, :cond_4be

    const v2, 0xfb28

    if-le p0, v2, :cond_4c8

    :cond_4be
    const v2, 0xfb2a

    if-lt p0, v2, :cond_4c9

    const v2, 0xfb36

    if-gt p0, v2, :cond_4c9

    :cond_4c8
    move v0, v1

    :cond_4c9
    return v0

    :cond_4ca
    const v3, 0xfb40

    if-ge p0, v3, :cond_4dd

    if-lt p0, v2, :cond_4d6

    const v2, 0xfb3c

    if-le p0, v2, :cond_4db

    :cond_4d6
    const v2, 0xfb3e

    if-ne p0, v2, :cond_4dc

    :cond_4db
    move v0, v1

    :cond_4dc
    return v0

    :cond_4dd
    const v2, 0xfb40

    if-lt p0, v2, :cond_4e7

    const v2, 0xfb41

    if-le p0, v2, :cond_4f1

    :cond_4e7
    const v2, 0xfb43

    if-lt p0, v2, :cond_4f2

    const v2, 0xfb44

    if-gt p0, v2, :cond_4f2

    :cond_4f1
    move v0, v1

    :cond_4f2
    return v0

    :cond_4f3
    const v2, 0xff21

    if-ge p0, v2, :cond_559

    const v2, 0xfdf0

    if-ge p0, v2, :cond_52b

    const v2, 0xfd50

    if-ge p0, v2, :cond_515

    if-lt p0, v3, :cond_509

    const v2, 0xfbb1

    if-le p0, v2, :cond_513

    :cond_509
    const v2, 0xfbd3

    if-lt p0, v2, :cond_514

    const v2, 0xfd3d

    if-gt p0, v2, :cond_514

    :cond_513
    move v0, v1

    :cond_514
    return v0

    :cond_515
    const v2, 0xfd50

    if-lt p0, v2, :cond_51f

    const v2, 0xfd8f

    if-le p0, v2, :cond_529

    :cond_51f
    const v2, 0xfd92

    if-lt p0, v2, :cond_52a

    const v2, 0xfdc7

    if-gt p0, v2, :cond_52a

    :cond_529
    move v0, v1

    :cond_52a
    return v0

    :cond_52b
    const v3, 0xfe76

    if-ge p0, v3, :cond_543

    if-lt p0, v2, :cond_537

    const v2, 0xfdfb

    if-le p0, v2, :cond_541

    :cond_537
    const v2, 0xfe70

    if-lt p0, v2, :cond_542

    const v2, 0xfe74

    if-gt p0, v2, :cond_542

    :cond_541
    move v0, v1

    :cond_542
    return v0

    :cond_543
    const v2, 0xfe76

    if-lt p0, v2, :cond_54d

    const v2, 0xfefc

    if-le p0, v2, :cond_557

    :cond_54d
    const v2, 0xff10

    if-lt p0, v2, :cond_558

    const v2, 0xff19

    if-gt p0, v2, :cond_558

    :cond_557
    move v0, v1

    :cond_558
    return v0

    :cond_559
    const v3, 0xffca

    if-ge p0, v3, :cond_58c

    const v3, 0xff66

    if-ge p0, v3, :cond_576

    if-lt p0, v2, :cond_56a

    const v2, 0xff3a

    if-le p0, v2, :cond_574

    :cond_56a
    const v2, 0xff41

    if-lt p0, v2, :cond_575

    const v2, 0xff5a

    if-gt p0, v2, :cond_575

    :cond_574
    move v0, v1

    :cond_575
    return v0

    :cond_576
    const v2, 0xff66

    if-lt p0, v2, :cond_580

    const v2, 0xffbe

    if-le p0, v2, :cond_58a

    :cond_580
    const v2, 0xffc2

    if-lt p0, v2, :cond_58b

    const v2, 0xffc7

    if-gt p0, v2, :cond_58b

    :cond_58a
    move v0, v1

    :cond_58b
    return v0

    :cond_58c
    const v2, 0xffda

    if-ge p0, v2, :cond_5a4

    if-lt p0, v3, :cond_598

    const v2, 0xffcf

    if-le p0, v2, :cond_5a2

    :cond_598
    const v2, 0xffd2

    if-lt p0, v2, :cond_5a3

    const v2, 0xffd7

    if-gt p0, v2, :cond_5a3

    :cond_5a2
    move v0, v1

    :cond_5a3
    return v0

    :cond_5a4
    const v2, 0xffda

    if-lt p0, v2, :cond_5af

    const v2, 0xffdc

    if-gt p0, v2, :cond_5af

    move v0, v1

    :cond_5af
    return v0
.end method

.method private static isInterpolationStart(C)Z
    .registers 2

    const/16 v0, 0x24

    if-eq p0, v0, :cond_b

    const/16 v0, 0x23

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static isTrimmableToEmpty([C)Z
    .registers 3

    const/4 v0, 0x0

    .line 2011
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lfreemarker/template/utility/StringUtil;->isTrimmableToEmpty([CII)Z

    move-result p0

    return p0
.end method

.method public static isTrimmableToEmpty([CI)Z
    .registers 3

    .line 2020
    array-length v0, p0

    invoke-static {p0, p1, v0}, Lfreemarker/template/utility/StringUtil;->isTrimmableToEmpty([CII)Z

    move-result p0

    return p0
.end method

.method public static isTrimmableToEmpty([CII)Z
    .registers 5

    :goto_0
    if-ge p1, p2, :cond_d

    .line 2032
    aget-char v0, p0, p1

    const/16 v1, 0x20

    if-le v0, v1, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_d
    const/4 p0, 0x1

    return p0
.end method

.method public static isXMLID(Ljava/lang/String;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1688
    invoke-static {p0}, Lfreemarker/ext/dom/_ExtDomApi;->isXMLNameLike(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static jQuote(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_7

    .line 872
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    invoke-static {p0}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static jQuote(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_5

    .line 882
    const-string p0, "null"

    return-object p0

    .line 884
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 885
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x4

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x22

    .line 886
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v0, :cond_82

    .line 888
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_24

    .line 890
    const-string v4, "\\\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7f

    :cond_24
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_2e

    .line 892
    const-string v4, "\\\\"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7f

    :cond_2e
    const/16 v5, 0x20

    if-ge v4, v5, :cond_7c

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3c

    .line 895
    const-string v4, "\\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7f

    :cond_3c
    const/16 v5, 0xd

    if-ne v4, v5, :cond_46

    .line 897
    const-string v4, "\\r"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7f

    :cond_46
    const/16 v5, 0xc

    if-ne v4, v5, :cond_50

    .line 899
    const-string v4, "\\f"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7f

    :cond_50
    const/16 v5, 0x8

    if-ne v4, v5, :cond_5a

    .line 901
    const-string v4, "\\b"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7f

    :cond_5a
    const/16 v5, 0x9

    if-ne v4, v5, :cond_64

    .line 903
    const-string v4, "\\t"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7f

    .line 905
    :cond_64
    const-string v5, "\\u00"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    div-int/lit8 v5, v4, 0x10

    .line 907
    invoke-static {v5}, Lfreemarker/template/utility/StringUtil;->toHexDigit(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v4, 0xf

    .line 909
    invoke-static {v4}, Lfreemarker/template/utility/StringUtil;->toHexDigit(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7f

    .line 912
    :cond_7c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_7f
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 915
    :cond_82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 916
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static jQuoteNoXSS(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_7

    .line 924
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    invoke-static {p0}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static jQuoteNoXSS(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_5

    .line 934
    const-string p0, "null"

    return-object p0

    .line 936
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 937
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x4

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x22

    .line 938
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v0, :cond_8d

    .line 940
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_25

    .line 942
    const-string v4, "\\\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8a

    :cond_25
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_2f

    .line 944
    const-string v4, "\\\\"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8a

    :cond_2f
    const/16 v5, 0x3c

    if-ne v4, v5, :cond_39

    .line 946
    const-string v4, "\\u003C"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8a

    :cond_39
    const/16 v5, 0x20

    if-ge v4, v5, :cond_87

    const/16 v5, 0xa

    if-ne v4, v5, :cond_47

    .line 949
    const-string v4, "\\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8a

    :cond_47
    const/16 v5, 0xd

    if-ne v4, v5, :cond_51

    .line 951
    const-string v4, "\\r"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8a

    :cond_51
    const/16 v5, 0xc

    if-ne v4, v5, :cond_5b

    .line 953
    const-string v4, "\\f"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8a

    :cond_5b
    const/16 v5, 0x8

    if-ne v4, v5, :cond_65

    .line 955
    const-string v4, "\\b"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8a

    :cond_65
    const/16 v5, 0x9

    if-ne v4, v5, :cond_6f

    .line 957
    const-string v4, "\\t"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8a

    .line 959
    :cond_6f
    const-string v5, "\\u00"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    div-int/lit8 v5, v4, 0x10

    .line 961
    invoke-static {v5}, Lfreemarker/template/utility/StringUtil;->toHexDigit(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v4, 0xf

    .line 963
    invoke-static {v4}, Lfreemarker/template/utility/StringUtil;->toHexDigit(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8a

    .line 966
    :cond_87
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_8a
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 969
    :cond_8d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 970
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static javaScriptStringEnc(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 1336
    invoke-static {p0, v0}, Lfreemarker/template/utility/StringUtil;->jsStringEnc(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static javaStringEnc(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 1286
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_9f

    .line 1288
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    const/16 v5, 0x5c

    const/16 v6, 0x22

    if-eq v3, v6, :cond_1c

    if-eq v3, v5, :cond_1c

    if-ge v3, v4, :cond_19

    goto :goto_1c

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1290
    :cond_1c
    :goto_1c
    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v8, v0, 0x4

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1291
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2a
    if-ne v3, v6, :cond_32

    .line 1294
    const-string v1, "\\\""

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    :cond_32
    if-ne v3, v5, :cond_3a

    .line 1296
    const-string v1, "\\\\"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    :cond_3a
    if-ge v3, v4, :cond_8e

    const/16 v1, 0xa

    if-ne v3, v1, :cond_46

    .line 1299
    const-string v1, "\\n"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    :cond_46
    const/16 v8, 0xd

    if-ne v3, v8, :cond_50

    .line 1301
    const-string v1, "\\r"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    :cond_50
    const/16 v8, 0xc

    if-ne v3, v8, :cond_5a

    .line 1303
    const-string v1, "\\f"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    :cond_5a
    const/16 v8, 0x8

    if-ne v3, v8, :cond_64

    .line 1305
    const-string v1, "\\b"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    :cond_64
    const/16 v8, 0x9

    if-ne v3, v8, :cond_6e

    .line 1307
    const-string v1, "\\t"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    .line 1309
    :cond_6e
    const-string v8, "\\u00"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    div-int/lit8 v8, v3, 0x10

    if-ge v8, v1, :cond_7a

    add-int/lit8 v8, v8, 0x30

    goto :goto_7c

    :cond_7a
    add-int/lit8 v8, v8, 0x57

    :goto_7c
    int-to-char v8, v8

    .line 1311
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0xf

    if-ge v3, v1, :cond_87

    add-int/lit8 v3, v3, 0x30

    goto :goto_89

    :cond_87
    add-int/lit8 v3, v3, 0x57

    :goto_89
    int-to-char v1, v3

    .line 1314
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_91

    .line 1318
    :cond_8e
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_91
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_9a

    .line 1322
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1324
    :cond_9a
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_2a

    :cond_9f
    return-object p0
.end method

.method public static jsStringEnc(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 16

    .line 1404
    const-string v0, "s"

    invoke-static {v0, p0}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1406
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v0, :cond_13b

    .line 1409
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7f

    const/16 v6, 0x3e

    const/16 v7, 0x5c

    if-le v4, v6, :cond_1e

    if-ge v4, v5, :cond_1e

    if-ne v4, v7, :cond_132

    :cond_1e
    const/16 v8, 0x20

    if-eq v4, v8, :cond_132

    const/16 v9, 0xa0

    const/16 v10, 0x2028

    if-lt v4, v9, :cond_2a

    if-lt v4, v10, :cond_132

    :cond_2a
    const/16 v9, 0x1f

    const/4 v11, 0x1

    if-gt v4, v9, :cond_5a

    const/16 v5, 0xa

    if-ne v4, v5, :cond_37

    const/16 v5, 0x6e

    goto/16 :goto_c2

    :cond_37
    const/16 v5, 0xd

    if-ne v4, v5, :cond_3f

    const/16 v5, 0x72

    goto/16 :goto_c2

    :cond_3f
    const/16 v5, 0xc

    if-ne v4, v5, :cond_47

    const/16 v5, 0x66

    goto/16 :goto_c2

    :cond_47
    const/16 v5, 0x8

    if-ne v4, v5, :cond_4f

    const/16 v5, 0x62

    goto/16 :goto_c2

    :cond_4f
    const/16 v5, 0x9

    if-ne v4, v5, :cond_57

    const/16 v5, 0x74

    goto/16 :goto_c2

    :cond_57
    :goto_57
    move v5, v11

    goto/16 :goto_c2

    :cond_5a
    const/16 v9, 0x22

    const/4 v12, 0x3

    if-ne v4, v9, :cond_62

    :cond_5f
    :goto_5f
    move v5, v12

    goto/16 :goto_c2

    :cond_62
    const/16 v9, 0x27

    if-ne v4, v9, :cond_69

    if-eqz p1, :cond_5f

    goto :goto_c1

    :cond_69
    if-ne v4, v7, :cond_6c

    goto :goto_5f

    :cond_6c
    const/16 v9, 0x2f

    const/16 v13, 0x3c

    if-ne v4, v9, :cond_7d

    if-eqz v3, :cond_5f

    add-int/lit8 v9, v3, -0x1

    .line 1432
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v13, :cond_7d

    goto :goto_5f

    :cond_7d
    if-ne v4, v6, :cond_9e

    if-nez v3, :cond_82

    goto :goto_9b

    :cond_82
    add-int/lit8 v5, v3, -0x1

    .line 1439
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5d

    if-eq v5, v6, :cond_90

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_c1

    :cond_90
    if-ne v3, v11, :cond_93

    goto :goto_9b

    :cond_93
    add-int/lit8 v6, v3, -0x2

    .line 1444
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_c1

    :goto_9b
    if-eqz p1, :cond_5f

    goto :goto_57

    :cond_9e
    if-ne v4, v13, :cond_b4

    add-int/lit8 v5, v0, -0x1

    if-ne v3, v5, :cond_a5

    goto :goto_57

    :cond_a5
    add-int/lit8 v5, v3, 0x1

    .line 1457
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x21

    if-eq v5, v6, :cond_57

    const/16 v6, 0x3f

    if-ne v5, v6, :cond_c1

    goto :goto_57

    :cond_b4
    if-lt v4, v5, :cond_ba

    const/16 v5, 0x9f

    if-le v4, v5, :cond_57

    :cond_ba
    if-eq v4, v10, :cond_57

    const/16 v5, 0x2029

    if-ne v4, v5, :cond_c1

    goto :goto_57

    :cond_c1
    :goto_c1
    move v5, v2

    :goto_c2
    if-eqz v5, :cond_132

    if-nez v1, :cond_d4

    .line 1471
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v0, 0x6

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1472
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    :cond_d4
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-le v5, v8, :cond_de

    int-to-char v4, v5

    .line 1477
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_137

    :cond_de
    if-ne v5, v11, :cond_12e

    if-nez p1, :cond_fe

    const/16 v5, 0x100

    if-ge v4, v5, :cond_fe

    const/16 v5, 0x78

    .line 1480
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v5, v4, 0x4

    .line 1481
    invoke-static {v5}, Lfreemarker/template/utility/StringUtil;->toHexDigit(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v4, 0xf

    .line 1482
    invoke-static {v4}, Lfreemarker/template/utility/StringUtil;->toHexDigit(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_137

    :cond_fe
    const/16 v5, 0x75

    .line 1484
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v5, v4, 0xc

    and-int/lit8 v5, v5, 0xf

    .line 1486
    invoke-static {v5}, Lfreemarker/template/utility/StringUtil;->toHexDigit(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v5, v4, 0x8

    and-int/lit8 v5, v5, 0xf

    .line 1487
    invoke-static {v5}, Lfreemarker/template/utility/StringUtil;->toHexDigit(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    .line 1488
    invoke-static {v5}, Lfreemarker/template/utility/StringUtil;->toHexDigit(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v4, 0xf

    .line 1489
    invoke-static {v4}, Lfreemarker/template/utility/StringUtil;->toHexDigit(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_137

    .line 1492
    :cond_12e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_137

    :cond_132
    if-eqz v1, :cond_137

    .line 1500
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_137
    :goto_137
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_c

    :cond_13b
    if-nez v1, :cond_13e

    goto :goto_142

    .line 1503
    :cond_13e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_142
    return-object p0
.end method

.method public static jsonStringEnc(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    .line 1344
    invoke-static {p0, v0}, Lfreemarker/template/utility/StringUtil;->jsStringEnc(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static leftPad(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x20

    .line 1707
    invoke-static {p0, p1, v0}, Lfreemarker/template/utility/StringUtil;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static leftPad(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 5

    .line 1720
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p1, v0, :cond_7

    return-object p0

    .line 1725
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    :goto_e
    if-ge v0, p1, :cond_16

    .line 1729
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1732
    :cond_16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1734
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1749
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p1, v0, :cond_7

    return-object p0

    .line 1754
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    sub-int/2addr p1, v0

    .line 1757
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_34

    .line 1762
    div-int v2, p1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_17
    if-ge v4, v2, :cond_1f

    .line 1764
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 1766
    :cond_1f
    rem-int/2addr p1, v0

    :goto_20
    if-ge v3, p1, :cond_2c

    .line 1768
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 1771
    :cond_2c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1773
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1759
    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The \"filling\" argument can\'t be 0 length string."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static matchesName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/Environment;)Z
    .registers 4

    .line 1695
    invoke-static {p0, p1, p2, p3}, Lfreemarker/ext/dom/_ExtDomApi;->matchesName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/Environment;)Z

    move-result p0

    return p0
.end method

.method private static maybeCDataEndGT(Ljava/lang/String;I)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, p1, -0x1

    .line 202
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x5d

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    if-eq p1, v0, :cond_1c

    add-int/lit8 p1, p1, -0x2

    .line 203
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v3, :cond_1b

    goto :goto_1c

    :cond_1b
    return v2

    :cond_1c
    :goto_1c
    return v0
.end method

.method public static parseNameValuePairList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1531
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1534
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_1c

    .line 1544
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1545
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_19

    goto :goto_1c

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1c
    :goto_1c
    if-ne v3, v1, :cond_1f

    return-object v0

    :cond_1f
    move v4, v3

    :goto_20
    const/16 v5, 0x5f

    if-ge v4, v1, :cond_34

    .line 1557
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1558
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_31

    if-eq v2, v5, :cond_31

    goto :goto_34

    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 1563
    :cond_34
    :goto_34
    const-string v6, " at position "

    const-string v7, "."

    if-eq v3, v4, :cond_173

    .line 1571
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    :goto_3e
    if-ge v4, v1, :cond_4e

    .line 1575
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1576
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_4b

    goto :goto_4e

    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    :cond_4e
    :goto_4e
    if-ne v4, v1, :cond_6e

    if-eqz p1, :cond_55

    :goto_52
    move-object v5, p1

    goto/16 :goto_10f

    .line 1583
    :cond_55
    new-instance p0, Ljava/text/ParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Expecting \":\", but reached the end of the string  at position "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_6e
    const/16 v9, 0x3a

    const/16 v10, 0x2c

    if-eq v2, v9, :cond_a4

    if-eqz p1, :cond_7b

    if-ne v2, v10, :cond_7b

    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    .line 1592
    :cond_7b
    new-instance p0, Ljava/text/ParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Expecting \":\" here, but found "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1594
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_a4
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v1, :cond_b2

    .line 1609
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1610
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_a4

    :cond_b2
    if-eq v4, v1, :cond_15a

    move v9, v4

    :goto_b5
    if-ge v9, v1, :cond_c7

    .line 1626
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1627
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v11

    if-nez v11, :cond_c4

    if-eq v2, v5, :cond_c4

    goto :goto_c7

    :cond_c4
    add-int/lit8 v9, v9, 0x1

    goto :goto_b5

    :cond_c7
    :goto_c7
    if-eq v4, v9, :cond_131

    .line 1641
    invoke-virtual {p0, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_cd
    if-ge v9, v1, :cond_dd

    .line 1645
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1646
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_da

    goto :goto_dd

    :cond_da
    add-int/lit8 v9, v9, 0x1

    goto :goto_cd

    :cond_dd
    :goto_dd
    if-ge v9, v1, :cond_10d

    if-ne v2, v10, :cond_e4

    add-int/lit8 v9, v9, 0x1

    goto :goto_10d

    .line 1655
    :cond_e4
    new-instance p0, Ljava/text/ParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Excpecting \",\" or the end of the string here, but found "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1658
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_10d
    :goto_10d
    move-object v5, v4

    move v4, v9

    .line 1668
    :goto_10f
    invoke-interface {v0, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_118

    move v3, v4

    goto/16 :goto_c

    .line 1669
    :cond_118
    new-instance p0, Ljava/text/ParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Dublicated key: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1671
    invoke-static {v8}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 1633
    :cond_131
    new-instance p0, Ljava/text/ParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Expecting letter, digit or \"_\" here, (the first character of the value) but found "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1637
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 1616
    :cond_15a
    new-instance p0, Ljava/text/ParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Expecting the value of the key here, but reached the end of the string  at position "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 1564
    :cond_173
    new-instance p0, Ljava/text/ParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Expecting letter, digit or \"_\" here, (the first character of the key) but found "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1567
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 790
    invoke-static {p0, p1, p2, v0, v0}, Lfreemarker/template/utility/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 12

    .line 806
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_46

    .line 809
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_e

    return-object p0

    :cond_e
    if-eqz p4, :cond_22

    .line 814
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 816
    :cond_22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    .line 817
    new-instance p4, Ljava/lang/StringBuilder;

    add-int/lit8 v0, p3, 0x1

    mul-int/2addr v0, p1

    add-int/2addr v0, p3

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 818
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_32
    if-ge v1, p3, :cond_41

    .line 820
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 821
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 823
    :cond_41
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_46
    if-eqz p3, :cond_4c

    .line 827
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :cond_4c
    if-eqz p3, :cond_53

    .line 828
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    goto :goto_54

    :cond_53
    move-object p3, p0

    .line 829
    :goto_54
    invoke-virtual {p3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5c

    return-object p0

    .line 834
    :cond_5c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 835
    new-instance v5, Ljava/lang/StringBuilder;

    .line 836
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v4, v6

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 838
    :cond_71
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v1, v2, v0

    .line 841
    invoke-virtual {p3, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_85

    if-eqz p4, :cond_71

    .line 843
    :cond_85
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static rightPad(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x20

    .line 1785
    invoke-static {p0, p1, v0}, Lfreemarker/template/utility/StringUtil;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static rightPad(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 5

    .line 1798
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p1, v0, :cond_7

    return-object p0

    .line 1803
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1805
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    const/4 p0, 0x0

    :goto_11
    if-ge p0, p1, :cond_19

    .line 1809
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_11

    .line 1812
    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1829
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p1, v0, :cond_7

    return-object p0

    .line 1834
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1836
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    .line 1839
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_4c

    .line 1844
    rem-int/2addr v0, p0

    sub-int v2, p0, v0

    if-gt v2, p1, :cond_1d

    move v2, p0

    goto :goto_1f

    :cond_1d
    add-int v2, v0, p1

    :goto_1f
    move v3, v0

    :goto_20
    if-ge v3, v2, :cond_2c

    .line 1849
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_2c
    sub-int/2addr v2, v0

    sub-int/2addr p1, v2

    .line 1852
    div-int v0, p1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_32
    if-ge v3, v0, :cond_3a

    .line 1854
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 1856
    :cond_3a
    rem-int/2addr p1, p0

    :goto_3b
    if-ge v2, p1, :cond_47

    .line 1858
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 1861
    :cond_47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1841
    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The \"filling\" argument can\'t be 0 length string."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static safeInURL(CZ)Z
    .registers 3

    const/16 v0, 0x61

    if-lt p0, v0, :cond_8

    const/16 v0, 0x7a

    if-le p0, v0, :cond_3d

    :cond_8
    const/16 v0, 0x41

    if-lt p0, v0, :cond_10

    const/16 v0, 0x5a

    if-le p0, v0, :cond_3d

    :cond_10
    const/16 v0, 0x30

    if-lt p0, v0, :cond_18

    const/16 v0, 0x39

    if-le p0, v0, :cond_3d

    :cond_18
    const/16 v0, 0x5f

    if-eq p0, v0, :cond_3d

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_3d

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_3d

    const/16 v0, 0x21

    if-eq p0, v0, :cond_3d

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_3d

    const/16 v0, 0x27

    if-lt p0, v0, :cond_34

    const/16 v0, 0x2a

    if-le p0, v0, :cond_3d

    :cond_34
    if-eqz p1, :cond_3b

    const/16 p1, 0x2f

    if-ne p0, p1, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 p0, 0x0

    goto :goto_3e

    :cond_3d
    :goto_3d
    const/4 p0, 0x1

    :goto_3e
    return p0
.end method

.method private static shortArrayCopy([C[CI)I
    .registers 7

    .line 237
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    add-int/lit8 v2, p2, 0x1

    .line 239
    aget-char v3, p0, v1

    aput-char v3, p1, p2

    add-int/lit8 v1, v1, 0x1

    move p2, v2

    goto :goto_2

    :cond_e
    return p2
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 10

    .line 719
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    .line 723
    :goto_8
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_14

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 727
    :cond_14
    new-array v3, v4, [Ljava/lang/String;

    move v4, v1

    :goto_17
    if-gt v1, v0, :cond_2c

    .line 732
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-ne v6, v5, :cond_20

    move v6, v0

    :cond_20
    add-int/lit8 v7, v4, 0x1

    .line 734
    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    add-int/lit8 v1, v6, 0x1

    move v4, v7

    goto :goto_17

    :cond_2c
    return-object v3
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 11

    .line 748
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz p2, :cond_b

    .line 750
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_b
    move-object v1, p0

    .line 751
    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v0, :cond_25

    .line 754
    new-array p1, v2, [Ljava/lang/String;

    :goto_15
    if-ge v3, v2, :cond_24

    .line 756
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_24
    return-object p1

    :cond_25
    if-eqz p2, :cond_2b

    .line 761
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :cond_2b
    const/4 p2, 0x1

    move v4, v3

    .line 767
    :goto_2d
    invoke-virtual {v1, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_38

    add-int/lit8 p2, p2, 0x1

    add-int/2addr v4, v0

    goto :goto_2d

    .line 771
    :cond_38
    new-array p2, p2, [Ljava/lang/String;

    move v4, v3

    :goto_3b
    if-gt v3, v2, :cond_50

    .line 777
    invoke-virtual {v1, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_44

    move v6, v2

    :cond_44
    add-int/lit8 v7, v4, 0x1

    .line 779
    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v4

    add-int v3, v6, v0

    move v4, v7

    goto :goto_3b

    :cond_50
    return-object p2
.end method

.method private static toABC(IC)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x1

    if-lt p0, v0, :cond_27

    move v1, v0

    :goto_4
    mul-int/lit8 v2, v0, 0x1a

    add-int v3, v1, v2

    if-gt v3, p0, :cond_d

    move v0, v2

    move v1, v3

    goto :goto_4

    .line 1959
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_12
    if-eqz v0, :cond_22

    sub-int v3, p0, v1

    .line 1962
    div-int/2addr v3, v0

    add-int v4, p1, v3

    int-to-char v4, v4

    .line 1963
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    mul-int/2addr v3, v0

    add-int/2addr v1, v3

    .line 1966
    div-int/lit8 v0, v0, 0x1a

    goto :goto_12

    .line 1969
    :cond_22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1935
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t convert 0 or negative numbers to latin-number: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static toHexDigit(I)C
    .registers 2

    const/16 v0, 0xa

    if-ge p0, v0, :cond_7

    add-int/lit8 p0, p0, 0x30

    goto :goto_9

    :cond_7
    add-int/lit8 p0, p0, 0x37

    :goto_9
    int-to-char p0, p0

    return p0
.end method

.method public static toLowerABC(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x61

    .line 1926
    invoke-static {p0, v0}, Lfreemarker/template/utility/StringUtil;->toABC(IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toUpperABC(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x41

    .line 1917
    invoke-static {p0, v0}, Lfreemarker/template/utility/StringUtil;->toABC(IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static trim([C)[C
    .registers 6

    .line 1980
    array-length v0, p0

    if-nez v0, :cond_4

    return-object p0

    .line 1985
    :cond_4
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    const/16 v3, 0x20

    if-ge v2, v0, :cond_12

    .line 1986
    aget-char v4, p0, v2

    if-gt v4, v3, :cond_12

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_12
    :goto_12
    if-ge v2, v0, :cond_1d

    add-int/lit8 v4, v0, -0x1

    .line 1989
    aget-char v4, p0, v4

    if-gt v4, v3, :cond_1d

    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_1d
    if-nez v2, :cond_23

    .line 1993
    array-length v3, p0

    if-ne v0, v3, :cond_23

    return-object p0

    :cond_23
    if-ne v2, v0, :cond_28

    .line 1997
    sget-object p0, Lfreemarker/template/utility/CollectionUtils;->EMPTY_CHAR_ARRAY:[C

    return-object p0

    :cond_28
    sub-int/2addr v0, v2

    .line 2000
    new-array v3, v0, [C

    .line 2001
    invoke-static {p0, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method

.method public static tryToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1890
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_9

    return-object p0

    :catchall_9
    move-exception v0

    .line 1892
    invoke-static {p0, v0}, Lfreemarker/template/utility/StringUtil;->failedToStringSubstitute(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static unescapeLiteralGlobSection(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/16 v0, 0x5c

    .line 2132
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    return-object p0

    .line 2136
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2137
    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, -0x1

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    .line 2140
    :cond_16
    invoke-virtual {v4, p0, v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    .line 2142
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v2, :cond_16

    if-ge v5, v3, :cond_28

    .line 2144
    invoke-virtual {v4, p0, v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 2146
    :cond_28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static versionStringToInt(Ljava/lang/String;)I
    .registers 2

    .line 1876
    new-instance v0, Lfreemarker/template/Version;

    invoke-direct {v0, p0}, Lfreemarker/template/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result p0

    return p0
.end method

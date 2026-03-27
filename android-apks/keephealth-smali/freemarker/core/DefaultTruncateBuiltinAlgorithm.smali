.class public Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;
.super Lfreemarker/core/TruncateBuiltinAlgorithm;
.source "DefaultTruncateBuiltinAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;
    }
.end annotation


# static fields
.field public static final ASCII_INSTANCE:Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;

.field public static final DEFAULT_WORD_BOUNDARY_MIN_LENGTH:D = 0.75

.field private static final FALLBACK_M_TERMINATOR_LENGTH:I = 0x3

.field public static final STANDARD_ASCII_TERMINATOR:Ljava/lang/String; = "[...]"

.field public static final STANDARD_M_TERMINATOR:Lfreemarker/core/TemplateHTMLOutputModel;

.field public static final STANDARD_UNICODE_TERMINATOR:Ljava/lang/String; = "[\u2026]"

.field public static final UNICODE_INSTANCE:Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;


# instance fields
.field private final addSpaceAtWordBoundary:Z

.field private final defaultMTerminator:Lfreemarker/core/TemplateMarkupOutputModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfreemarker/core/TemplateMarkupOutputModel<",
            "*>;"
        }
    .end annotation
.end field

.field private final defaultMTerminatorLength:Ljava/lang/Integer;

.field private final defaultMTerminatorRemovesDots:Z

.field private final defaultTerminator:Lfreemarker/template/TemplateScalarModel;

.field private final defaultTerminatorLength:I

.field private final defaultTerminatorRemovesDots:Z

.field private final wordBoundaryMinLength:D


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 57
    :try_start_0
    sget-object v0, Lfreemarker/core/HTMLOutputFormat;->INSTANCE:Lfreemarker/core/HTMLOutputFormat;

    const-string v1, "<span class=\'truncateTerminator\'>[&#8230;]</span>"

    invoke-virtual {v0, v1}, Lfreemarker/core/HTMLOutputFormat;->fromMarkup(Ljava/lang/String;)Lfreemarker/core/CommonTemplateMarkupOutputModel;

    move-result-object v0

    check-cast v0, Lfreemarker/core/TemplateHTMLOutputModel;

    sput-object v0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->STANDARD_M_TERMINATOR:Lfreemarker/core/TemplateHTMLOutputModel;
    :try_end_c
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_c} :catch_20

    .line 85
    new-instance v1, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;

    const-string v2, "[...]"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateMarkupOutputModel;Z)V

    sput-object v1, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->ASCII_INSTANCE:Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;

    .line 98
    new-instance v1, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;

    const-string v2, "[\u2026]"

    invoke-direct {v1, v2, v0, v3}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateMarkupOutputModel;Z)V

    sput-object v1, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->UNICODE_INSTANCE:Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;

    return-void

    :catch_20
    move-exception v0

    .line 60
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/core/TemplateMarkupOutputModel;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lfreemarker/core/TemplateMarkupOutputModel<",
            "*>;Z)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v7, p3

    .line 121
    invoke-direct/range {v0 .. v8}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lfreemarker/core/TemplateMarkupOutputModel;Ljava/lang/Integer;Ljava/lang/Boolean;ZLjava/lang/Double;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lfreemarker/core/TemplateMarkupOutputModel;Ljava/lang/Integer;Ljava/lang/Boolean;ZLjava/lang/Double;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lfreemarker/core/TemplateMarkupOutputModel<",
            "*>;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Z",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Lfreemarker/core/TruncateBuiltinAlgorithm;-><init>()V

    .line 192
    const-string v0, "defaultTerminator"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    new-instance v0, Lfreemarker/template/SimpleScalar;

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->defaultTerminator:Lfreemarker/template/TemplateScalarModel;

    if-eqz p2, :cond_16

    .line 195
    :try_start_11
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1a

    .line 196
    :cond_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    :goto_1a
    iput p2, p0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->defaultTerminatorLength:I

    if-eqz p3, :cond_23

    .line 198
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_27

    .line 199
    :cond_23
    invoke-virtual {p0, p1}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->getTerminatorRemovesDots(Ljava/lang/String;)Z

    move-result p1

    :goto_27
    iput-boolean p1, p0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->defaultTerminatorRemovesDots:Z
    :try_end_29
    .catch Lfreemarker/template/TemplateModelException; {:try_start_11 .. :try_end_29} :catch_89

    .line 204
    iput-object p4, p0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->defaultMTerminator:Lfreemarker/core/TemplateMarkupOutputModel;

    if-eqz p4, :cond_55

    if-eqz p5, :cond_34

    .line 207
    :try_start_2f
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_38

    .line 208
    :cond_34
    invoke-virtual {p0, p4}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->getMTerminatorLength(Lfreemarker/core/TemplateMarkupOutputModel;)I

    move-result p1

    .line 207
    :goto_38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->defaultMTerminatorLength:Ljava/lang/Integer;

    if-eqz p6, :cond_45

    .line 211
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_49

    .line 212
    :cond_45
    invoke-virtual {p0, p4}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->getMTerminatorRemovesDots(Lfreemarker/core/TemplateMarkupOutputModel;)Z

    move-result p1

    :goto_49
    iput-boolean p1, p0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->defaultMTerminatorRemovesDots:Z
    :try_end_4b
    .catch Lfreemarker/template/TemplateModelException; {:try_start_2f .. :try_end_4b} :catch_4c

    goto :goto_5b

    :catch_4c
    move-exception p1

    .line 214
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Failed to examine defaultMTerminator"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_55
    const/4 p1, 0x0

    .line 218
    iput-object p1, p0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->defaultMTerminatorLength:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 219
    iput-boolean p1, p0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->defaultMTerminatorRemovesDots:Z

    :goto_5b
    if-nez p8, :cond_64

    const-wide/high16 p1, 0x3fe8000000000000L    # 0.75

    .line 223
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p8

    goto :goto_78

    .line 224
    :cond_64
    invoke-virtual {p8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmpg-double p1, p1, p3

    if-ltz p1, :cond_81

    invoke-virtual {p8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, p1, p3

    if-gtz p1, :cond_81

    .line 227
    :goto_78
    invoke-virtual {p8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->wordBoundaryMinLength:D

    .line 229
    iput-boolean p7, p0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->addSpaceAtWordBoundary:Z

    return-void

    .line 225
    :cond_81
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "wordBoundaryMinLength must be between 0.0 and 1.0 (inclusive)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_89
    move-exception p1

    .line 201
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Failed to examine defaultTerminator"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 12

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    .line 135
    invoke-direct/range {v0 .. v8}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lfreemarker/core/TemplateMarkupOutputModel;Ljava/lang/Integer;Ljava/lang/Boolean;ZLjava/lang/Double;)V

    return-void
.end method

.method static doesHtmlOrXmlStartWithDot(Ljava/lang/String;)Z
    .registers 9

    .line 687
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_6
    :goto_6
    if-ge v2, v0, :cond_a3

    add-int/lit8 v3, v2, 0x1

    .line 689
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3c

    if-ne v4, v5, :cond_83

    .line 691
    const-string v4, "!--"

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    const/16 v5, 0x3e

    if-eqz v4, :cond_41

    add-int/lit8 v2, v2, 0x4

    :goto_1e
    add-int/lit8 v3, v2, 0x2

    if-ge v3, v0, :cond_3b

    .line 695
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x2d

    if-ne v4, v6, :cond_38

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_38

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_3b

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_3b
    add-int/lit8 v2, v2, 0x3

    if-lt v2, v0, :cond_6

    goto/16 :goto_a3

    .line 702
    :cond_41
    const-string v4, "![CDATA["

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_71

    add-int/lit8 v3, v2, 0x9

    if-ge v3, v0, :cond_6c

    .line 706
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_67

    add-int/lit8 v6, v2, 0xb

    if-ge v6, v0, :cond_67

    add-int/lit8 v7, v2, 0xa

    .line 708
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v4, :cond_67

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_6c

    .line 709
    :cond_67
    invoke-static {v3}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->isDot(C)Z

    move-result p0

    return p0

    :cond_6c
    add-int/lit8 v2, v2, 0xc

    if-lt v2, v0, :cond_6

    goto :goto_a3

    :cond_71
    :goto_71
    if-ge v3, v0, :cond_7c

    .line 717
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_7c

    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    :cond_7c
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v0, :cond_81

    goto :goto_a3

    :cond_81
    move v2, v3

    goto :goto_6

    :cond_83
    const/16 v1, 0x26

    if-ne v4, v1, :cond_9e

    move v1, v3

    :goto_88
    if-ge v1, v0, :cond_95

    .line 728
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x3b

    if-eq v2, v4, :cond_95

    add-int/lit8 v1, v1, 0x1

    goto :goto_88

    .line 731
    :cond_95
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->isDotCharReference(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 733
    :cond_9e
    invoke-static {v4}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->isDot(C)Z

    move-result p0

    return p0

    :cond_a3
    :goto_a3
    return v1
.end method

.method static getCodeFromNumericalCharReferenceName(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x1

    .line 750
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x78

    const/4 v3, 0x0

    if-eq v1, v2, :cond_11

    const/16 v2, 0x58

    if-ne v1, v2, :cond_f

    goto :goto_11

    :cond_f
    move v1, v3

    goto :goto_12

    :cond_11
    :goto_11
    move v1, v0

    :goto_12
    if-eqz v1, :cond_15

    const/4 v0, 0x2

    .line 753
    :cond_15
    :goto_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_52

    .line 754
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz v1, :cond_24

    const/16 v4, 0x10

    goto :goto_26

    :cond_24
    const/16 v4, 0xa

    :goto_26
    mul-int/2addr v3, v4

    const/16 v4, 0x30

    if-lt v2, v4, :cond_33

    const/16 v4, 0x39

    if-gt v2, v4, :cond_33

    add-int/lit8 v2, v2, -0x30

    :goto_31
    add-int/2addr v3, v2

    goto :goto_4d

    :cond_33
    if-eqz v1, :cond_40

    const/16 v4, 0x61

    if-lt v2, v4, :cond_40

    const/16 v4, 0x66

    if-gt v2, v4, :cond_40

    add-int/lit8 v2, v2, -0x57

    goto :goto_31

    :cond_40
    if-eqz v1, :cond_50

    const/16 v4, 0x41

    if-lt v2, v4, :cond_50

    const/16 v4, 0x46

    if-gt v2, v4, :cond_50

    add-int/lit8 v2, v2, -0x37

    goto :goto_31

    :goto_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_50
    const/4 p0, -0x1

    return p0

    :cond_52
    return v3
.end method

.method static getLengthWithoutTags(Ljava/lang/String;)I
    .registers 8

    .line 625
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_6
    :goto_6
    if-ge v1, v0, :cond_9d

    add-int/lit8 v3, v1, 0x1

    .line 627
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3c

    if-ne v4, v5, :cond_80

    .line 629
    const-string v4, "!--"

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    const/16 v5, 0x3e

    if-eqz v4, :cond_40

    add-int/lit8 v1, v1, 0x4

    :goto_1e
    add-int/lit8 v3, v1, 0x2

    if-ge v3, v0, :cond_3b

    .line 632
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x2d

    if-ne v4, v6, :cond_38

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_38

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_3b

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_3b
    add-int/lit8 v1, v1, 0x3

    if-lt v1, v0, :cond_6

    goto :goto_9d

    .line 639
    :cond_40
    const-string v4, "![CDATA["

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_70

    add-int/lit8 v1, v1, 0x9

    :goto_4a
    if-ge v1, v0, :cond_6b

    .line 643
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_66

    add-int/lit8 v3, v1, 0x2

    if-ge v3, v0, :cond_66

    add-int/lit8 v6, v1, 0x1

    .line 644
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_66

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_6b

    :cond_66
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    :cond_6b
    add-int/lit8 v1, v1, 0x3

    if-lt v1, v0, :cond_6

    goto :goto_9d

    :cond_70
    :goto_70
    if-ge v3, v0, :cond_7b

    .line 654
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v5, :cond_7b

    add-int/lit8 v3, v3, 0x1

    goto :goto_70

    :cond_7b
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v0, :cond_9a

    goto :goto_9d

    :cond_80
    const/16 v1, 0x26

    if-ne v4, v1, :cond_98

    :goto_84
    if-ge v3, v0, :cond_91

    .line 664
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x3b

    if-eq v1, v4, :cond_91

    add-int/lit8 v3, v3, 0x1

    goto :goto_84

    :cond_91
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    if-lt v3, v0, :cond_9a

    goto :goto_9d

    :cond_98
    add-int/lit8 v2, v2, 0x1

    :cond_9a
    move v1, v3

    goto/16 :goto_6

    :cond_9d
    :goto_9d
    return v2
.end method

.method private getTerminatorLength(Lfreemarker/template/TemplateModel;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 572
    instance-of v0, p1, Lfreemarker/template/TemplateScalarModel;

    if-eqz v0, :cond_f

    check-cast p1, Lfreemarker/template/TemplateScalarModel;

    .line 573
    invoke-interface {p1}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_15

    :cond_f
    check-cast p1, Lfreemarker/core/TemplateMarkupOutputModel;

    .line 574
    invoke-virtual {p0, p1}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->getMTerminatorLength(Lfreemarker/core/TemplateMarkupOutputModel;)I

    move-result p1

    :goto_15
    return p1
.end method

.method private getTerminatorRemovesDots(Lfreemarker/template/TemplateModel;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 578
    instance-of v0, p1, Lfreemarker/template/TemplateScalarModel;

    if-eqz v0, :cond_f

    check-cast p1, Lfreemarker/template/TemplateScalarModel;

    .line 579
    invoke-interface {p1}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->getTerminatorRemovesDots(Ljava/lang/String;)Z

    move-result p1

    goto :goto_15

    :cond_f
    check-cast p1, Lfreemarker/core/TemplateMarkupOutputModel;

    .line 580
    invoke-virtual {p0, p1}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->getMTerminatorRemovesDots(Lfreemarker/core/TemplateMarkupOutputModel;)Z

    move-result p1

    :goto_15
    return p1
.end method

.method private static isDot(C)Z
    .registers 2

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_b

    const/16 v0, 0x2026

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

.method static isDotCharReference(Ljava/lang/String;)Z
    .registers 5

    .line 741
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_20

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_20

    .line 742
    invoke-static {p0}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->getCodeFromNumericalCharReferenceName(Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x2026

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v3

    :cond_1f
    :goto_1f
    return v2

    .line 745
    :cond_20
    const-string v0, "hellip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "period"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    goto :goto_32

    :cond_31
    move v2, v3

    :cond_32
    :goto_32
    return v2
.end method

.method private static isDotOrWS(C)Z
    .registers 2

    .line 606
    invoke-static {p0}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->isDot(C)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private isHTMLOrXML(Lfreemarker/core/MarkupOutputFormat;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/core/MarkupOutputFormat<",
            "*>;)Z"
        }
    .end annotation

    .line 610
    instance-of v0, p1, Lfreemarker/core/HTMLOutputFormat;

    if-nez v0, :cond_b

    instance-of p1, p1, Lfreemarker/core/XMLOutputFormat;

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method

.method private isWordEnd(Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x1

    add-int/2addr p2, v0

    .line 598
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_14

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :cond_14
    :goto_14
    return v0
.end method

.method private skipTrailingDots(Ljava/lang/String;I)I
    .registers 4

    :goto_0
    if-ltz p2, :cond_f

    .line 591
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->isDot(C)Z

    move-result v0

    if-eqz v0, :cond_f

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_f
    return p2
.end method

.method private skipTrailingWS(Ljava/lang/String;I)I
    .registers 4

    :goto_0
    if-ltz p2, :cond_f

    .line 584
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_f

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_f
    return p2
.end method

.method private unifiedTruncate(Ljava/lang/String;ILfreemarker/template/TemplateModel;Ljava/lang/Integer;Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;Z)Lfreemarker/template/TemplateModel;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 405
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p2, :cond_c

    .line 406
    new-instance p2, Lfreemarker/template/SimpleScalar;

    invoke-direct {p2, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_c
    if-ltz p2, :cond_a8

    if-nez p3, :cond_2f

    if-eqz p6, :cond_1f

    .line 414
    iget-object p3, p0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->defaultMTerminator:Lfreemarker/core/TemplateMarkupOutputModel;

    if-eqz p3, :cond_1f

    .line 416
    iget-object p4, p0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->defaultMTerminatorLength:Ljava/lang/Integer;

    .line 417
    iget-boolean p6, p0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->defaultMTerminatorRemovesDots:Z

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p6

    goto :goto_2d

    .line 419
    :cond_1f
    iget-object p3, p0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->defaultTerminator:Lfreemarker/template/TemplateScalarModel;

    .line 420
    iget p4, p0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->defaultTerminatorLength:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 421
    iget-boolean p6, p0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->defaultTerminatorRemovesDots:Z

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p6

    :goto_2d
    move-object v5, p6

    goto :goto_4a

    :cond_2f
    if-eqz p4, :cond_40

    .line 425
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p6

    if-ltz p6, :cond_38

    goto :goto_48

    .line 426
    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "terminatorLength can\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 429
    :cond_40
    invoke-direct {p0, p3}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->getTerminatorLength(Lfreemarker/template/TemplateModel;)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    :goto_48
    const/4 p6, 0x0

    goto :goto_2d

    .line 437
    :goto_4a
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p5

    .line 434
    invoke-direct/range {v0 .. v6}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->unifiedTruncateWithoutTerminatorAdded(Ljava/lang/String;ILfreemarker/template/TemplateModel;ILjava/lang/Boolean;Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p1, :cond_a7

    .line 442
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-nez p2, :cond_60

    goto :goto_a7

    .line 446
    :cond_60
    instance-of p2, p3, Lfreemarker/template/TemplateScalarModel;

    if-eqz p2, :cond_77

    .line 447
    check-cast p3, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {p3}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    new-instance p2, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 449
    :cond_77
    instance-of p2, p3, Lfreemarker/core/TemplateMarkupOutputModel;

    if-eqz p2, :cond_8e

    .line 450
    check-cast p3, Lfreemarker/core/TemplateMarkupOutputModel;

    .line 451
    invoke-interface {p3}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/MarkupOutputFormat;

    move-result-object p2

    .line 452
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lfreemarker/core/MarkupOutputFormat;->fromPlainTextByEscaping(Ljava/lang/String;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lfreemarker/core/MarkupOutputFormat;->concat(Lfreemarker/core/TemplateMarkupOutputModel;Lfreemarker/core/TemplateMarkupOutputModel;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object p1

    return-object p1

    .line 454
    :cond_8e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Unsupported terminator type: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    invoke-static {p3}, Lfreemarker/template/utility/ClassUtil;->getFTLTypeDescription(Lfreemarker/template/TemplateModel;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a7
    :goto_a7
    return-object p3

    .line 409
    :cond_a8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxLength can\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private unifiedTruncateWithoutTerminatorAdded(Ljava/lang/String;ILfreemarker/template/TemplateModel;ILjava/lang/Boolean;Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;)Ljava/lang/StringBuilder;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    sub-int v5, v2, p4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .line 468
    invoke-direct {v0, v1, v5}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->skipTrailingWS(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x0

    if-gez v7, :cond_16

    return-object v8

    .line 473
    :cond_16
    sget-object v9, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;->AUTO:Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;

    const/16 v10, 0x20

    const/4 v11, 0x0

    if-ne v4, v9, :cond_25

    iget-wide v12, v0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->wordBoundaryMinLength:D

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, v12, v14

    if-ltz v9, :cond_29

    :cond_25
    sget-object v9, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;->WORD_BOUNDARY:Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;

    if-ne v4, v9, :cond_ca

    .line 478
    :cond_29
    iget-boolean v9, v0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->addSpaceAtWordBoundary:Z

    if-eqz v9, :cond_30

    add-int/lit8 v9, p4, 0x1

    goto :goto_32

    :cond_30
    move/from16 v9, p4

    .line 479
    :goto_32
    sget-object v12, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;->AUTO:Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;

    if-ne v4, v12, :cond_46

    int-to-double v12, v2

    iget-wide v14, v0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->wordBoundaryMinLength:D

    mul-double/2addr v12, v14

    .line 480
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    sub-int/2addr v12, v9

    sub-int/2addr v12, v6

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_47

    :cond_46
    move v12, v11

    :goto_47
    sub-int/2addr v2, v9

    sub-int/2addr v2, v6

    .line 483
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 485
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v14, v2, 0x1

    if-le v13, v14, :cond_5e

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v13

    goto :goto_5f

    :cond_5e
    move v13, v6

    :goto_5f
    if-lt v2, v12, :cond_b4

    .line 488
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 489
    invoke-static {v14}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v15

    if-nez v15, :cond_b0

    if-eqz v13, :cond_b0

    .line 492
    iget-boolean v13, v0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->addSpaceAtWordBoundary:Z

    if-nez v13, :cond_9c

    invoke-static {v14}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->isDot(C)Z

    move-result v13

    if-eqz v13, :cond_9c

    if-nez p5, :cond_82

    .line 494
    invoke-direct {v0, v3}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->getTerminatorRemovesDots(Lfreemarker/template/TemplateModel;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    goto :goto_84

    :cond_82
    move-object/from16 v13, p5

    .line 496
    :goto_84
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_9e

    :goto_8a
    if-lt v2, v12, :cond_99

    .line 497
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->isDotOrWS(C)Z

    move-result v14

    if-eqz v14, :cond_99

    add-int/lit8 v2, v2, -0x1

    goto :goto_8a

    :cond_99
    if-ge v2, v12, :cond_9e

    goto :goto_b6

    :cond_9c
    move-object/from16 v13, p5

    .line 506
    :cond_9e
    new-instance v12, Ljava/lang/StringBuilder;

    add-int/2addr v2, v6

    add-int/2addr v9, v2

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 507
    invoke-virtual {v12, v1, v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 508
    iget-boolean v2, v0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->addSpaceAtWordBoundary:Z

    if-eqz v2, :cond_b7

    .line 509
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b7

    :cond_b0
    add-int/lit8 v2, v2, -0x1

    move v13, v15

    goto :goto_5f

    :cond_b4
    move-object/from16 v13, p5

    :goto_b6
    move-object v12, v8

    :cond_b7
    :goto_b7
    if-nez v12, :cond_c9

    .line 518
    sget-object v2, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;->WORD_BOUNDARY:Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;

    if-eq v4, v2, :cond_c9

    sget-object v2, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;->AUTO:Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;

    if-ne v4, v2, :cond_cc

    iget-wide v14, v0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->wordBoundaryMinLength:D

    const-wide/16 v16, 0x0

    cmpl-double v2, v14, v16

    if-nez v2, :cond_cc

    :cond_c9
    return-object v12

    :cond_ca
    move-object/from16 v13, p5

    :cond_cc
    if-ne v7, v5, :cond_dd

    .line 530
    iget-boolean v2, v0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->addSpaceAtWordBoundary:Z

    if-eqz v2, :cond_dd

    invoke-direct {v0, v1, v7}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->isWordEnd(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_dd

    add-int/lit8 v7, v7, -0x1

    if-gez v7, :cond_dd

    return-object v8

    .line 542
    :cond_dd
    invoke-direct {v0, v1, v7}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->skipTrailingWS(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_e4

    return-object v8

    .line 548
    :cond_e4
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->isDot(C)Z

    move-result v4

    if-eqz v4, :cond_112

    iget-boolean v4, v0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->addSpaceAtWordBoundary:Z

    if-eqz v4, :cond_f8

    invoke-direct {v0, v1, v2}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->isWordEnd(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_112

    :cond_f8
    if-nez v13, :cond_102

    .line 550
    invoke-direct {v0, v3}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->getTerminatorRemovesDots(Lfreemarker/template/TemplateModel;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 552
    :cond_102
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_112

    .line 553
    invoke-direct {v0, v1, v2}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->skipTrailingDots(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_10f

    return-object v8

    :cond_10f
    move v7, v2

    move v2, v6

    goto :goto_114

    :cond_112
    move v7, v2

    move v2, v11

    :goto_114
    if-nez v2, :cond_dd

    .line 562
    iget-boolean v2, v0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->addSpaceAtWordBoundary:Z

    if-eqz v2, :cond_122

    invoke-direct {v0, v1, v7}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->isWordEnd(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_122

    move v2, v6

    goto :goto_123

    :cond_122
    move v2, v11

    .line 563
    :goto_123
    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v7, v6

    add-int v4, v7, v2

    add-int v4, v4, p4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 564
    invoke-virtual {v3, v1, v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_135

    .line 566
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_135
    return-object v3
.end method


# virtual methods
.method public getAddSpaceAtWordBoundary()Z
    .registers 2

    .line 349
    iget-boolean v0, p0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->addSpaceAtWordBoundary:Z

    return v0
.end method

.method public getDefaultMTerminator()Lfreemarker/core/TemplateMarkupOutputModel;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfreemarker/core/TemplateMarkupOutputModel<",
            "*>;"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->defaultMTerminator:Lfreemarker/core/TemplateMarkupOutputModel;

    return-object v0
.end method

.method public getDefaultMTerminatorLength()Ljava/lang/Integer;
    .registers 2

    .line 329
    iget-object v0, p0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->defaultMTerminatorLength:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDefaultMTerminatorRemovesDots()Z
    .registers 2

    .line 333
    iget-boolean v0, p0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->defaultMTerminatorRemovesDots:Z

    return v0
.end method

.method public getDefaultTerminator()Ljava/lang/String;
    .registers 3

    .line 294
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->defaultTerminator:Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 296
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDefaultTerminatorLength()I
    .registers 2

    .line 305
    iget v0, p0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->defaultTerminatorLength:I

    return v0
.end method

.method public getDefaultTerminatorRemovesDots()Z
    .registers 2

    .line 313
    iget-boolean v0, p0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->defaultTerminatorRemovesDots:Z

    return v0
.end method

.method protected getMTerminatorLength(Lfreemarker/core/TemplateMarkupOutputModel;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/core/TemplateMarkupOutputModel<",
            "*>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 364
    invoke-interface {p1}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/MarkupOutputFormat;

    move-result-object v0

    .line 365
    invoke-direct {p0, v0}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->isHTMLOrXML(Lfreemarker/core/MarkupOutputFormat;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 366
    invoke-virtual {v0, p1}, Lfreemarker/core/MarkupOutputFormat;->getMarkupString(Lfreemarker/core/TemplateMarkupOutputModel;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->getLengthWithoutTags(Ljava/lang/String;)I

    move-result p1

    goto :goto_14

    :cond_13
    const/4 p1, 0x3

    :goto_14
    return p1
.end method

.method protected getMTerminatorRemovesDots(Lfreemarker/core/TemplateMarkupOutputModel;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 392
    invoke-interface {p1}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/MarkupOutputFormat;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->isHTMLOrXML(Lfreemarker/core/MarkupOutputFormat;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 393
    invoke-interface {p1}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/MarkupOutputFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfreemarker/core/MarkupOutputFormat;->getMarkupString(Lfreemarker/core/TemplateMarkupOutputModel;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->doesHtmlOrXmlStartWithDot(Ljava/lang/String;)Z

    move-result p1

    goto :goto_18

    :cond_17
    const/4 p1, 0x1

    :goto_18
    return p1
.end method

.method protected getTerminatorRemovesDots(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 380
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "\u2026"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method public getWordBoundaryMinLength()D
    .registers 3

    .line 341
    iget-wide v0, p0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->wordBoundaryMinLength:D

    return-wide v0
.end method

.method public truncate(Ljava/lang/String;ILfreemarker/template/TemplateScalarModel;Ljava/lang/Integer;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateScalarModel;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 237
    sget-object v5, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;->AUTO:Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->unifiedTruncate(Ljava/lang/String;ILfreemarker/template/TemplateModel;Ljava/lang/Integer;Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;Z)Lfreemarker/template/TemplateModel;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateScalarModel;

    return-object p1
.end method

.method public truncateC(Ljava/lang/String;ILfreemarker/template/TemplateScalarModel;Ljava/lang/Integer;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateScalarModel;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 257
    sget-object v5, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;->CHAR_BOUNDARY:Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->unifiedTruncate(Ljava/lang/String;ILfreemarker/template/TemplateModel;Ljava/lang/Integer;Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;Z)Lfreemarker/template/TemplateModel;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateScalarModel;

    return-object p1
.end method

.method public truncateCM(Ljava/lang/String;ILfreemarker/template/TemplateModel;Ljava/lang/Integer;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 287
    sget-object v5, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;->CHAR_BOUNDARY:Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->unifiedTruncate(Ljava/lang/String;ILfreemarker/template/TemplateModel;Ljava/lang/Integer;Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;Z)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public truncateM(Ljava/lang/String;ILfreemarker/template/TemplateModel;Ljava/lang/Integer;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 267
    sget-object v5, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;->AUTO:Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->unifiedTruncate(Ljava/lang/String;ILfreemarker/template/TemplateModel;Ljava/lang/Integer;Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;Z)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public truncateW(Ljava/lang/String;ILfreemarker/template/TemplateScalarModel;Ljava/lang/Integer;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateScalarModel;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 247
    sget-object v5, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;->WORD_BOUNDARY:Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->unifiedTruncate(Ljava/lang/String;ILfreemarker/template/TemplateModel;Ljava/lang/Integer;Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;Z)Lfreemarker/template/TemplateModel;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateScalarModel;

    return-object p1
.end method

.method public truncateWM(Ljava/lang/String;ILfreemarker/template/TemplateModel;Ljava/lang/Integer;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 277
    sget-object v5, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;->WORD_BOUNDARY:Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->unifiedTruncate(Ljava/lang/String;ILfreemarker/template/TemplateModel;Ljava/lang/Integer;Lfreemarker/core/DefaultTruncateBuiltinAlgorithm$TruncationMode;Z)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

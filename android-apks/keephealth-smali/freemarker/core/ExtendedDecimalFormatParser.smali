.class Lfreemarker/core/ExtendedDecimalFormatParser;
.super Ljava/lang/Object;
.source "ExtendedDecimalFormatParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/ExtendedDecimalFormatParser$InvalidParameterValueException;,
        Lfreemarker/core/ExtendedDecimalFormatParser$ParameterHandler;
    }
.end annotation


# static fields
.field private static final MAX_QUOTATION_LENGTH:I = 0xa

.field private static final PARAM_CURRENCY_CODE:Ljava/lang/String; = "currencyCode"

.field private static final PARAM_CURRENCY_SYMBOL:Ljava/lang/String; = "currencySymbol"

.field private static final PARAM_DECIMAL_SEPARATOR:Ljava/lang/String; = "decimalSeparator"

.field private static final PARAM_EXPONENT_SEPARATOR:Ljava/lang/String; = "exponentSeparator"

.field private static final PARAM_GROUP_SEPARATOR:Ljava/lang/String; = "groupingSeparator"

.field private static final PARAM_HANDLERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "+",
            "Lfreemarker/core/ExtendedDecimalFormatParser$ParameterHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARAM_INFINITY:Ljava/lang/String; = "infinity"

.field private static final PARAM_MINUS_SIGN:Ljava/lang/String; = "minusSign"

.field private static final PARAM_MONETARY_DECIMAL_SEPARATOR:Ljava/lang/String; = "monetaryDecimalSeparator"

.field private static final PARAM_MULTIPIER:Ljava/lang/String; = "multipier"

.field private static final PARAM_MULTIPLIER:Ljava/lang/String; = "multiplier"

.field private static final PARAM_NAN:Ljava/lang/String; = "nan"

.field private static final PARAM_PERCENT:Ljava/lang/String; = "percent"

.field private static final PARAM_PER_MILL:Ljava/lang/String; = "perMill"

.field private static final PARAM_ROUNDING_MODE:Ljava/lang/String; = "roundingMode"

.field private static final PARAM_VALUE_RND_CEILING:Ljava/lang/String; = "ceiling"

.field private static final PARAM_VALUE_RND_DOWN:Ljava/lang/String; = "down"

.field private static final PARAM_VALUE_RND_FLOOR:Ljava/lang/String; = "floor"

.field private static final PARAM_VALUE_RND_HALF_DOWN:Ljava/lang/String; = "halfDown"

.field private static final PARAM_VALUE_RND_HALF_EVEN:Ljava/lang/String; = "halfEven"

.field private static final PARAM_VALUE_RND_HALF_UP:Ljava/lang/String; = "halfUp"

.field private static final PARAM_VALUE_RND_UNNECESSARY:Ljava/lang/String; = "unnecessary"

.field private static final PARAM_VALUE_RND_UP:Ljava/lang/String; = "up"

.field private static final PARAM_ZERO_DIGIT:Ljava/lang/String; = "zeroDigit"

.field private static final SNIP_MARK:Ljava/lang/String; = "[...]"


# instance fields
.field private multiplier:Ljava/lang/Integer;

.field private pos:I

.field private roundingMode:Ljava/math/RoundingMode;

.field private final src:Ljava/lang/String;

.field private final symbols:Ljava/text/DecimalFormatSymbols;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    new-instance v1, Lfreemarker/core/ExtendedDecimalFormatParser$1;

    invoke-direct {v1}, Lfreemarker/core/ExtendedDecimalFormatParser$1;-><init>()V

    const-string v2, "roundingMode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v1, Lfreemarker/core/ExtendedDecimalFormatParser$2;

    invoke-direct {v1}, Lfreemarker/core/ExtendedDecimalFormatParser$2;-><init>()V

    .line 107
    const-string v2, "multiplier"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v2, "multipier"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v1, Lfreemarker/core/ExtendedDecimalFormatParser$3;

    invoke-direct {v1}, Lfreemarker/core/ExtendedDecimalFormatParser$3;-><init>()V

    const-string v2, "decimalSeparator"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v1, Lfreemarker/core/ExtendedDecimalFormatParser$4;

    invoke-direct {v1}, Lfreemarker/core/ExtendedDecimalFormatParser$4;-><init>()V

    const-string v2, "monetaryDecimalSeparator"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v1, Lfreemarker/core/ExtendedDecimalFormatParser$5;

    invoke-direct {v1}, Lfreemarker/core/ExtendedDecimalFormatParser$5;-><init>()V

    const-string v2, "groupingSeparator"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v1, Lfreemarker/core/ExtendedDecimalFormatParser$6;

    invoke-direct {v1}, Lfreemarker/core/ExtendedDecimalFormatParser$6;-><init>()V

    const-string v2, "exponentSeparator"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v1, Lfreemarker/core/ExtendedDecimalFormatParser$7;

    invoke-direct {v1}, Lfreemarker/core/ExtendedDecimalFormatParser$7;-><init>()V

    const-string v2, "minusSign"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v1, Lfreemarker/core/ExtendedDecimalFormatParser$8;

    invoke-direct {v1}, Lfreemarker/core/ExtendedDecimalFormatParser$8;-><init>()V

    const-string v2, "infinity"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    new-instance v1, Lfreemarker/core/ExtendedDecimalFormatParser$9;

    invoke-direct {v1}, Lfreemarker/core/ExtendedDecimalFormatParser$9;-><init>()V

    const-string v2, "nan"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    new-instance v1, Lfreemarker/core/ExtendedDecimalFormatParser$10;

    invoke-direct {v1}, Lfreemarker/core/ExtendedDecimalFormatParser$10;-><init>()V

    const-string v2, "percent"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-instance v1, Lfreemarker/core/ExtendedDecimalFormatParser$11;

    invoke-direct {v1}, Lfreemarker/core/ExtendedDecimalFormatParser$11;-><init>()V

    const-string v2, "perMill"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    new-instance v1, Lfreemarker/core/ExtendedDecimalFormatParser$12;

    invoke-direct {v1}, Lfreemarker/core/ExtendedDecimalFormatParser$12;-><init>()V

    const-string v2, "zeroDigit"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v1, Lfreemarker/core/ExtendedDecimalFormatParser$13;

    invoke-direct {v1}, Lfreemarker/core/ExtendedDecimalFormatParser$13;-><init>()V

    const-string v2, "currencyCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sput-object v0, Lfreemarker/core/ExtendedDecimalFormatParser;->PARAM_HANDLERS:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 4

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 213
    iput v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    .line 481
    iput-object p1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->src:Ljava/lang/String;

    .line 482
    new-instance p1, Ljava/text/DecimalFormatSymbols;

    invoke-direct {p1, p2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object p1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->symbols:Ljava/text/DecimalFormatSymbols;

    return-void
.end method

.method static synthetic access$002(Lfreemarker/core/ExtendedDecimalFormatParser;Ljava/math/RoundingMode;)Ljava/math/RoundingMode;
    .registers 2

    .line 33
    iput-object p1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->roundingMode:Ljava/math/RoundingMode;

    return-object p1
.end method

.method static synthetic access$102(Lfreemarker/core/ExtendedDecimalFormatParser;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    .line 33
    iput-object p1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->multiplier:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$200(Lfreemarker/core/ExtendedDecimalFormatParser;)Ljava/text/DecimalFormatSymbols;
    .registers 1

    .line 33
    iget-object p0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->symbols:Ljava/text/DecimalFormatSymbols;

    return-object p0
.end method

.method private fetchChar(C)Z
    .registers 4

    .line 355
    iget v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    iget-object v1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->src:Ljava/lang/String;

    iget v1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_1b

    .line 356
    iget p1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    return v0

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method private fetchName()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->src:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 369
    iget v1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    const/4 v2, 0x1

    move v3, v2

    .line 371
    :goto_a
    iget v4, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    if-ge v4, v0, :cond_2c

    .line 372
    iget-object v5, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->src:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eqz v3, :cond_1f

    .line 374
    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v4

    if-nez v4, :cond_1d

    goto :goto_2c

    :cond_1d
    const/4 v3, 0x0

    goto :goto_26

    .line 378
    :cond_1f
    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-nez v4, :cond_26

    goto :goto_2c

    .line 381
    :cond_26
    :goto_26
    iget v4, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    add-int/2addr v4, v2

    iput v4, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    goto :goto_a

    :cond_2c
    :goto_2c
    if-nez v3, :cond_37

    .line 383
    iget-object v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->src:Ljava/lang/String;

    iget v2, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    :goto_38
    return-object v0
.end method

.method private fetchStandardPattern()Ljava/lang/String;
    .registers 10

    .line 433
    iget v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    .line 434
    iget-object v1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_b
    const/16 v5, 0x3b

    const/4 v6, 0x2

    if-ge v0, v1, :cond_39

    .line 438
    iget-object v7, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->src:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v5, :cond_20

    if-nez v3, :cond_20

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v6, :cond_37

    goto :goto_39

    :cond_20
    const/16 v5, 0x27

    if-ne v7, v5, :cond_37

    if-eqz v3, :cond_36

    add-int/lit8 v6, v0, 0x1

    if-ge v6, v1, :cond_34

    .line 446
    iget-object v7, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->src:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v5, :cond_34

    move v0, v6

    goto :goto_37

    :cond_34
    move v3, v2

    goto :goto_37

    :cond_36
    move v3, v8

    :cond_37
    :goto_37
    add-int/2addr v0, v8

    goto :goto_b

    :cond_39
    :goto_39
    if-ge v4, v6, :cond_3e

    .line 462
    iget-object v2, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->src:Ljava/lang/String;

    goto :goto_52

    .line 465
    :cond_3e
    iget-object v3, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->src:Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_4b

    add-int/lit8 v3, v0, -0x1

    goto :goto_4c

    :cond_4b
    move v3, v0

    .line 469
    :goto_4c
    iget-object v4, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->src:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_52
    if-ge v0, v1, :cond_56

    add-int/lit8 v0, v0, 0x1

    .line 475
    :cond_56
    iput v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    return-object v2
.end method

.method private fetchValue()Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->src:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 388
    iget v1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    const/4 v2, 0x0

    move v3, v2

    .line 391
    :goto_a
    iget v4, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    const-string v5, "The "

    if-ge v4, v0, :cond_80

    .line 392
    iget-object v6, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->src:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x27

    const/4 v7, 0x1

    if-eq v4, v6, :cond_29

    const/16 v6, 0x22

    if-ne v4, v6, :cond_20

    goto :goto_29

    :cond_20
    if-nez v2, :cond_7a

    .line 413
    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-nez v4, :cond_7a

    goto :goto_80

    :cond_29
    :goto_29
    if-nez v2, :cond_4c

    .line 395
    iget v2, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    if-ne v1, v2, :cond_31

    move v2, v4

    goto :goto_7a

    .line 396
    :cond_31
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " character can only be used for quoting values, but it was in the middle of an non-quoted value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_4c
    if-ne v4, v2, :cond_7a

    .line 403
    iget v4, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    add-int/lit8 v5, v4, 0x1

    if-ge v5, v0, :cond_65

    iget-object v5, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->src:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_65

    .line 404
    iget v3, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    add-int/2addr v3, v7

    iput v3, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    move v3, v7

    goto :goto_7a

    .line 407
    :cond_65
    iget-object v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->src:Ljava/lang/String;

    add-int/2addr v1, v7

    iget v4, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 408
    iget v1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    add-int/2addr v1, v7

    iput v1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    if-eqz v3, :cond_79

    .line 409
    invoke-direct {p0, v0, v2}, Lfreemarker/core/ExtendedDecimalFormatParser;->unescape(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    :cond_79
    return-object v0

    .line 417
    :cond_7a
    :goto_7a
    iget v4, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    add-int/2addr v4, v7

    iput v4, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    goto :goto_a

    :cond_80
    :goto_80
    if-nez v2, :cond_8f

    .line 425
    iget v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    if-ne v1, v0, :cond_88

    const/4 v0, 0x0

    goto :goto_8e

    :cond_88
    iget-object v2, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->src:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_8e
    return-object v0

    .line 420
    :cond_8f
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " quotation wasn\'t closed when the end of the source was reached."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private isWS(C)Z
    .registers 3

    const/16 v0, 0x20

    if-eq p1, v0, :cond_17

    const/16 v0, 0x9

    if-eq p1, v0, :cond_17

    const/16 v0, 0xd

    if-eq p1, v0, :cond_17

    const/16 v0, 0xa

    if-eq p1, v0, :cond_17

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p1, 0x1

    :goto_18
    return p1
.end method

.method private newExpectedSgParseException(Ljava/lang/String;)Ljava/text/ParseException;
    .registers 6

    .line 489
    iget-object v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->src:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_19

    .line 490
    iget-object v1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->src:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_19

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_19
    add-int/lit8 v0, v0, 0x1

    .line 495
    iget v1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    if-ge v1, v0, :cond_48

    add-int/lit8 v2, v1, 0xa

    if-lt v2, v0, :cond_2a

    .line 498
    iget-object v2, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->src:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    .line 500
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->src:Ljava/lang/String;

    iget v3, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[...]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_48
    const/4 v0, 0x0

    .line 506
    :goto_49
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected a(n) "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " at position "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v2, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " (0-based), but "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez v0, :cond_6d

    const-string v0, "reached the end of the input."

    goto :goto_7c

    :cond_6d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    invoke-direct {v1, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method private newInvalidParameterValueException(Ljava/lang/String;Ljava/lang/String;ILfreemarker/core/ExtendedDecimalFormatParser$InvalidParameterValueException;)Ljava/text/ParseException;
    .registers 7

    .line 325
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    invoke-static {p2}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " is an invalid value for the \""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\" parameter: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 327
    # getter for: Lfreemarker/core/ExtendedDecimalFormatParser$InvalidParameterValueException;->message:Ljava/lang/String;
    invoke-static {p4}, Lfreemarker/core/ExtendedDecimalFormatParser$InvalidParameterValueException;->access$300(Lfreemarker/core/ExtendedDecimalFormatParser$InvalidParameterValueException;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private newUnknownParameterException(Ljava/lang/String;I)Ljava/text/ParseException;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 333
    const-string v1, "Unsupported parameter name, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string p1, ". The supported names are: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    sget-object p1, Lfreemarker/core/ExtendedDecimalFormatParser;->PARAM_HANDLERS:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 336
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 337
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 338
    :goto_2f
    array-length v2, p1

    if-ge v1, v2, :cond_41

    if-eqz v1, :cond_39

    .line 340
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    :cond_39
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 344
    :cond_41
    new-instance p1, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    return-object p1
.end method

.method private parse()Ljava/text/DecimalFormat;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 224
    invoke-direct {p0}, Lfreemarker/core/ExtendedDecimalFormatParser;->fetchStandardPattern()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-direct {p0}, Lfreemarker/core/ExtendedDecimalFormatParser;->skipWS()V

    .line 226
    invoke-direct {p0}, Lfreemarker/core/ExtendedDecimalFormatParser;->parseFormatStringExtension()V

    const/4 v1, 0x0

    .line 230
    :try_start_b
    new-instance v2, Ljava/text/DecimalFormat;

    iget-object v3, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-direct {v2, v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_12} :catch_36

    .line 243
    iget-object v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->roundingMode:Ljava/math/RoundingMode;

    if-eqz v0, :cond_2a

    .line 244
    sget-object v0, Lfreemarker/core/_JavaVersions;->JAVA_6:Lfreemarker/core/_Java6;

    if-eqz v0, :cond_22

    .line 247
    sget-object v0, Lfreemarker/core/_JavaVersions;->JAVA_6:Lfreemarker/core/_Java6;

    iget-object v1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->roundingMode:Ljava/math/RoundingMode;

    invoke-interface {v0, v2, v1}, Lfreemarker/core/_Java6;->setRoundingMode(Ljava/text/DecimalFormat;Ljava/math/RoundingMode;)V

    goto :goto_2a

    .line 245
    :cond_22
    new-instance v0, Ljava/text/ParseException;

    const-string v2, "Setting rounding mode needs Java 6 or later"

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 250
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->multiplier:Ljava/lang/Integer;

    if-eqz v0, :cond_35

    .line 251
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/text/DecimalFormat;->setMultiplier(I)V

    :cond_35
    return-object v2

    :catch_36
    move-exception v0

    .line 232
    new-instance v2, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 233
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 235
    :try_start_46
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4d} :catch_4d

    .line 240
    :catch_4d
    :cond_4d
    throw v2
.end method

.method static parse(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/DecimalFormat;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 220
    new-instance v0, Lfreemarker/core/ExtendedDecimalFormatParser;

    invoke-direct {v0, p0, p1}, Lfreemarker/core/ExtendedDecimalFormatParser;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-direct {v0}, Lfreemarker/core/ExtendedDecimalFormatParser;->parse()Ljava/text/DecimalFormat;

    move-result-object p0

    return-object p0
.end method

.method private parseFormatStringExtension()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->src:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 260
    iget v1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    if-ne v1, v0, :cond_b

    return-void

    :cond_b
    const/4 v1, 0x0

    .line 266
    :goto_c
    iget v2, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    .line 267
    invoke-direct {p0}, Lfreemarker/core/ExtendedDecimalFormatParser;->fetchName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_81

    .line 272
    invoke-direct {p0}, Lfreemarker/core/ExtendedDecimalFormatParser;->skipWS()V

    const/16 v4, 0x3d

    .line 274
    invoke-direct {p0, v4}, Lfreemarker/core/ExtendedDecimalFormatParser;->fetchChar(C)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 278
    invoke-direct {p0}, Lfreemarker/core/ExtendedDecimalFormatParser;->skipWS()V

    .line 280
    iget v4, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    .line 281
    invoke-direct {p0}, Lfreemarker/core/ExtendedDecimalFormatParser;->fetchValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_73

    .line 285
    iget v6, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    .line 287
    sget-object v7, Lfreemarker/core/ExtendedDecimalFormatParser;->PARAM_HANDLERS:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfreemarker/core/ExtendedDecimalFormatParser$ParameterHandler;

    if-nez v7, :cond_45

    .line 289
    const-string v1, "currencySymbol"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    move-object v1, v5

    goto :goto_48

    .line 292
    :cond_40
    invoke-direct {p0, v3, v2}, Lfreemarker/core/ExtendedDecimalFormatParser;->newUnknownParameterException(Ljava/lang/String;I)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 296
    :cond_45
    :try_start_45
    invoke-interface {v7, p0, v5}, Lfreemarker/core/ExtendedDecimalFormatParser$ParameterHandler;->handle(Lfreemarker/core/ExtendedDecimalFormatParser;Ljava/lang/String;)V
    :try_end_48
    .catch Lfreemarker/core/ExtendedDecimalFormatParser$InvalidParameterValueException; {:try_start_45 .. :try_end_48} :catch_6d

    .line 302
    :goto_48
    invoke-direct {p0}, Lfreemarker/core/ExtendedDecimalFormatParser;->skipWS()V

    const/16 v2, 0x2c

    .line 305
    invoke-direct {p0, v2}, Lfreemarker/core/ExtendedDecimalFormatParser;->fetchChar(C)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 306
    invoke-direct {p0}, Lfreemarker/core/ExtendedDecimalFormatParser;->skipWS()V

    goto :goto_c

    .line 308
    :cond_57
    iget v2, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    if-ne v2, v0, :cond_63

    if-eqz v1, :cond_62

    .line 319
    iget-object v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    :cond_62
    return-void

    :cond_63
    if-eq v2, v6, :cond_66

    goto :goto_c

    .line 312
    :cond_66
    const-string v0, "parameter separator whitespace or comma"

    invoke-direct {p0, v0}, Lfreemarker/core/ExtendedDecimalFormatParser;->newExpectedSgParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :catch_6d
    move-exception v0

    .line 298
    invoke-direct {p0, v3, v5, v4, v0}, Lfreemarker/core/ExtendedDecimalFormatParser;->newInvalidParameterValueException(Ljava/lang/String;Ljava/lang/String;ILfreemarker/core/ExtendedDecimalFormatParser$InvalidParameterValueException;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 283
    :cond_73
    const-string v0, "value"

    invoke-direct {p0, v0}, Lfreemarker/core/ExtendedDecimalFormatParser;->newExpectedSgParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 275
    :cond_7a
    const-string v0, "\"=\""

    invoke-direct {p0, v0}, Lfreemarker/core/ExtendedDecimalFormatParser;->newExpectedSgParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 269
    :cond_81
    const-string v0, "name"

    invoke-direct {p0, v0}, Lfreemarker/core/ExtendedDecimalFormatParser;->newExpectedSgParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0
.end method

.method private skipWS()V
    .registers 4

    .line 348
    iget-object v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->src:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 349
    :goto_6
    iget v1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    if-ge v1, v0, :cond_1d

    iget-object v2, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->src:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lfreemarker/core/ExtendedDecimalFormatParser;->isWS(C)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 350
    iget v1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->pos:I

    goto :goto_6

    :cond_1d
    return-void
.end method

.method private unescape(Ljava/lang/String;C)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x27

    if-ne p2, v0, :cond_9

    .line 429
    const-string p2, "\'\'"

    const-string v0, "\'"

    goto :goto_d

    :cond_9
    const-string p2, "\"\""

    const-string v0, "\""

    :goto_d
    invoke-static {p1, p2, v0}, Lfreemarker/template/utility/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

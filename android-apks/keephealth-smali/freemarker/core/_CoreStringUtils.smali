.class public final Lfreemarker/core/_CoreStringUtils;
.super Ljava/lang/Object;
.source "_CoreStringUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static backslashEscapeIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 70
    const-string v0, "-"

    const-string v1, "\\-"

    invoke-static {p0, v0, v1}, Lfreemarker/template/utility/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    const-string v1, "\\."

    invoke-static {p0, v0, v1}, Lfreemarker/template/utility/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    const-string v1, "\\:"

    invoke-static {p0, v0, v1}, Lfreemarker/template/utility/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static camelCaseToUnderscored(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 98
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_15

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-eqz v2, :cond_15

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 101
    :cond_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_1c

    return-object p0

    .line 106
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :goto_28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_4b

    .line 109
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 110
    invoke-static {v0}, Lfreemarker/core/_CoreStringUtils;->isUpperUSASCII(C)Z

    move-result v3

    if-eqz v3, :cond_45

    const/16 v3, 0x5f

    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 114
    :cond_45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 118
    :cond_4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIdentifierNamingConvention(Ljava/lang/String;)I
    .registers 5

    .line 78
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1e

    .line 80
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5f

    if-ne v2, v3, :cond_12

    const/16 p0, 0xb

    return p0

    .line 84
    :cond_12
    invoke-static {v2}, Lfreemarker/core/_CoreStringUtils;->isUpperUSASCII(C)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/16 p0, 0xc

    return p0

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1e
    const/16 p0, 0xa

    return p0
.end method

.method public static isUpperUSASCII(C)Z
    .registers 2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_a

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static toFTLIdentifierReferenceAfterDot(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 37
    invoke-static {p0}, Lfreemarker/core/_CoreStringUtils;->backslashEscapeIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toFTLTopLevelIdentifierReference(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 41
    invoke-static {p0}, Lfreemarker/core/_CoreStringUtils;->backslashEscapeIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toFTLTopLevelTragetIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 46
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x22

    const/16 v4, 0x5c

    if-ge v0, v2, :cond_3a

    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-nez v0, :cond_19

    .line 48
    invoke-static {v2}, Lfreemarker/template/utility/StringUtil;->isFTLIdentifierStart(C)Z

    move-result v5

    if-eqz v5, :cond_1f

    goto :goto_37

    :cond_19
    invoke-static {v2}, Lfreemarker/template/utility/StringUtil;->isFTLIdentifierPart(C)Z

    move-result v5

    if-nez v5, :cond_37

    :cond_1f
    const/16 v5, 0x40

    if-eq v2, v5, :cond_37

    if-eqz v1, :cond_27

    if-ne v1, v4, :cond_34

    :cond_27
    const/16 v1, 0x2d

    if-eq v2, v1, :cond_36

    const/16 v1, 0x2e

    if-eq v2, v1, :cond_36

    const/16 v1, 0x3a

    if-ne v2, v1, :cond_34

    goto :goto_36

    :cond_34
    move v1, v3

    goto :goto_3a

    :cond_36
    :goto_36
    move v1, v4

    :cond_37
    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3a
    :goto_3a
    if-eqz v1, :cond_4f

    if-eq v1, v3, :cond_4b

    if-ne v1, v4, :cond_45

    .line 63
    invoke-static {p0}, Lfreemarker/core/_CoreStringUtils;->backslashEscapeIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 65
    :cond_45
    new-instance p0, Lfreemarker/core/BugException;

    invoke-direct {p0}, Lfreemarker/core/BugException;-><init>()V

    throw p0

    .line 61
    :cond_4b
    invoke-static {p0}, Lfreemarker/template/utility/StringUtil;->ftlQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_4f
    return-object p0
.end method

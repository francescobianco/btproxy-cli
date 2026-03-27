.class public final Lfreemarker/core/TextBlock;
.super Lfreemarker/core/TemplateElement;
.source "TextBlock.java"


# instance fields
.field private text:[C

.field private final unparsed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lfreemarker/core/TextBlock;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lfreemarker/core/TextBlock;-><init>([CZ)V

    return-void
.end method

.method constructor <init>([CZ)V
    .registers 3

    .line 50
    invoke-direct {p0}, Lfreemarker/core/TemplateElement;-><init>()V

    .line 51
    iput-object p1, p0, Lfreemarker/core/TextBlock;->text:[C

    .line 52
    iput-boolean p2, p0, Lfreemarker/core/TextBlock;->unparsed:Z

    return-void
.end method

.method private static concat([C[C)[C
    .registers 5

    .line 394
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [C

    .line 395
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private deliberateLeftTrim()Z
    .registers 8

    .line 145
    invoke-virtual {p0}, Lfreemarker/core/TextBlock;->nextTerminalNode()Lfreemarker/core/TemplateElement;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-eqz v0, :cond_62

    .line 146
    iget v3, v0, Lfreemarker/core/TemplateElement;->beginLine:I

    iget v4, p0, Lfreemarker/core/TextBlock;->endLine:I

    if-ne v3, v4, :cond_62

    .line 148
    instance-of v3, v0, Lfreemarker/core/TrimInstruction;

    if-eqz v3, :cond_5d

    .line 149
    move-object v3, v0

    check-cast v3, Lfreemarker/core/TrimInstruction;

    .line 150
    iget-boolean v4, v3, Lfreemarker/core/TrimInstruction;->left:Z

    const/4 v5, 0x1

    if-nez v4, :cond_1f

    iget-boolean v4, v3, Lfreemarker/core/TrimInstruction;->right:Z

    if-nez v4, :cond_1f

    move v2, v5

    .line 153
    :cond_1f
    iget-boolean v3, v3, Lfreemarker/core/TrimInstruction;->left:Z

    if-eqz v3, :cond_5d

    .line 155
    invoke-direct {p0}, Lfreemarker/core/TextBlock;->lastNewLineIndex()I

    move-result v2

    if-gez v2, :cond_2d

    .line 156
    iget v3, p0, Lfreemarker/core/TextBlock;->beginColumn:I

    if-ne v3, v5, :cond_5c

    .line 157
    :cond_2d
    iget-object v3, p0, Lfreemarker/core/TextBlock;->text:[C

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v1, v2}, Lfreemarker/core/TextBlock;->substring([CII)[C

    move-result-object v3

    .line 158
    iget-object v4, p0, Lfreemarker/core/TextBlock;->text:[C

    invoke-static {v4, v2}, Lfreemarker/core/TextBlock;->substring([CI)[C

    move-result-object v2

    .line 159
    invoke-static {v2}, Lfreemarker/template/utility/StringUtil;->isTrimmableToEmpty([C)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 160
    iput-object v3, p0, Lfreemarker/core/TextBlock;->text:[C

    .line 161
    iput v1, p0, Lfreemarker/core/TextBlock;->endColumn:I

    goto :goto_5c

    :cond_46
    move v4, v1

    .line 164
    :goto_47
    aget-char v6, v2, v4

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_52

    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 167
    :cond_52
    invoke-static {v2, v4}, Lfreemarker/core/TextBlock;->substring([CI)[C

    move-result-object v2

    .line 168
    invoke-static {v3, v2}, Lfreemarker/core/TextBlock;->concat([C[C)[C

    move-result-object v2

    iput-object v2, p0, Lfreemarker/core/TextBlock;->text:[C

    :cond_5c
    :goto_5c
    move v2, v5

    .line 147
    :cond_5d
    invoke-virtual {v0}, Lfreemarker/core/TemplateElement;->nextTerminalNode()Lfreemarker/core/TemplateElement;

    move-result-object v0

    goto :goto_6

    :cond_62
    return v2
.end method

.method private deliberateRightTrim()Z
    .registers 10

    .line 183
    invoke-virtual {p0}, Lfreemarker/core/TextBlock;->prevTerminalNode()Lfreemarker/core/TemplateElement;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-eqz v0, :cond_ad

    .line 184
    iget v3, v0, Lfreemarker/core/TemplateElement;->endLine:I

    iget v4, p0, Lfreemarker/core/TextBlock;->beginLine:I

    if-ne v3, v4, :cond_ad

    .line 186
    instance-of v3, v0, Lfreemarker/core/TrimInstruction;

    if-eqz v3, :cond_a7

    .line 187
    move-object v3, v0

    check-cast v3, Lfreemarker/core/TrimInstruction;

    .line 188
    iget-boolean v4, v3, Lfreemarker/core/TrimInstruction;->left:Z

    const/4 v5, 0x1

    if-nez v4, :cond_1f

    iget-boolean v4, v3, Lfreemarker/core/TrimInstruction;->right:Z

    if-nez v4, :cond_1f

    move v2, v5

    .line 191
    :cond_1f
    iget-boolean v3, v3, Lfreemarker/core/TrimInstruction;->right:Z

    if-eqz v3, :cond_a7

    .line 193
    invoke-direct {p0}, Lfreemarker/core/TextBlock;->firstNewLineIndex()I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_2c

    return v1

    .line 197
    :cond_2c
    iget-object v4, p0, Lfreemarker/core/TextBlock;->text:[C

    array-length v6, v4

    if-le v6, v3, :cond_3f

    aget-char v6, v4, v2

    const/16 v7, 0xd

    if-ne v6, v7, :cond_3f

    aget-char v6, v4, v3

    const/16 v7, 0xa

    if-ne v6, v7, :cond_3f

    add-int/lit8 v3, v2, 0x2

    .line 202
    :cond_3f
    invoke-static {v4, v3}, Lfreemarker/core/TextBlock;->substring([CI)[C

    move-result-object v2

    .line 203
    iget-object v4, p0, Lfreemarker/core/TextBlock;->text:[C

    invoke-static {v4, v1, v3}, Lfreemarker/core/TextBlock;->substring([CII)[C

    move-result-object v3

    .line 204
    invoke-static {v3}, Lfreemarker/template/utility/StringUtil;->isTrimmableToEmpty([C)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 205
    iput-object v2, p0, Lfreemarker/core/TextBlock;->text:[C

    .line 206
    iget v2, p0, Lfreemarker/core/TextBlock;->beginLine:I

    add-int/2addr v2, v5

    iput v2, p0, Lfreemarker/core/TextBlock;->beginLine:I

    .line 207
    iput v5, p0, Lfreemarker/core/TextBlock;->beginColumn:I

    goto :goto_a6

    .line 209
    :cond_59
    array-length v3, v3

    sub-int/2addr v3, v5

    .line 210
    :goto_5b
    iget-object v4, p0, Lfreemarker/core/TextBlock;->text:[C

    aget-char v4, v4, v3

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_68

    add-int/lit8 v3, v3, -0x1

    goto :goto_5b

    .line 213
    :cond_68
    iget-object v4, p0, Lfreemarker/core/TextBlock;->text:[C

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4, v1, v3}, Lfreemarker/core/TextBlock;->substring([CII)[C

    move-result-object v3

    .line 214
    invoke-static {v2}, Lfreemarker/template/utility/StringUtil;->isTrimmableToEmpty([C)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 217
    invoke-virtual {p0}, Lfreemarker/core/TextBlock;->nextTerminalNode()Lfreemarker/core/TemplateElement;

    move-result-object v4

    move v6, v5

    :goto_7b
    if-eqz v4, :cond_9c

    .line 218
    iget v7, v4, Lfreemarker/core/TemplateElement;->beginLine:I

    iget v8, p0, Lfreemarker/core/TextBlock;->endLine:I

    if-ne v7, v8, :cond_9c

    .line 220
    invoke-virtual {v4}, Lfreemarker/core/TemplateElement;->heedsOpeningWhitespace()Z

    move-result v7

    if-eqz v7, :cond_8a

    move v6, v1

    .line 223
    :cond_8a
    instance-of v7, v4, Lfreemarker/core/TrimInstruction;

    if-eqz v7, :cond_97

    move-object v7, v4

    check-cast v7, Lfreemarker/core/TrimInstruction;

    iget-boolean v7, v7, Lfreemarker/core/TrimInstruction;->left:Z

    if-eqz v7, :cond_97

    move v6, v5

    goto :goto_9c

    .line 219
    :cond_97
    invoke-virtual {v4}, Lfreemarker/core/TemplateElement;->nextTerminalNode()Lfreemarker/core/TemplateElement;

    move-result-object v4

    goto :goto_7b

    :cond_9c
    :goto_9c
    if-eqz v6, :cond_a0

    .line 228
    sget-object v2, Lfreemarker/template/utility/CollectionUtils;->EMPTY_CHAR_ARRAY:[C

    .line 230
    :cond_a0
    invoke-static {v3, v2}, Lfreemarker/core/TextBlock;->concat([C[C)[C

    move-result-object v2

    iput-object v2, p0, Lfreemarker/core/TextBlock;->text:[C

    :goto_a6
    move v2, v5

    .line 185
    :cond_a7
    invoke-virtual {v0}, Lfreemarker/core/TemplateElement;->prevTerminalNode()Lfreemarker/core/TemplateElement;

    move-result-object v0

    goto/16 :goto_6

    :cond_ad
    return v2
.end method

.method private firstNewLineIndex()I
    .registers 5

    .line 239
    iget-object v0, p0, Lfreemarker/core/TextBlock;->text:[C

    const/4 v1, 0x0

    .line 240
    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_15

    .line 241
    aget-char v2, v0, v1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_14

    const/16 v3, 0xa

    if-ne v2, v3, :cond_11

    goto :goto_14

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_14
    :goto_14
    return v1

    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method private isTopLevelTextIfParentIs(Lfreemarker/core/TemplateElement;)Z
    .registers 3

    if-eqz p1, :cond_f

    .line 370
    invoke-virtual {p1}, Lfreemarker/core/TemplateElement;->getParentElement()Lfreemarker/core/TemplateElement;

    move-result-object v0

    if-nez v0, :cond_d

    instance-of p1, p1, Lfreemarker/core/MixedContent;

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method private lastNewLineIndex()I
    .registers 5

    .line 250
    iget-object v0, p0, Lfreemarker/core/TextBlock;->text:[C

    .line 251
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_5
    if-ltz v1, :cond_16

    .line 252
    aget-char v2, v0, v1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_15

    const/16 v3, 0xa

    if-ne v2, v3, :cond_12

    goto :goto_15

    :cond_12
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_15
    :goto_15
    return v1

    :cond_16
    const/4 v0, -0x1

    return v0
.end method

.method private nonOutputtingType(Lfreemarker/core/TemplateElement;)Z
    .registers 3

    .line 375
    instance-of v0, p1, Lfreemarker/core/Macro;

    if-nez v0, :cond_1b

    instance-of v0, p1, Lfreemarker/core/Assignment;

    if-nez v0, :cond_1b

    instance-of v0, p1, Lfreemarker/core/AssignmentInstruction;

    if-nez v0, :cond_1b

    instance-of v0, p1, Lfreemarker/core/PropertySetting;

    if-nez v0, :cond_1b

    instance-of v0, p1, Lfreemarker/core/LibraryLoad;

    if-nez v0, :cond_1b

    instance-of p1, p1, Lfreemarker/core/Comment;

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    :goto_1c
    return p1
.end method

.method private openingCharsToStrip()I
    .registers 7

    .line 265
    invoke-direct {p0}, Lfreemarker/core/TextBlock;->firstNewLineIndex()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    .line 266
    iget v1, p0, Lfreemarker/core/TextBlock;->beginColumn:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    add-int/lit8 v1, v0, 0x1

    .line 270
    iget-object v3, p0, Lfreemarker/core/TextBlock;->text:[C

    array-length v4, v3

    if-le v4, v1, :cond_25

    if-lez v1, :cond_25

    .line 271
    aget-char v4, v3, v0

    const/16 v5, 0xd

    if-ne v4, v5, :cond_25

    aget-char v4, v3, v1

    const/16 v5, 0xa

    if-ne v4, v5, :cond_25

    add-int/lit8 v1, v0, 0x2

    .line 275
    :cond_25
    invoke-static {v3, v2, v1}, Lfreemarker/template/utility/StringUtil;->isTrimmableToEmpty([CII)Z

    move-result v0

    if-nez v0, :cond_2c

    return v2

    .line 280
    :cond_2c
    invoke-virtual {p0}, Lfreemarker/core/TextBlock;->prevTerminalNode()Lfreemarker/core/TemplateElement;

    move-result-object v0

    :goto_30
    if-eqz v0, :cond_44

    .line 281
    iget v3, v0, Lfreemarker/core/TemplateElement;->endLine:I

    iget v4, p0, Lfreemarker/core/TextBlock;->beginLine:I

    if-ne v3, v4, :cond_44

    .line 283
    invoke-virtual {v0}, Lfreemarker/core/TemplateElement;->heedsOpeningWhitespace()Z

    move-result v3

    if-eqz v3, :cond_3f

    return v2

    .line 282
    :cond_3f
    invoke-virtual {v0}, Lfreemarker/core/TemplateElement;->prevTerminalNode()Lfreemarker/core/TemplateElement;

    move-result-object v0

    goto :goto_30

    :cond_44
    return v1
.end method

.method private static substring([CI)[C
    .registers 3

    .line 390
    array-length v0, p0

    invoke-static {p0, p1, v0}, Lfreemarker/core/TextBlock;->substring([CII)[C

    move-result-object p0

    return-object p0
.end method

.method private static substring([CII)[C
    .registers 5

    sub-int/2addr p2, p1

    .line 384
    new-array v0, p2, [C

    const/4 v1, 0x0

    .line 385
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private trailingCharsToStrip()I
    .registers 6

    .line 295
    invoke-direct {p0}, Lfreemarker/core/TextBlock;->lastNewLineIndex()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_e

    .line 296
    iget v1, p0, Lfreemarker/core/TextBlock;->beginColumn:I

    if-eq v1, v2, :cond_e

    return v3

    .line 299
    :cond_e
    iget-object v1, p0, Lfreemarker/core/TextBlock;->text:[C

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Lfreemarker/template/utility/StringUtil;->isTrimmableToEmpty([CI)Z

    move-result v1

    if-nez v1, :cond_18

    return v3

    .line 304
    :cond_18
    invoke-virtual {p0}, Lfreemarker/core/TextBlock;->nextTerminalNode()Lfreemarker/core/TemplateElement;

    move-result-object v1

    :goto_1c
    if-eqz v1, :cond_30

    .line 305
    iget v2, v1, Lfreemarker/core/TemplateElement;->beginLine:I

    iget v4, p0, Lfreemarker/core/TextBlock;->endLine:I

    if-ne v2, v4, :cond_30

    .line 307
    invoke-virtual {v1}, Lfreemarker/core/TemplateElement;->heedsTrailingWhitespace()Z

    move-result v2

    if-eqz v2, :cond_2b

    return v3

    .line 306
    :cond_2b
    invoke-virtual {v1}, Lfreemarker/core/TemplateElement;->nextTerminalNode()Lfreemarker/core/TemplateElement;

    move-result-object v1

    goto :goto_1c

    .line 311
    :cond_30
    iget-object v1, p0, Lfreemarker/core/TextBlock;->text:[C

    array-length v1, v1

    sub-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public accept(Lfreemarker/core/Environment;)[Lfreemarker/core/TemplateElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getOut()Ljava/io/Writer;

    move-result-object p1

    iget-object v0, p0, Lfreemarker/core/TextBlock;->text:[C

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write([C)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected dump(Z)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_23

    .line 74
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lfreemarker/core/TextBlock;->text:[C

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    .line 75
    iget-boolean v0, p0, Lfreemarker/core/TextBlock;->unparsed:Z

    if-eqz v0, :cond_22

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<#noparse>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "</#noparse>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_22
    return-object p1

    .line 80
    :cond_23
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "text "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lfreemarker/core/TextBlock;->text:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 86
    const-string v0, "#text"

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 2

    if-nez p1, :cond_5

    .line 103
    sget-object p1, Lfreemarker/core/ParameterRole;->CONTENT:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 102
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_a

    .line 97
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lfreemarker/core/TextBlock;->text:[C

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    .line 96
    :cond_a
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method heedsOpeningWhitespace()Z
    .registers 6

    const/4 v0, 0x1

    .line 333
    invoke-virtual {p0, v0}, Lfreemarker/core/TextBlock;->isIgnorable(Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    return v2

    .line 336
    :cond_9
    iget-object v1, p0, Lfreemarker/core/TextBlock;->text:[C

    array-length v1, v1

    sub-int/2addr v1, v0

    :goto_d
    if-ltz v1, :cond_27

    .line 337
    iget-object v3, p0, Lfreemarker/core/TextBlock;->text:[C

    aget-char v3, v3, v1

    const/16 v4, 0xa

    if-eq v3, v4, :cond_26

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1c

    goto :goto_26

    .line 341
    :cond_1c
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_23

    return v0

    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_26
    :goto_26
    return v2

    :cond_27
    return v0
.end method

.method heedsTrailingWhitespace()Z
    .registers 6

    const/4 v0, 0x1

    .line 316
    invoke-virtual {p0, v0}, Lfreemarker/core/TextBlock;->isIgnorable(Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    return v2

    :cond_9
    move v1, v2

    .line 319
    :goto_a
    iget-object v3, p0, Lfreemarker/core/TextBlock;->text:[C

    array-length v4, v3

    if-ge v1, v4, :cond_25

    .line 320
    aget-char v3, v3, v1

    const/16 v4, 0xa

    if-eq v3, v4, :cond_24

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1a

    goto :goto_24

    .line 324
    :cond_1a
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_21

    return v0

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_24
    :goto_24
    return v2

    :cond_25
    return v0
.end method

.method isIgnorable(Z)Z
    .registers 6

    .line 350
    iget-object v0, p0, Lfreemarker/core/TextBlock;->text:[C

    const/4 v1, 0x1

    if-eqz v0, :cond_3b

    array-length v2, v0

    if-nez v2, :cond_9

    goto :goto_3b

    :cond_9
    const/4 v2, 0x0

    if-eqz p1, :cond_3a

    .line 354
    invoke-static {v0}, Lfreemarker/template/utility/StringUtil;->isTrimmableToEmpty([C)Z

    move-result p1

    if-nez p1, :cond_13

    return v2

    .line 357
    :cond_13
    invoke-virtual {p0}, Lfreemarker/core/TextBlock;->getParentElement()Lfreemarker/core/TemplateElement;

    move-result-object p1

    .line 358
    invoke-direct {p0, p1}, Lfreemarker/core/TextBlock;->isTopLevelTextIfParentIs(Lfreemarker/core/TemplateElement;)Z

    move-result p1

    .line 359
    invoke-virtual {p0}, Lfreemarker/core/TextBlock;->previousSibling()Lfreemarker/core/TemplateElement;

    move-result-object v0

    .line 360
    invoke-virtual {p0}, Lfreemarker/core/TextBlock;->nextSibling()Lfreemarker/core/TemplateElement;

    move-result-object v3

    if-nez v0, :cond_27

    if-nez p1, :cond_2d

    .line 361
    :cond_27
    invoke-direct {p0, v0}, Lfreemarker/core/TextBlock;->nonOutputtingType(Lfreemarker/core/TemplateElement;)Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_2d
    if-nez v3, :cond_31

    if-nez p1, :cond_39

    .line 362
    :cond_31
    invoke-direct {p0, v3}, Lfreemarker/core/TextBlock;->nonOutputtingType(Lfreemarker/core/TemplateElement;)Z

    move-result p1

    if-eqz p1, :cond_38

    goto :goto_39

    :cond_38
    move v1, v2

    :cond_39
    :goto_39
    return v1

    :cond_3a
    return v2

    :cond_3b
    :goto_3b
    return v1
.end method

.method isNestedBlockRepeater()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method isOutputCacheable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method postParseCleanup(Z)Lfreemarker/core/TemplateElement;
    .registers 6

    .line 108
    iget-object v0, p0, Lfreemarker/core/TextBlock;->text:[C

    array-length v0, v0

    if-nez v0, :cond_6

    return-object p0

    .line 110
    :cond_6
    invoke-direct {p0}, Lfreemarker/core/TextBlock;->deliberateLeftTrim()Z

    move-result v0

    .line 111
    invoke-direct {p0}, Lfreemarker/core/TextBlock;->deliberateRightTrim()Z

    move-result v1

    if-eqz p1, :cond_55

    .line 112
    iget-object p1, p0, Lfreemarker/core/TextBlock;->text:[C

    array-length p1, p1

    if-nez p1, :cond_16

    goto :goto_55

    .line 115
    :cond_16
    invoke-virtual {p0}, Lfreemarker/core/TextBlock;->getParentElement()Lfreemarker/core/TemplateElement;

    move-result-object p1

    .line 116
    invoke-direct {p0, p1}, Lfreemarker/core/TextBlock;->isTopLevelTextIfParentIs(Lfreemarker/core/TemplateElement;)Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Lfreemarker/core/TextBlock;->previousSibling()Lfreemarker/core/TemplateElement;

    move-result-object p1

    if-nez p1, :cond_27

    return-object p0

    :cond_27
    const/4 p1, 0x0

    if-nez v0, :cond_2f

    .line 120
    invoke-direct {p0}, Lfreemarker/core/TextBlock;->trailingCharsToStrip()I

    move-result v0

    goto :goto_30

    :cond_2f
    move v0, p1

    :goto_30
    if-nez v1, :cond_37

    .line 123
    invoke-direct {p0}, Lfreemarker/core/TextBlock;->openingCharsToStrip()I

    move-result v1

    goto :goto_38

    :cond_37
    move v1, p1

    :goto_38
    if-nez v1, :cond_3d

    if-nez v0, :cond_3d

    return-object p0

    .line 128
    :cond_3d
    iget-object v2, p0, Lfreemarker/core/TextBlock;->text:[C

    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-static {v2, v1, v3}, Lfreemarker/core/TextBlock;->substring([CII)[C

    move-result-object v2

    iput-object v2, p0, Lfreemarker/core/TextBlock;->text:[C

    if-lez v1, :cond_51

    .line 130
    iget v1, p0, Lfreemarker/core/TextBlock;->beginLine:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lfreemarker/core/TextBlock;->beginLine:I

    .line 131
    iput v2, p0, Lfreemarker/core/TextBlock;->beginColumn:I

    :cond_51
    if-lez v0, :cond_55

    .line 134
    iput p1, p0, Lfreemarker/core/TextBlock;->endColumn:I

    :cond_55
    :goto_55
    return-object p0
.end method

.method replaceText(Ljava/lang/String;)V
    .registers 2

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/TextBlock;->text:[C

    return-void
.end method

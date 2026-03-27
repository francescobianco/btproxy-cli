.class final Lfreemarker/cache/TemplateNameFormat$Default020400;
.super Lfreemarker/cache/TemplateNameFormat;
.source "TemplateNameFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/cache/TemplateNameFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Default020400"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 232
    invoke-direct {p0, v0}, Lfreemarker/cache/TemplateNameFormat;-><init>(Lfreemarker/cache/TemplateNameFormat$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/cache/TemplateNameFormat$1;)V
    .registers 2

    .line 232
    invoke-direct {p0}, Lfreemarker/cache/TemplateNameFormat$Default020400;-><init>()V

    return-void
.end method

.method private findSchemeSectionEnd(Ljava/lang/String;)I
    .registers 6

    .line 304
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_30

    add-int/lit8 v2, v0, -0x1

    const/16 v3, 0x2f

    .line 305
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    if-eq v2, v1, :cond_14

    goto :goto_30

    :cond_14
    add-int/lit8 v1, v0, 0x2

    .line 309
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2d

    add-int/lit8 v2, v0, 0x1

    .line 310
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2d

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v3, :cond_2d

    add-int/lit8 v0, v0, 0x3

    return v0

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_30
    :goto_30
    const/4 p1, 0x0

    return p1
.end method

.method private removeDotSteps(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 328
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    const/16 v1, 0x2e

    .line 330
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    if-gez v0, :cond_f

    return-object p1

    :cond_f
    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0x2f

    if-eqz v0, :cond_1c

    .line 336
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_1c

    goto :goto_51

    :cond_1c
    add-int/lit8 v3, v0, 0x1

    .line 342
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    if-ne v3, v4, :cond_30

    .line 354
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_51

    .line 344
    :cond_30
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_51

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_51
    :goto_51
    move v0, v1

    goto :goto_6
.end method

.method private removeRedundantSlashes(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 322
    :goto_0
    const-string v0, "//"

    const-string v1, "/"

    invoke-static {p1, v0, v1}, Lfreemarker/template/utility/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_16

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_15
    return-object v0

    :cond_16
    move-object p1, v0

    goto :goto_0
.end method

.method private removeRedundantStarSteps(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 427
    :goto_0
    const-string v0, "*/*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x2f

    if-ne v0, v1, :cond_c

    goto :goto_46

    :cond_c
    if-eqz v0, :cond_16

    add-int/lit8 v1, v0, -0x1

    .line 435
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_25

    :cond_16
    add-int/lit8 v1, v0, 0x3

    .line 436
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v1, v3, :cond_27

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_25

    goto :goto_27

    :cond_25
    move-object v0, p1

    goto :goto_43

    .line 437
    :cond_27
    :goto_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_43
    if-ne p1, v0, :cond_64

    move-object p1, v0

    .line 442
    :goto_46
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 443
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_58

    .line 444
    const-string p1, ""

    goto :goto_63

    .line 445
    :cond_58
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_63

    const/4 v0, 0x2

    .line 446
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_63
    :goto_63
    return-object p1

    :cond_64
    move-object p1, v0

    goto :goto_0
.end method

.method private resolveDotDotSteps(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/MalformedTemplateNameException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 365
    :goto_2
    const-string v2, ".."

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_b

    return-object p1

    :cond_b
    if-eqz v1, :cond_90

    add-int/lit8 v2, v1, -0x1

    .line 372
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_1a

    :cond_17
    add-int/lit8 v1, v1, 0x3

    goto :goto_2

    :cond_1a
    add-int/lit8 v2, v1, 0x2

    .line 380
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v2, v4, :cond_25

    move v2, v0

    goto :goto_2c

    .line 382
    :cond_25
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_17

    move v2, v5

    :goto_2c
    add-int/lit8 v4, v1, -0x2

    move v6, v0

    :goto_2f
    const/4 v7, -0x1

    if-eq v4, v7, :cond_8b

    .line 398
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v8

    const/16 v9, 0x2a

    if-ne v8, v7, :cond_48

    if-nez v4, :cond_5c

    .line 400
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v9, :cond_43

    goto :goto_5c

    .line 402
    :cond_43
    # invokes: Lfreemarker/cache/TemplateNameFormat;->newRootLeavingException(Ljava/lang/String;)Lfreemarker/template/MalformedTemplateNameException;
    invoke-static {p2}, Lfreemarker/cache/TemplateNameFormat;->access$400(Ljava/lang/String;)Lfreemarker/template/MalformedTemplateNameException;

    move-result-object p1

    throw p1

    :cond_48
    add-int/lit8 v4, v8, 0x1

    .line 406
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_5c

    add-int/lit8 v4, v8, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_5c

    add-int/lit8 v4, v8, -0x1

    move v6, v5

    goto :goto_2f

    .line 417
    :cond_5c
    :goto_5c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v8, 0x1

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v6, :cond_70

    const-string v5, "*/"

    goto :goto_72

    :cond_70
    const-string v5, ""

    :goto_72
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v2, :cond_7a

    const/4 v2, 0x3

    goto :goto_7b

    :cond_7a
    const/4 v2, 0x2

    :goto_7b
    add-int/2addr v1, v2

    .line 419
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move v1, v4

    goto/16 :goto_2

    .line 396
    :cond_8b
    # invokes: Lfreemarker/cache/TemplateNameFormat;->newRootLeavingException(Ljava/lang/String;)Lfreemarker/template/MalformedTemplateNameException;
    invoke-static {p2}, Lfreemarker/cache/TemplateNameFormat;->access$400(Ljava/lang/String;)Lfreemarker/template/MalformedTemplateNameException;

    move-result-object p1

    throw p1

    .line 371
    :cond_90
    # invokes: Lfreemarker/cache/TemplateNameFormat;->newRootLeavingException(Ljava/lang/String;)Lfreemarker/template/MalformedTemplateNameException;
    invoke-static {p2}, Lfreemarker/cache/TemplateNameFormat;->access$400(Ljava/lang/String;)Lfreemarker/template/MalformedTemplateNameException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method normalizeRootBasedName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/MalformedTemplateNameException;
        }
    .end annotation

    .line 263
    # invokes: Lfreemarker/cache/TemplateNameFormat;->checkNameHasNoNullCharacter(Ljava/lang/String;)V
    invoke-static {p1}, Lfreemarker/cache/TemplateNameFormat;->access$300(Ljava/lang/String;)V

    const/16 v0, 0x5c

    .line 265
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_54

    .line 275
    invoke-direct {p0, p1}, Lfreemarker/cache/TemplateNameFormat$Default020400;->findSchemeSectionEnd(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x0

    move-object v2, v0

    move-object v0, p1

    goto :goto_1f

    :cond_16
    const/4 v2, 0x0

    .line 280
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1f
    const/16 v3, 0x3a

    .line 285
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v1, :cond_4c

    .line 291
    invoke-direct {p0, v0}, Lfreemarker/cache/TemplateNameFormat$Default020400;->removeRedundantSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-direct {p0, v0}, Lfreemarker/cache/TemplateNameFormat$Default020400;->removeDotSteps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-direct {p0, v0, p1}, Lfreemarker/cache/TemplateNameFormat$Default020400;->resolveDotDotSteps(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 298
    invoke-direct {p0, p1}, Lfreemarker/cache/TemplateNameFormat$Default020400;->removeRedundantStarSteps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez v2, :cond_3a

    goto :goto_4b

    .line 300
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_4b
    return-object p1

    .line 286
    :cond_4c
    new-instance v0, Lfreemarker/template/MalformedTemplateNameException;

    const-string v1, "The \':\' character can only be used after the scheme name (if there\'s any), not in the path part"

    invoke-direct {v0, p1, v1}, Lfreemarker/template/MalformedTemplateNameException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_54
    new-instance v0, Lfreemarker/template/MalformedTemplateNameException;

    const-string v1, "Backslash (\"\\\") is not allowed in template names. Use slash (\"/\") instead."

    invoke-direct {v0, p1, v1}, Lfreemarker/template/MalformedTemplateNameException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method rootBasedNameToAbsoluteName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/MalformedTemplateNameException;
        }
    .end annotation

    .line 456
    invoke-direct {p0, p1}, Lfreemarker/cache/TemplateNameFormat$Default020400;->findSchemeSectionEnd(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    .line 459
    :cond_7
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1c
    return-object p1
.end method

.method toRootBasedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 235
    invoke-direct {p0, p2}, Lfreemarker/cache/TemplateNameFormat$Default020400;->findSchemeSectionEnd(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    return-object p2

    .line 237
    :cond_7
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_32

    .line 238
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 239
    invoke-direct {p0, p1}, Lfreemarker/cache/TemplateNameFormat$Default020400;->findSchemeSectionEnd(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1c

    return-object p2

    .line 244
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 247
    :cond_32
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 249
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    if-nez v0, :cond_43

    .line 252
    invoke-direct {p0, p1}, Lfreemarker/cache/TemplateNameFormat$Default020400;->findSchemeSectionEnd(Ljava/lang/String;)I

    move-result v0

    .line 254
    :cond_43
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 256
    :cond_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 467
    const-string v0, "TemplateNameFormat.DEFAULT_2_4_0"

    return-object v0
.end method

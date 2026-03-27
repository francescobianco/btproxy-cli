.class public final Lfreemarker/template/Version;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final buildDate:Ljava/util/Date;

.field private volatile calculatedStringValue:Ljava/lang/String;

.field private final extraInfo:Ljava/lang/String;

.field private final gaeCompliant:Ljava/lang/Boolean;

.field private hashCode:I

.field private final intValue:I

.field private final major:I

.field private final micro:I

.field private final minor:I

.field private final originalStringValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput p1, p0, Lfreemarker/template/Version;->intValue:I

    .line 139
    rem-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lfreemarker/template/Version;->micro:I

    .line 140
    div-int/lit16 v0, p1, 0x3e8

    rem-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lfreemarker/template/Version;->minor:I

    const v0, 0xf4240

    .line 141
    div-int/2addr p1, v0

    iput p1, p0, Lfreemarker/template/Version;->major:I

    const/4 p1, 0x0

    .line 143
    iput-object p1, p0, Lfreemarker/template/Version;->extraInfo:Ljava/lang/String;

    .line 144
    iput-object p1, p0, Lfreemarker/template/Version;->gaeCompliant:Ljava/lang/Boolean;

    .line 145
    iput-object p1, p0, Lfreemarker/template/Version;->buildDate:Ljava/util/Date;

    .line 146
    iput-object p1, p0, Lfreemarker/template/Version;->originalStringValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 128
    invoke-direct/range {v0 .. v6}, Lfreemarker/template/Version;-><init>(IIILjava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;)V
    .registers 7

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput p1, p0, Lfreemarker/template/Version;->major:I

    .line 151
    iput p2, p0, Lfreemarker/template/Version;->minor:I

    .line 152
    iput p3, p0, Lfreemarker/template/Version;->micro:I

    .line 153
    iput-object p4, p0, Lfreemarker/template/Version;->extraInfo:Ljava/lang/String;

    .line 154
    iput-object p5, p0, Lfreemarker/template/Version;->gaeCompliant:Ljava/lang/Boolean;

    .line 155
    iput-object p6, p0, Lfreemarker/template/Version;->buildDate:Ljava/util/Date;

    .line 156
    invoke-direct {p0}, Lfreemarker/template/Version;->calculateIntValue()I

    move-result p1

    iput p1, p0, Lfreemarker/template/Version;->intValue:I

    const/4 p1, 0x0

    .line 157
    iput-object p1, p0, Lfreemarker/template/Version;->originalStringValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0, v0}, Lfreemarker/template/Version;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;)V
    .registers 13

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 63
    iput-object p1, p0, Lfreemarker/template/Version;->originalStringValue:Ljava/lang/String;

    const/4 v0, 0x3

    .line 65
    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 69
    :goto_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    const-string v6, "The version number string "

    const/16 v7, 0x2e

    if-ge v2, v4, :cond_94

    .line 70
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 71
    invoke-direct {p0, v4}, Lfreemarker/template/Version;->isNumber(C)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 72
    aget v5, v0, v3

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v5, v4

    aput v5, v0, v3

    goto :goto_4d

    :cond_2e
    if-eqz v2, :cond_77

    if-ne v4, v7, :cond_72

    add-int/lit8 v4, v2, 0x1

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v4, v8, :cond_3c

    move v4, v1

    goto :goto_40

    :cond_3c
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_40
    if-eq v4, v7, :cond_55

    if-eq v3, v5, :cond_50

    .line 86
    invoke-direct {p0, v4}, Lfreemarker/template/Version;->isNumber(C)Z

    move-result v4

    if-nez v4, :cond_4b

    goto :goto_50

    :cond_4b
    add-int/lit8 v3, v3, 0x1

    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 87
    :cond_50
    :goto_50
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_95

    .line 82
    :cond_55
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " contains multiple dots after a number."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 93
    :cond_72
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_95

    .line 75
    :cond_77
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " doesn\'t start with a number."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_94
    const/4 v2, 0x0

    :goto_95
    const/4 v3, 0x1

    if-eqz v2, :cond_d8

    .line 100
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_a6

    const/16 v7, 0x2d

    if-eq v4, v7, :cond_a6

    const/16 v7, 0x5f

    if-ne v4, v7, :cond_d8

    .line 102
    :cond_a6
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_b1

    goto :goto_d8

    .line 104
    :cond_b1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " has an extra info section opened with \""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\", but it\'s empty."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 111
    :cond_d8
    :goto_d8
    iput-object v2, p0, Lfreemarker/template/Version;->extraInfo:Ljava/lang/String;

    .line 113
    aget p1, v0, v1

    iput p1, p0, Lfreemarker/template/Version;->major:I

    .line 114
    aget p1, v0, v3

    iput p1, p0, Lfreemarker/template/Version;->minor:I

    .line 115
    aget p1, v0, v5

    iput p1, p0, Lfreemarker/template/Version;->micro:I

    .line 116
    invoke-direct {p0}, Lfreemarker/template/Version;->calculateIntValue()I

    move-result p1

    iput p1, p0, Lfreemarker/template/Version;->intValue:I

    .line 118
    iput-object p2, p0, Lfreemarker/template/Version;->gaeCompliant:Ljava/lang/Boolean;

    .line 119
    iput-object p3, p0, Lfreemarker/template/Version;->buildDate:Ljava/util/Date;

    return-void
.end method

.method private calculateIntValue()I
    .registers 4

    .line 161
    iget v0, p0, Lfreemarker/template/Version;->major:I

    iget v1, p0, Lfreemarker/template/Version;->minor:I

    iget v2, p0, Lfreemarker/template/Version;->micro:I

    invoke-static {v0, v1, v2}, Lfreemarker/template/Version;->intValueFor(III)I

    move-result v0

    return v0
.end method

.method private getStringValue()Ljava/lang/String;
    .registers 3

    .line 169
    iget-object v0, p0, Lfreemarker/template/Version;->originalStringValue:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 171
    :cond_5
    iget-object v0, p0, Lfreemarker/template/Version;->calculatedStringValue:Ljava/lang/String;

    if-nez v0, :cond_59

    .line 173
    monitor-enter p0

    .line 174
    :try_start_a
    iget-object v0, p0, Lfreemarker/template/Version;->calculatedStringValue:Ljava/lang/String;

    if-nez v0, :cond_54

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lfreemarker/template/Version;->major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfreemarker/template/Version;->minor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfreemarker/template/Version;->micro:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lfreemarker/template/Version;->extraInfo:Ljava/lang/String;

    if-eqz v1, :cond_52

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/template/Version;->extraInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_52
    iput-object v0, p0, Lfreemarker/template/Version;->calculatedStringValue:Ljava/lang/String;

    .line 180
    :cond_54
    monitor-exit p0

    goto :goto_59

    :catchall_56
    move-exception v0

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_a .. :try_end_58} :catchall_56

    throw v0

    :cond_59
    :goto_59
    return-object v0
.end method

.method public static intValueFor(III)I
    .registers 4

    const v0, 0xf4240

    mul-int/2addr p0, v0

    mul-int/lit16 p1, p1, 0x3e8

    add-int/2addr p0, p1

    add-int/2addr p0, p2

    return p0
.end method

.method private isNumber(C)Z
    .registers 3

    const/16 v0, 0x30

    if-lt p1, v0, :cond_a

    const/16 v0, 0x39

    if-gt p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 268
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 270
    :cond_13
    check-cast p1, Lfreemarker/template/Version;

    .line 272
    iget v2, p0, Lfreemarker/template/Version;->intValue:I

    iget v3, p1, Lfreemarker/template/Version;->intValue:I

    if-eq v2, v3, :cond_1c

    return v1

    .line 274
    :cond_1c
    invoke-virtual {p1}, Lfreemarker/template/Version;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Lfreemarker/template/Version;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_27

    return v1

    .line 276
    :cond_27
    iget-object v2, p0, Lfreemarker/template/Version;->buildDate:Ljava/util/Date;

    if-nez v2, :cond_30

    .line 277
    iget-object v2, p1, Lfreemarker/template/Version;->buildDate:Ljava/util/Date;

    if-eqz v2, :cond_39

    return v1

    .line 278
    :cond_30
    iget-object v3, p1, Lfreemarker/template/Version;->buildDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    return v1

    .line 282
    :cond_39
    iget-object v2, p0, Lfreemarker/template/Version;->extraInfo:Ljava/lang/String;

    if-nez v2, :cond_42

    .line 283
    iget-object v2, p1, Lfreemarker/template/Version;->extraInfo:Ljava/lang/String;

    if-eqz v2, :cond_4b

    return v1

    .line 284
    :cond_42
    iget-object v3, p1, Lfreemarker/template/Version;->extraInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    return v1

    .line 288
    :cond_4b
    iget-object v2, p0, Lfreemarker/template/Version;->gaeCompliant:Ljava/lang/Boolean;

    if-nez v2, :cond_54

    .line 289
    iget-object p1, p1, Lfreemarker/template/Version;->gaeCompliant:Ljava/lang/Boolean;

    if-eqz p1, :cond_5d

    return v1

    .line 290
    :cond_54
    iget-object p1, p1, Lfreemarker/template/Version;->gaeCompliant:Ljava/lang/Boolean;

    invoke-virtual {v2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5d

    return v1

    :cond_5d
    return v0
.end method

.method public getBuildDate()Ljava/util/Date;
    .registers 2

    .line 235
    iget-object v0, p0, Lfreemarker/template/Version;->buildDate:Ljava/util/Date;

    return-object v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .registers 2

    .line 221
    iget-object v0, p0, Lfreemarker/template/Version;->extraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getMajor()I
    .registers 2

    .line 197
    iget v0, p0, Lfreemarker/template/Version;->major:I

    return v0
.end method

.method public getMicro()I
    .registers 2

    .line 211
    iget v0, p0, Lfreemarker/template/Version;->micro:I

    return v0
.end method

.method public getMinor()I
    .registers 2

    .line 204
    iget v0, p0, Lfreemarker/template/Version;->minor:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 247
    iget v0, p0, Lfreemarker/template/Version;->hashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 249
    :cond_5
    monitor-enter p0

    .line 250
    :try_start_6
    iget v0, p0, Lfreemarker/template/Version;->hashCode:I

    if-nez v0, :cond_38

    .line 253
    iget-object v0, p0, Lfreemarker/template/Version;->buildDate:Ljava/util/Date;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    move v0, v1

    goto :goto_15

    :cond_11
    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    :goto_15
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 254
    iget-object v3, p0, Lfreemarker/template/Version;->extraInfo:Ljava/lang/String;

    if-nez v3, :cond_1f

    move v3, v1

    goto :goto_23

    :cond_1f
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_23
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 255
    iget-object v3, p0, Lfreemarker/template/Version;->gaeCompliant:Ljava/lang/Boolean;

    if-nez v3, :cond_2a

    goto :goto_2e

    :cond_2a
    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_2e
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    .line 256
    iget v1, p0, Lfreemarker/template/Version;->intValue:I

    add-int/2addr v0, v1

    if-nez v0, :cond_36

    const/4 v0, -0x1

    .line 258
    :cond_36
    iput v0, p0, Lfreemarker/template/Version;->hashCode:I

    .line 260
    :cond_38
    iget v0, p0, Lfreemarker/template/Version;->hashCode:I

    monitor-exit p0

    return v0

    :catchall_3c
    move-exception v0

    .line 261
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_6 .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public intValue()I
    .registers 2

    .line 242
    iget v0, p0, Lfreemarker/template/Version;->intValue:I

    return v0
.end method

.method public isGAECompliant()Ljava/lang/Boolean;
    .registers 2

    .line 228
    iget-object v0, p0, Lfreemarker/template/Version;->gaeCompliant:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 190
    invoke-direct {p0}, Lfreemarker/template/Version;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

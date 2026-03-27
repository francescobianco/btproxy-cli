.class public Lfreemarker/core/_DelayedJoinWithComma;
.super Lfreemarker/core/_DelayedConversionToString;
.source "_DelayedJoinWithComma.java"


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lfreemarker/core/_DelayedConversionToString;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected doConversion(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    .line 31
    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 34
    :goto_7
    array-length v3, p1

    if-ge v1, v3, :cond_18

    if-eqz v1, :cond_e

    add-int/lit8 v2, v2, 0x2

    .line 36
    :cond_e
    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 39
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 40
    :goto_1d
    array-length v2, p1

    if-ge v0, v2, :cond_2f

    if-eqz v0, :cond_27

    .line 41
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :cond_27
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 45
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.class public Lfreemarker/template/utility/NullArgumentException;
.super Ljava/lang/IllegalArgumentException;
.source "NullArgumentException.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    const-string v0, "The argument can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\" argument can\'t be null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\" argument can\'t be null. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static check(Ljava/lang/Object;)V
    .registers 1

    if-eqz p0, :cond_3

    return-void

    .line 55
    :cond_3
    new-instance p0, Lfreemarker/template/utility/NullArgumentException;

    invoke-direct {p0}, Lfreemarker/template/utility/NullArgumentException;-><init>()V

    throw p0
.end method

.method public static check(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 2

    if-eqz p1, :cond_3

    return-void

    .line 46
    :cond_3
    new-instance p1, Lfreemarker/template/utility/NullArgumentException;

    invoke-direct {p1, p0}, Lfreemarker/template/utility/NullArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

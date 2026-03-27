.class public Lfreemarker/template/utility/UndeclaredThrowableException;
.super Ljava/lang/RuntimeException;
.source "UndeclaredThrowableException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getUndeclaredThrowable()Ljava/lang/Throwable;
    .registers 2

    .line 40
    invoke-virtual {p0}, Lfreemarker/template/utility/UndeclaredThrowableException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

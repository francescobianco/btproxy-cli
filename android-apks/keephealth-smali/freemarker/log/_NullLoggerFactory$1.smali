.class final Lfreemarker/log/_NullLoggerFactory$1;
.super Lfreemarker/log/Logger;
.source "_NullLoggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/log/_NullLoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lfreemarker/log/Logger;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    return-void
.end method

.method public isDebugEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isErrorEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isFatalEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isInfoEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isWarnEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public warn(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    return-void
.end method

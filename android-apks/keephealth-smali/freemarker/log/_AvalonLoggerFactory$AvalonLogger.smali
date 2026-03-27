.class Lfreemarker/log/_AvalonLoggerFactory$AvalonLogger;
.super Lfreemarker/log/Logger;
.source "_AvalonLoggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/log/_AvalonLoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AvalonLogger"
.end annotation


# instance fields
.field private final logger:Lorg/apache/log/Logger;


# direct methods
.method constructor <init>(Lorg/apache/log/Logger;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Lfreemarker/log/Logger;-><init>()V

    .line 39
    iput-object p1, p0, Lfreemarker/log/_AvalonLoggerFactory$AvalonLogger;->logger:Lorg/apache/log/Logger;

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .registers 3

    .line 44
    iget-object v0, p0, Lfreemarker/log/_AvalonLoggerFactory$AvalonLogger;->logger:Lorg/apache/log/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 49
    iget-object v0, p0, Lfreemarker/log/_AvalonLoggerFactory$AvalonLogger;->logger:Lorg/apache/log/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .registers 3

    .line 54
    iget-object v0, p0, Lfreemarker/log/_AvalonLoggerFactory$AvalonLogger;->logger:Lorg/apache/log/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 59
    iget-object v0, p0, Lfreemarker/log/_AvalonLoggerFactory$AvalonLogger;->logger:Lorg/apache/log/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .registers 3

    .line 64
    iget-object v0, p0, Lfreemarker/log/_AvalonLoggerFactory$AvalonLogger;->logger:Lorg/apache/log/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 69
    iget-object v0, p0, Lfreemarker/log/_AvalonLoggerFactory$AvalonLogger;->logger:Lorg/apache/log/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .registers 2

    .line 84
    iget-object v0, p0, Lfreemarker/log/_AvalonLoggerFactory$AvalonLogger;->logger:Lorg/apache/log/Logger;

    invoke-virtual {v0}, Lorg/apache/log/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .registers 2

    .line 99
    iget-object v0, p0, Lfreemarker/log/_AvalonLoggerFactory$AvalonLogger;->logger:Lorg/apache/log/Logger;

    invoke-virtual {v0}, Lorg/apache/log/Logger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isFatalEnabled()Z
    .registers 2

    .line 104
    iget-object v0, p0, Lfreemarker/log/_AvalonLoggerFactory$AvalonLogger;->logger:Lorg/apache/log/Logger;

    invoke-virtual {v0}, Lorg/apache/log/Logger;->isFatalErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .registers 2

    .line 89
    iget-object v0, p0, Lfreemarker/log/_AvalonLoggerFactory$AvalonLogger;->logger:Lorg/apache/log/Logger;

    invoke-virtual {v0}, Lorg/apache/log/Logger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .registers 2

    .line 94
    iget-object v0, p0, Lfreemarker/log/_AvalonLoggerFactory$AvalonLogger;->logger:Lorg/apache/log/Logger;

    invoke-virtual {v0}, Lorg/apache/log/Logger;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method public warn(Ljava/lang/String;)V
    .registers 3

    .line 74
    iget-object v0, p0, Lfreemarker/log/_AvalonLoggerFactory$AvalonLogger;->logger:Lorg/apache/log/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 79
    iget-object v0, p0, Lfreemarker/log/_AvalonLoggerFactory$AvalonLogger;->logger:Lorg/apache/log/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

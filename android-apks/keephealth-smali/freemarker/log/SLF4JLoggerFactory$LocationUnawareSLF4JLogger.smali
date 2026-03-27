.class Lfreemarker/log/SLF4JLoggerFactory$LocationUnawareSLF4JLogger;
.super Lfreemarker/log/Logger;
.source "SLF4JLoggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/log/SLF4JLoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationUnawareSLF4JLogger"
.end annotation


# instance fields
.field private final logger:Lorg/slf4j/Logger;


# direct methods
.method constructor <init>(Lorg/slf4j/Logger;)V
    .registers 2

    .line 134
    invoke-direct {p0}, Lfreemarker/log/Logger;-><init>()V

    .line 135
    iput-object p1, p0, Lfreemarker/log/SLF4JLoggerFactory$LocationUnawareSLF4JLogger;->logger:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .registers 3

    .line 140
    iget-object v0, p0, Lfreemarker/log/SLF4JLoggerFactory$LocationUnawareSLF4JLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 145
    iget-object v0, p0, Lfreemarker/log/SLF4JLoggerFactory$LocationUnawareSLF4JLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .registers 3

    .line 170
    iget-object v0, p0, Lfreemarker/log/SLF4JLoggerFactory$LocationUnawareSLF4JLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 175
    iget-object v0, p0, Lfreemarker/log/SLF4JLoggerFactory$LocationUnawareSLF4JLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .registers 3

    .line 150
    iget-object v0, p0, Lfreemarker/log/SLF4JLoggerFactory$LocationUnawareSLF4JLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 155
    iget-object v0, p0, Lfreemarker/log/SLF4JLoggerFactory$LocationUnawareSLF4JLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .registers 2

    .line 180
    iget-object v0, p0, Lfreemarker/log/SLF4JLoggerFactory$LocationUnawareSLF4JLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .registers 2

    .line 195
    iget-object v0, p0, Lfreemarker/log/SLF4JLoggerFactory$LocationUnawareSLF4JLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isFatalEnabled()Z
    .registers 2

    .line 200
    iget-object v0, p0, Lfreemarker/log/SLF4JLoggerFactory$LocationUnawareSLF4JLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .registers 2

    .line 185
    iget-object v0, p0, Lfreemarker/log/SLF4JLoggerFactory$LocationUnawareSLF4JLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .registers 2

    .line 190
    iget-object v0, p0, Lfreemarker/log/SLF4JLoggerFactory$LocationUnawareSLF4JLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method public warn(Ljava/lang/String;)V
    .registers 3

    .line 160
    iget-object v0, p0, Lfreemarker/log/SLF4JLoggerFactory$LocationUnawareSLF4JLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 165
    iget-object v0, p0, Lfreemarker/log/SLF4JLoggerFactory$LocationUnawareSLF4JLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

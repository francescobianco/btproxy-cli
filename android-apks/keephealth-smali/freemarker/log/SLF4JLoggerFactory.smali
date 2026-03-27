.class public Lfreemarker/log/SLF4JLoggerFactory;
.super Ljava/lang/Object;
.source "SLF4JLoggerFactory.java"

# interfaces
.implements Lfreemarker/log/LoggerFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/log/SLF4JLoggerFactory$LocationUnawareSLF4JLogger;,
        Lfreemarker/log/SLF4JLoggerFactory$LocationAwareSLF4JLogger;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;
    .registers 3

    .line 32
    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 33
    instance-of v0, p1, Lorg/slf4j/spi/LocationAwareLogger;

    if-eqz v0, :cond_10

    .line 34
    new-instance v0, Lfreemarker/log/SLF4JLoggerFactory$LocationAwareSLF4JLogger;

    check-cast p1, Lorg/slf4j/spi/LocationAwareLogger;

    invoke-direct {v0, p1}, Lfreemarker/log/SLF4JLoggerFactory$LocationAwareSLF4JLogger;-><init>(Lorg/slf4j/spi/LocationAwareLogger;)V

    return-object v0

    .line 36
    :cond_10
    new-instance v0, Lfreemarker/log/SLF4JLoggerFactory$LocationUnawareSLF4JLogger;

    invoke-direct {v0, p1}, Lfreemarker/log/SLF4JLoggerFactory$LocationUnawareSLF4JLogger;-><init>(Lorg/slf4j/Logger;)V

    return-object v0
.end method

.class public abstract Lfreemarker/log/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final LIBRARIES_BY_PRIORITY:[Ljava/lang/String;

.field public static final LIBRARY_AUTO:I = -0x1

.field public static final LIBRARY_AVALON:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LIBRARY_COMMONS:I = 0x4

.field public static final LIBRARY_JAVA:I = 0x1

.field public static final LIBRARY_LOG4J:I = 0x3

.field public static final LIBRARY_NAME_AUTO:Ljava/lang/String; = "auto"

.field public static final LIBRARY_NAME_AVALON:Ljava/lang/String; = "Avalon"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LIBRARY_NAME_COMMONS_LOGGING:Ljava/lang/String; = "CommonsLogging"

.field public static final LIBRARY_NAME_JUL:Ljava/lang/String; = "JUL"

.field public static final LIBRARY_NAME_LOG4J:Ljava/lang/String; = "Log4j"

.field public static final LIBRARY_NAME_NONE:Ljava/lang/String; = "none"

.field public static final LIBRARY_NAME_SLF4J:Ljava/lang/String; = "SLF4J"

.field public static final LIBRARY_NONE:I = 0x0

.field public static final LIBRARY_SLF4J:I = 0x5

.field private static final LOG4J_OVER_SLF4J_TESTER_CLASS:Ljava/lang/String; = "freemarker.log._Log4jOverSLF4JTester"

.field private static final MAX_LIBRARY_ENUM:I = 0x5

.field private static final MIN_LIBRARY_ENUM:I = -0x1

.field private static final REAL_LOG4J_PRESENCE_CLASS:Ljava/lang/String; = "org.apache.log4j.FileAppender"

.field public static final SYSTEM_PROPERTY_NAME_LOGGER_LIBRARY:Ljava/lang/String; = "org.freemarker.loggerLibrary"

.field private static categoryPrefix:Ljava/lang/String;

.field private static initializedFromSystemProperty:Z

.field private static libraryEnum:I

.field private static loggerFactory:Lfreemarker/log/LoggerFactory;

.field private static final loggersByCategory:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0xa

    .line 163
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "JUL"

    aput-object v2, v0, v1

    const-string v1, "org.apache.log.Logger"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v3, "Avalon"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "org.apache.log4j.Logger"

    aput-object v3, v0, v1

    const-string v1, "Log4j"

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v4, "org.apache.commons.logging.Log"

    aput-object v4, v0, v1

    const/4 v1, 0x7

    const-string v4, "CommonsLogging"

    aput-object v4, v0, v1

    const/16 v1, 0x8

    const-string v4, "org.slf4j.Logger"

    aput-object v4, v0, v1

    const/16 v1, 0x9

    const-string v4, "SLF4J"

    aput-object v4, v0, v1

    sput-object v0, Lfreemarker/log/Logger;->LIBRARIES_BY_PRIORITY:[Ljava/lang/String;

    .line 181
    array-length v0, v0

    div-int/2addr v0, v2

    if-ne v0, v3, :cond_49

    .line 206
    const-string v0, ""

    sput-object v0, Lfreemarker/log/Logger;->categoryPrefix:Ljava/lang/String;

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfreemarker/log/Logger;->loggersByCategory:Ljava/util/Map;

    return-void

    .line 182
    :cond_49
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createLoggerFactory(I)Lfreemarker/log/LoggerFactory;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p0, v0, :cond_47

    const/4 p0, 0x5

    move v1, p0

    :goto_5
    if-lt v1, v0, :cond_3c

    .line 430
    invoke-static {v1}, Lfreemarker/log/Logger;->isAutoDetected(I)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_3a

    :cond_e
    const/4 v2, 0x3

    if-ne v1, v2, :cond_18

    .line 431
    invoke-static {}, Lfreemarker/log/Logger;->hasLog4LibraryThatDelegatesToWorkingSLF4J()Z

    move-result v2

    if-eqz v2, :cond_18

    move v1, p0

    .line 436
    :cond_18
    :try_start_18
    invoke-static {v1}, Lfreemarker/log/Logger;->createLoggerFactoryForNonAuto(I)Lfreemarker/log/LoggerFactory;

    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_1c} :catch_3a
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1d

    return-object p0

    :catchall_1d
    move-exception v2

    .line 440
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected error when initializing logging for \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    invoke-static {v1}, Lfreemarker/log/Logger;->getLibraryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 440
    invoke-static {v3, v2}, Lfreemarker/log/Logger;->logErrorInLogger(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_3a
    :goto_3a
    add-int/2addr v1, v0

    goto :goto_5

    .line 446
    :cond_3c
    const-string p0, "Auto detecton couldn\'t set up any logger libraries; FreeMarker logging suppressed."

    invoke-static {p0}, Lfreemarker/log/Logger;->logWarnInLogger(Ljava/lang/String;)V

    .line 447
    new-instance p0, Lfreemarker/log/_NullLoggerFactory;

    invoke-direct {p0}, Lfreemarker/log/_NullLoggerFactory;-><init>()V

    return-object p0

    .line 449
    :cond_47
    invoke-static {p0}, Lfreemarker/log/Logger;->createLoggerFactoryForNonAuto(I)Lfreemarker/log/LoggerFactory;

    move-result-object p0

    return-object p0
.end method

.method private static createLoggerFactoryForNonAuto(I)Lfreemarker/log/LoggerFactory;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string v0, "freemarker.log._"

    .line 458
    invoke-static {p0}, Lfreemarker/log/Logger;->getAvailabilityCheckClassName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 460
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 461
    invoke-static {p0}, Lfreemarker/log/Logger;->getLibraryName(I)Ljava/lang/String;

    move-result-object p0

    .line 463
    :try_start_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LoggerFactory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 464
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/log/LoggerFactory;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2c} :catch_2d

    return-object v0

    :catch_2d
    move-exception v0

    .line 466
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected error when creating logger factory for \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "\"."

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_49
    const/4 v0, 0x1

    if-ne p0, v0, :cond_52

    .line 471
    new-instance p0, Lfreemarker/log/_JULLoggerFactory;

    invoke-direct {p0}, Lfreemarker/log/_JULLoggerFactory;-><init>()V

    return-object p0

    :cond_52
    if-nez p0, :cond_5a

    .line 473
    new-instance p0, Lfreemarker/log/_NullLoggerFactory;

    invoke-direct {p0}, Lfreemarker/log/_NullLoggerFactory;-><init>()V

    return-object p0

    .line 475
    :cond_5a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Bug"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static ensureLoggerFactorySet(Z)V
    .registers 10

    .line 370
    sget-object v0, Lfreemarker/log/Logger;->loggerFactory:Lfreemarker/log/LoggerFactory;

    if-eqz v0, :cond_5

    return-void

    .line 371
    :cond_5
    const-class v0, Lfreemarker/log/Logger;

    monitor-enter v0

    .line 372
    :try_start_8
    sget-object v1, Lfreemarker/log/Logger;->loggerFactory:Lfreemarker/log/LoggerFactory;

    if-eqz v1, :cond_e

    monitor-exit v0

    return-void

    .line 374
    :cond_e
    const-string v1, "org.freemarker.loggerLibrary"

    invoke-static {v1}, Lfreemarker/log/Logger;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_58

    .line 378
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move v6, v2

    move v5, v3

    .line 383
    :cond_1f
    invoke-static {v5}, Lfreemarker/log/Logger;->getLibraryName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    move v6, v4

    goto :goto_2d

    :cond_2b
    add-int/lit8 v5, v5, 0x1

    :goto_2d
    const/4 v7, 0x5

    if-gt v5, v7, :cond_32

    if-eqz v6, :cond_1f

    :cond_32
    if-nez v6, :cond_54

    .line 391
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignored invalid \"org.freemarker.loggerLibrary\" system property value: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lfreemarker/log/Logger;->logWarnInLogger(Ljava/lang/String;)V

    if-eqz p0, :cond_54

    .line 393
    monitor-exit v0

    return-void

    :cond_54
    if-eqz v6, :cond_5c

    move v3, v5

    goto :goto_5c

    :cond_58
    if-eqz p0, :cond_5c

    .line 398
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_8 .. :try_end_5b} :catchall_a7

    return-void

    .line 403
    :cond_5c
    :goto_5c
    :try_start_5c
    invoke-static {v3}, Lfreemarker/log/Logger;->setLibrary(I)V

    if-eqz v1, :cond_a5

    .line 405
    sput-boolean v4, Lfreemarker/log/Logger;->initializedFromSystemProperty:Z
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_64

    goto :goto_a5

    :catchall_64
    move-exception v5

    if-eqz p0, :cond_6b

    if-nez v1, :cond_6a

    goto :goto_6b

    :cond_6a
    move v4, v2

    .line 409
    :cond_6b
    :goto_6b
    :try_start_6b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t set up logger for \""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 410
    invoke-static {v3}, Lfreemarker/log/Logger;->getLibraryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz v4, :cond_89

    const-string v1, "; logging disabled"

    goto :goto_8b

    :cond_89
    const-string v1, "."

    :goto_8b
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 409
    invoke-static {p0, v5}, Lfreemarker/log/Logger;->logErrorInLogger(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_96
    .catchall {:try_start_6b .. :try_end_96} :catchall_a7

    if-eqz v4, :cond_a5

    .line 414
    :try_start_98
    invoke-static {v2}, Lfreemarker/log/Logger;->setLibrary(I)V
    :try_end_9b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_98 .. :try_end_9b} :catch_9c
    .catchall {:try_start_98 .. :try_end_9b} :catchall_a7

    goto :goto_a5

    :catch_9c
    move-exception p0

    .line 416
    :try_start_9d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bug"

    invoke-direct {v1, v2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 420
    :cond_a5
    :goto_a5
    monitor-exit v0

    return-void

    :catchall_a7
    move-exception p0

    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_9d .. :try_end_a9} :catchall_a7

    throw p0
.end method

.method private static getAvailabilityCheckClassName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_f

    if-nez p0, :cond_6

    goto :goto_f

    .line 177
    :cond_6
    sget-object v0, Lfreemarker/log/Logger;->LIBRARIES_BY_PRIORITY:[Ljava/lang/String;

    add-int/lit8 p0, p0, -0x1

    mul-int/lit8 p0, p0, 0x2

    aget-object p0, v0, p0

    return-object p0

    :cond_f
    :goto_f
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getLibraryName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    .line 188
    const-string p0, "auto"

    return-object p0

    :cond_6
    if-nez p0, :cond_b

    .line 191
    const-string p0, "none"

    return-object p0

    .line 193
    :cond_b
    sget-object v0, Lfreemarker/log/Logger;->LIBRARIES_BY_PRIORITY:[Ljava/lang/String;

    add-int/lit8 p0, p0, -0x1

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;
    .registers 3

    .line 355
    sget-object v0, Lfreemarker/log/Logger;->categoryPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfreemarker/log/Logger;->categoryPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 358
    :cond_1b
    sget-object v0, Lfreemarker/log/Logger;->loggersByCategory:Ljava/util/Map;

    monitor-enter v0

    .line 359
    :try_start_1e
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/log/Logger;

    if-nez v1, :cond_33

    const/4 v1, 0x0

    .line 361
    invoke-static {v1}, Lfreemarker/log/Logger;->ensureLoggerFactorySet(Z)V

    .line 362
    sget-object v1, Lfreemarker/log/Logger;->loggerFactory:Lfreemarker/log/LoggerFactory;

    invoke-interface {v1, p0}, Lfreemarker/log/LoggerFactory;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v1

    .line 363
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :cond_33
    monitor-exit v0

    return-object v1

    :catchall_35
    move-exception p0

    .line 366
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_35

    throw p0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 552
    const-string v0, "\"."

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Lfreemarker/log/Logger$1;

    invoke-direct {v2, p0}, Lfreemarker/log/Logger$1;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_e
    .catch Ljava/security/AccessControlException; {:try_start_3 .. :try_end_e} :catch_27
    .catchall {:try_start_3 .. :try_end_e} :catchall_f

    return-object v2

    :catchall_f
    move-exception v2

    .line 562
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to read system property \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lfreemarker/log/Logger;->logErrorInLogger(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 559
    :catch_27
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Insufficient permissions to read system property \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/log/Logger;->logWarnInLogger(Ljava/lang/String;)V

    return-object v1
.end method

.method private static hasLog4LibraryThatDelegatesToWorkingSLF4J()Z
    .registers 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 482
    :try_start_2
    invoke-static {v0}, Lfreemarker/log/Logger;->getAvailabilityCheckClassName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x5

    .line 483
    invoke-static {v0}, Lfreemarker/log/Logger;->getAvailabilityCheckClassName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_33

    .line 488
    :try_start_11
    const-string v0, "org.apache.log4j.FileAppender"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_16} :catch_17

    return v1

    .line 492
    :catch_17
    :try_start_17
    const-string v0, "freemarker.log._Log4jOverSLF4JTester"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "test"

    new-array v3, v1, [Ljava/lang/Class;

    .line 493
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 494
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_32
    .catchall {:try_start_17 .. :try_end_32} :catchall_33

    return v0

    :catchall_33
    return v1
.end method

.method private static isAutoDetected(I)Z
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_d

    if-eqz p0, :cond_d

    const/4 v0, 0x5

    if-eq p0, v0, :cond_d

    const/4 v0, 0x4

    if-eq p0, v0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method private static logErrorInLogger(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    const/4 v0, 0x1

    .line 511
    invoke-static {v0, p0, p1}, Lfreemarker/log/Logger;->logInLogger(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static logInLogger(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 516
    const-class v0, Lfreemarker/log/Logger;

    monitor-enter v0

    .line 517
    :try_start_3
    sget-object v1, Lfreemarker/log/Logger;->loggerFactory:Lfreemarker/log/LoggerFactory;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    instance-of v1, v1, Lfreemarker/log/_NullLoggerFactory;

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    move v1, v2

    .line 518
    :goto_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_95

    if-eqz v1, :cond_21

    .line 522
    :try_start_12
    const-string v0, "freemarker.logger"

    invoke-static {v0}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v0

    if-eqz p0, :cond_1e

    .line 524
    invoke-virtual {v0, p1}, Lfreemarker/log/Logger;->error(Ljava/lang/String;)V

    goto :goto_21

    .line 526
    :cond_1e
    invoke-virtual {v0, p1}, Lfreemarker/log/Logger;->warn(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_22

    :cond_21
    :goto_21
    move v2, v1

    :catchall_22
    if-nez v2, :cond_94

    .line 534
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_30

    const-string p0, "ERROR"

    goto :goto_32

    :cond_30
    const-string p0, "WARN"

    :goto_32
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-class v1, Lfreemarker/log/LoggerFactory;

    .line 535
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ": "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 534
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_94

    .line 537
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\tException: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lfreemarker/log/Logger;->tryToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 538
    :goto_71
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_94

    .line 539
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 540
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\tCaused by: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lfreemarker/log/Logger;->tryToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_71

    :cond_94
    return-void

    :catchall_95
    move-exception p0

    .line 518
    :try_start_96
    monitor-exit v0
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw p0
.end method

.method private static logWarnInLogger(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 507
    invoke-static {v0, p0, v1}, Lfreemarker/log/Logger;->logInLogger(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static selectLoggerLibrary(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "\") call, because the \"org.freemarker.loggerLibrary\" system property is set to \""

    const-string v1, "Logger library was already set earlier to \""

    const-string v2, "Ignored "

    const/4 v3, -0x1

    if-lt p0, v3, :cond_9f

    const/4 v3, 0x5

    if-gt p0, v3, :cond_9f

    .line 234
    const-class v3, Lfreemarker/log/Logger;

    monitor-enter v3

    .line 235
    :try_start_f
    sget-object v4, Lfreemarker/log/Logger;->loggerFactory:Lfreemarker/log/LoggerFactory;

    const/4 v5, 0x1

    if-eqz v4, :cond_16

    move v4, v5

    goto :goto_17

    :cond_16
    const/4 v4, 0x0

    :goto_17
    if-eqz v4, :cond_1d

    .line 236
    sget v6, Lfreemarker/log/Logger;->libraryEnum:I

    if-eq p0, v6, :cond_9a

    .line 238
    :cond_1d
    invoke-static {v5}, Lfreemarker/log/Logger;->ensureLoggerFactorySet(Z)V

    .line 241
    sget-boolean v5, Lfreemarker/log/Logger;->initializedFromSystemProperty:Z

    if-eqz v5, :cond_66

    sget-object v5, Lfreemarker/log/Logger;->loggerFactory:Lfreemarker/log/LoggerFactory;

    if-nez v5, :cond_29

    goto :goto_66

    .line 251
    :cond_29
    sget v1, Lfreemarker/log/Logger;->libraryEnum:I

    if-eq p0, v1, :cond_9a

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lfreemarker/log/Logger;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".selectLoggerLibrary(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 253
    invoke-static {p0}, Lfreemarker/log/Logger;->getLibraryName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v0, Lfreemarker/log/Logger;->libraryEnum:I

    .line 255
    invoke-static {v0}, Lfreemarker/log/Logger;->getLibraryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\"."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 252
    invoke-static {p0}, Lfreemarker/log/Logger;->logWarnInLogger(Ljava/lang/String;)V

    goto :goto_9a

    .line 242
    :cond_66
    :goto_66
    sget v0, Lfreemarker/log/Logger;->libraryEnum:I

    .line 243
    invoke-static {p0}, Lfreemarker/log/Logger;->setLibrary(I)V

    .line 244
    sget-object v2, Lfreemarker/log/Logger;->loggersByCategory:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    if-eqz v4, :cond_9a

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-static {v0}, Lfreemarker/log/Logger;->getLibraryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"; change to \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 248
    invoke-static {p0}, Lfreemarker/log/Logger;->getLibraryName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\" won\'t effect loggers created earlier."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 246
    invoke-static {p0}, Lfreemarker/log/Logger;->logWarnInLogger(Ljava/lang/String;)V

    .line 258
    :cond_9a
    :goto_9a
    monitor-exit v3

    return-void

    :catchall_9c
    move-exception p0

    monitor-exit v3
    :try_end_9e
    .catchall {:try_start_f .. :try_end_9e} :catchall_9c

    throw p0

    .line 231
    :cond_9f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Library enum value out of range"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setCategoryPrefix(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 274
    const-class v0, Lfreemarker/log/Logger;

    monitor-enter v0

    if-eqz p0, :cond_b

    .line 278
    :try_start_5
    sput-object p0, Lfreemarker/log/Logger;->categoryPrefix:Ljava/lang/String;

    .line 279
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_11

    .line 276
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 279
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_9

    throw p0
.end method

.method private static declared-synchronized setLibrary(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-class v0, Lfreemarker/log/Logger;

    monitor-enter v0

    .line 502
    :try_start_3
    invoke-static {p0}, Lfreemarker/log/Logger;->createLoggerFactory(I)Lfreemarker/log/LoggerFactory;

    move-result-object v1

    sput-object v1, Lfreemarker/log/Logger;->loggerFactory:Lfreemarker/log/LoggerFactory;

    .line 503
    sput p0, Lfreemarker/log/Logger;->libraryEnum:I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 504
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static tryToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 574
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_9

    return-object p0

    .line 576
    :catchall_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract debug(Ljava/lang/String;)V
.end method

.method public abstract debug(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract error(Ljava/lang/String;)V
.end method

.method public abstract error(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract info(Ljava/lang/String;)V
.end method

.method public abstract info(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract isDebugEnabled()Z
.end method

.method public abstract isErrorEnabled()Z
.end method

.method public abstract isFatalEnabled()Z
.end method

.method public abstract isInfoEnabled()Z
.end method

.method public abstract isWarnEnabled()Z
.end method

.method public abstract warn(Ljava/lang/String;)V
.end method

.method public abstract warn(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

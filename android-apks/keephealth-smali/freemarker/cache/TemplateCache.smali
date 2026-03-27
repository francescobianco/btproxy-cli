.class public Lfreemarker/cache/TemplateCache;
.super Ljava/lang/Object;
.source "TemplateCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;,
        Lfreemarker/cache/TemplateCache$TemplateCacheTemplateLookupContext;,
        Lfreemarker/cache/TemplateCache$CachedTemplate;,
        Lfreemarker/cache/TemplateCache$TemplateKey;
    }
.end annotation


# static fields
.field private static final ASTERISK:C = '*'

.field private static final ASTERISKSTR:Ljava/lang/String; = "*"

.field public static final DEFAULT_TEMPLATE_UPDATE_DELAY_MILLIS:J = 0x1388L

.field private static final INIT_CAUSE:Ljava/lang/reflect/Method;

.field private static final LOCALE_PART_SEPARATOR:Ljava/lang/String; = "_"

.field private static final LOG:Lfreemarker/log/Logger;

.field private static final SLASH:C = '/'


# instance fields
.field private config:Lfreemarker/template/Configuration;

.field private final isStorageConcurrent:Z

.field private localizedLookup:Z

.field private final storage:Lfreemarker/cache/CacheStorage;

.field private final templateConfigurations:Lfreemarker/cache/TemplateConfigurationFactory;

.field private final templateLoader:Lfreemarker/cache/TemplateLoader;

.field private final templateLookupStrategy:Lfreemarker/cache/TemplateLookupStrategy;

.field private final templateNameFormat:Lfreemarker/cache/TemplateNameFormat;

.field private updateDelay:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 71
    const-string v0, "freemarker.cache"

    invoke-static {v0}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v0

    sput-object v0, Lfreemarker/cache/TemplateCache;->LOG:Lfreemarker/log/Logger;

    .line 464
    invoke-static {}, Lfreemarker/cache/TemplateCache;->getInitCauseMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lfreemarker/cache/TemplateCache;->INIT_CAUSE:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    sget-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_0:Lfreemarker/template/Version;

    invoke-static {v0}, Lfreemarker/template/_TemplateAPI;->createDefaultTemplateLoader(Lfreemarker/template/Version;)Lfreemarker/cache/TemplateLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/cache/TemplateCache;-><init>(Lfreemarker/cache/TemplateLoader;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/cache/TemplateLoader;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 108
    move-object v1, v0

    check-cast v1, Lfreemarker/template/Configuration;

    invoke-direct {p0, p1, v0}, Lfreemarker/cache/TemplateCache;-><init>(Lfreemarker/cache/TemplateLoader;Lfreemarker/template/Configuration;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, p2, v0}, Lfreemarker/cache/TemplateCache;-><init>(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/template/Configuration;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/cache/TemplateLookupStrategy;Lfreemarker/cache/TemplateNameFormat;Lfreemarker/cache/TemplateConfigurationFactory;Lfreemarker/template/Configuration;)V
    .registers 9

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    .line 84
    iput-wide v0, p0, Lfreemarker/cache/TemplateCache;->updateDelay:J

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lfreemarker/cache/TemplateCache;->localizedLookup:Z

    .line 179
    iput-object p1, p0, Lfreemarker/cache/TemplateCache;->templateLoader:Lfreemarker/cache/TemplateLoader;

    .line 181
    const-string p1, "cacheStorage"

    invoke-static {p1, p2}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    iput-object p2, p0, Lfreemarker/cache/TemplateCache;->storage:Lfreemarker/cache/CacheStorage;

    .line 183
    instance-of p1, p2, Lfreemarker/cache/ConcurrentCacheStorage;

    if-eqz p1, :cond_20

    check-cast p2, Lfreemarker/cache/ConcurrentCacheStorage;

    .line 184
    invoke-interface {p2}, Lfreemarker/cache/ConcurrentCacheStorage;->isConcurrent()Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    iput-boolean v0, p0, Lfreemarker/cache/TemplateCache;->isStorageConcurrent:Z

    .line 186
    const-string p1, "templateLookupStrategy"

    invoke-static {p1, p3}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    iput-object p3, p0, Lfreemarker/cache/TemplateCache;->templateLookupStrategy:Lfreemarker/cache/TemplateLookupStrategy;

    .line 189
    const-string p1, "templateNameFormat"

    invoke-static {p1, p4}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    iput-object p4, p0, Lfreemarker/cache/TemplateCache;->templateNameFormat:Lfreemarker/cache/TemplateNameFormat;

    .line 193
    iput-object p5, p0, Lfreemarker/cache/TemplateCache;->templateConfigurations:Lfreemarker/cache/TemplateConfigurationFactory;

    .line 195
    iput-object p6, p0, Lfreemarker/cache/TemplateCache;->config:Lfreemarker/template/Configuration;

    return-void
.end method

.method public constructor <init>(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/cache/TemplateLookupStrategy;Lfreemarker/cache/TemplateNameFormat;Lfreemarker/template/Configuration;)V
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 153
    invoke-direct/range {v0 .. v6}, Lfreemarker/cache/TemplateCache;-><init>(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/cache/TemplateLookupStrategy;Lfreemarker/cache/TemplateNameFormat;Lfreemarker/cache/TemplateConfigurationFactory;Lfreemarker/template/Configuration;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/template/Configuration;)V
    .registers 11

    .line 137
    sget-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_0:Lfreemarker/template/Version;

    .line 138
    invoke-static {v0}, Lfreemarker/template/_TemplateAPI;->getDefaultTemplateLookupStrategy(Lfreemarker/template/Version;)Lfreemarker/cache/TemplateLookupStrategy;

    move-result-object v4

    sget-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_0:Lfreemarker/template/Version;

    .line 139
    invoke-static {v0}, Lfreemarker/template/_TemplateAPI;->getDefaultTemplateNameFormat(Lfreemarker/template/Version;)Lfreemarker/cache/TemplateNameFormat;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    .line 137
    invoke-direct/range {v1 .. v6}, Lfreemarker/cache/TemplateCache;-><init>(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/cache/TemplateLookupStrategy;Lfreemarker/cache/TemplateNameFormat;Lfreemarker/template/Configuration;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/cache/TemplateLoader;Lfreemarker/template/Configuration;)V
    .registers 4

    .line 126
    sget-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_0:Lfreemarker/template/Version;

    invoke-static {v0}, Lfreemarker/template/_TemplateAPI;->createDefaultCacheStorage(Lfreemarker/template/Version;)Lfreemarker/cache/CacheStorage;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lfreemarker/cache/TemplateCache;-><init>(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/template/Configuration;)V

    return-void
.end method

.method static synthetic access$400(Lfreemarker/cache/TemplateCache;)Z
    .registers 1

    .line 58
    iget-boolean p0, p0, Lfreemarker/cache/TemplateCache;->localizedLookup:Z

    return p0
.end method

.method static synthetic access$500(Lfreemarker/cache/TemplateCache;Ljava/lang/String;)Lfreemarker/cache/TemplateLookupResult;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1}, Lfreemarker/cache/TemplateCache;->lookupTemplateWithAcquisitionStrategy(Ljava/lang/String;)Lfreemarker/cache/TemplateLookupResult;

    move-result-object p0

    return-object p0
.end method

.method private buildDebugName(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 714
    invoke-static {p2}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p3, :cond_31

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, ", cond="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 715
    invoke-static {p3}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_33

    :cond_31
    const-string p2, ""

    :goto_33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p5, :cond_46

    const-string p2, ", parsed)"

    goto :goto_48

    :cond_46
    const-string p2, ", unparsed]"

    :goto_48
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private concatPath(Ljava/util/List;II)Ljava/lang/String;
    .registers 7

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_9
    if-ge p2, p3, :cond_1b

    .line 824
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    .line 826
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected static createLegacyDefaultTemplateLoader()Lfreemarker/cache/TemplateLoader;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 319
    sget-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_0:Lfreemarker/template/Version;

    invoke-static {v0}, Lfreemarker/template/_TemplateAPI;->createDefaultTemplateLoader(Lfreemarker/template/Version;)Lfreemarker/cache/TemplateLoader;

    move-result-object v0

    return-object v0
.end method

.method private findTemplateSource(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 791
    iget-object v0, p0, Lfreemarker/cache/TemplateCache;->templateLoader:Lfreemarker/cache/TemplateLoader;

    invoke-interface {v0, p1}, Lfreemarker/cache/TemplateLoader;->findTemplateSource(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 792
    sget-object v1, Lfreemarker/cache/TemplateCache;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v1}, Lfreemarker/log/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 793
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TemplateLoader.findTemplateSource("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "): "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez v0, :cond_28

    const-string v2, "Not found"

    goto :goto_2a

    :cond_28
    const-string v2, "Found"

    :goto_2a
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    .line 796
    :cond_35
    invoke-direct {p0, v0}, Lfreemarker/cache/TemplateCache;->modifyForConfIcI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static getFullTemplatePath(Lfreemarker/core/Environment;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 731
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/Environment;->toFullTemplateName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Lfreemarker/template/MalformedTemplateNameException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 733
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lfreemarker/template/MalformedTemplateNameException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final getInitCauseMethod()Ljava/lang/reflect/Method;
    .registers 5

    .line 468
    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "initCause"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTemplateInternal(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)Lfreemarker/template/Template;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v10, p0

    const-string v0, "Updating source because: lastModifiedNotChanged="

    const-string v1, "Updating source because: sourceEquals="

    const-string v2, "t is "

    const-string v3, "Loading template for "

    const-string v4, "Couldn\'t find template in cache for "

    .line 326
    sget-object v5, Lfreemarker/cache/TemplateCache;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v5}, Lfreemarker/log/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 328
    invoke-direct/range {p0 .. p5}, Lfreemarker/cache/TemplateCache;->buildDebugName(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    goto :goto_1a

    :cond_19
    const/4 v8, 0x0

    .line 330
    :goto_1a
    new-instance v9, Lfreemarker/cache/TemplateCache$TemplateKey;

    move-object v11, v9

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move/from16 v16, p5

    invoke-direct/range {v11 .. v16}, Lfreemarker/cache/TemplateCache$TemplateKey;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 333
    iget-boolean v11, v10, Lfreemarker/cache/TemplateCache;->isStorageConcurrent:Z

    if-eqz v11, :cond_37

    .line 334
    iget-object v11, v10, Lfreemarker/cache/TemplateCache;->storage:Lfreemarker/cache/CacheStorage;

    invoke-interface {v11, v9}, Lfreemarker/cache/CacheStorage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lfreemarker/cache/TemplateCache$CachedTemplate;

    goto :goto_44

    .line 336
    :cond_37
    iget-object v11, v10, Lfreemarker/cache/TemplateCache;->storage:Lfreemarker/cache/CacheStorage;

    monitor-enter v11

    .line 337
    :try_start_3a
    iget-object v12, v10, Lfreemarker/cache/TemplateCache;->storage:Lfreemarker/cache/CacheStorage;

    invoke-interface {v12, v9}, Lfreemarker/cache/CacheStorage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lfreemarker/cache/TemplateCache$CachedTemplate;

    .line 338
    monitor-exit v11
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_2d3

    move-object v11, v12

    .line 341
    :goto_44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/16 v16, 0x0

    if-eqz v11, :cond_1c6

    .line 349
    :try_start_4c
    iget-wide v14, v11, Lfreemarker/cache/TemplateCache$CachedTemplate;->lastChecked:J

    sub-long v14, v12, v14

    move-object/from16 v17, v8

    iget-wide v7, v10, Lfreemarker/cache/TemplateCache;->updateDelay:J

    cmp-long v4, v14, v7

    const/4 v7, 0x1

    if-gez v4, :cond_b6

    if-eqz v6, :cond_73

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cached copy not yet stale; using cached."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    .line 354
    :cond_73
    iget-object v0, v11, Lfreemarker/cache/TemplateCache$CachedTemplate;->templateOrException:Ljava/lang/Object;

    .line 355
    instance-of v1, v0, Lfreemarker/template/Template;

    if-nez v1, :cond_b3

    if-nez v0, :cond_7c

    goto :goto_b3

    .line 357
    :cond_7c
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_92

    .line 359
    instance-of v1, v0, Ljava/io/IOException;
    :try_end_82
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_82} :catch_1c1
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_82} :catch_1bc
    .catchall {:try_start_4c .. :try_end_82} :catchall_1b8

    if-eqz v1, :cond_98

    .line 361
    :try_start_84
    move-object v1, v0

    check-cast v1, Ljava/io/IOException;

    invoke-direct {v10, v1}, Lfreemarker/cache/TemplateCache;->throwLoadFailedException(Ljava/lang/Throwable;)V
    :try_end_8a
    .catch Ljava/lang/RuntimeException; {:try_start_84 .. :try_end_8a} :catch_1c1
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_8a} :catch_8d
    .catchall {:try_start_84 .. :try_end_8a} :catchall_1b8

    move/from16 v16, v7

    goto :goto_98

    :catch_8d
    move-exception v0

    move/from16 v16, v7

    goto/16 :goto_1bd

    .line 358
    :cond_92
    :try_start_92
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    invoke-direct {v10, v1}, Lfreemarker/cache/TemplateCache;->throwLoadFailedException(Ljava/lang/Throwable;)V

    .line 363
    :cond_98
    :goto_98
    new-instance v1, Lfreemarker/core/BugException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lfreemarker/core/BugException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 356
    :cond_b3
    :goto_b3
    check-cast v0, Lfreemarker/template/Template;

    return-object v0

    :cond_b6
    move-object/from16 v8, v17

    .line 368
    invoke-virtual {v11}, Lfreemarker/cache/TemplateCache$CachedTemplate;->cloneCachedTemplate()Lfreemarker/cache/TemplateCache$CachedTemplate;

    move-result-object v11

    .line 370
    iput-wide v12, v11, Lfreemarker/cache/TemplateCache$CachedTemplate;->lastChecked:J

    .line 373
    invoke-direct/range {p0 .. p3}, Lfreemarker/cache/TemplateCache;->lookupTemplate(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;)Lfreemarker/cache/TemplateLookupResult;

    move-result-object v2
    :try_end_c2
    .catch Ljava/lang/RuntimeException; {:try_start_92 .. :try_end_c2} :catch_1c1
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_c2} :catch_1bc
    .catchall {:try_start_92 .. :try_end_c2} :catchall_1b8

    .line 376
    :try_start_c2
    invoke-virtual {v2}, Lfreemarker/cache/TemplateLookupResult;->isPositive()Z

    move-result v4

    if-nez v4, :cond_f6

    if-eqz v6, :cond_e0

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " no source found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    :cond_e0
    const/4 v1, 0x0

    .line 380
    invoke-direct {v10, v9, v11, v1}, Lfreemarker/cache/TemplateCache;->storeNegativeLookup(Lfreemarker/cache/TemplateCache$TemplateKey;Lfreemarker/cache/TemplateCache$CachedTemplate;Ljava/lang/Exception;)V
    :try_end_e4
    .catch Ljava/lang/RuntimeException; {:try_start_c2 .. :try_end_e4} :catch_1b3
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_e4} :catch_1ae
    .catchall {:try_start_c2 .. :try_end_e4} :catchall_2a0

    if-eqz v2, :cond_f5

    .line 458
    invoke-virtual {v2}, Lfreemarker/cache/TemplateLookupResult;->isPositive()Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 459
    iget-object v0, v10, Lfreemarker/cache/TemplateCache;->templateLoader:Lfreemarker/cache/TemplateLoader;

    invoke-virtual {v2}, Lfreemarker/cache/TemplateLookupResult;->getTemplateSource()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lfreemarker/cache/TemplateLoader;->closeTemplateSource(Ljava/lang/Object;)V

    :cond_f5
    return-object v1

    .line 386
    :cond_f6
    :try_start_f6
    invoke-virtual {v2}, Lfreemarker/cache/TemplateLookupResult;->getTemplateSource()Ljava/lang/Object;

    move-result-object v4

    .line 387
    iget-object v12, v10, Lfreemarker/cache/TemplateCache;->templateLoader:Lfreemarker/cache/TemplateLoader;

    invoke-interface {v12, v4}, Lfreemarker/cache/TemplateLoader;->getLastModified(Ljava/lang/Object;)J

    move-result-wide v12

    .line 388
    iget-wide v14, v11, Lfreemarker/cache/TemplateCache$CachedTemplate;->lastModified:J

    cmp-long v14, v12, v14

    if-nez v14, :cond_107

    goto :goto_109

    :cond_107
    move/from16 v7, v16

    .line 389
    :goto_109
    iget-object v14, v11, Lfreemarker/cache/TemplateCache$CachedTemplate;->source:Ljava/lang/Object;

    invoke-virtual {v4, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v7, :cond_14e

    if-eqz v14, :cond_14e

    if-eqz v6, :cond_135

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": using cached since "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hasn\'t changed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    .line 394
    :cond_135
    invoke-direct {v10, v9, v11}, Lfreemarker/cache/TemplateCache;->storeCached(Lfreemarker/cache/TemplateCache$TemplateKey;Lfreemarker/cache/TemplateCache$CachedTemplate;)V

    .line 395
    iget-object v0, v11, Lfreemarker/cache/TemplateCache$CachedTemplate;->templateOrException:Ljava/lang/Object;

    check-cast v0, Lfreemarker/template/Template;
    :try_end_13c
    .catch Ljava/lang/RuntimeException; {:try_start_f6 .. :try_end_13c} :catch_1b3
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_13c} :catch_1ae
    .catchall {:try_start_f6 .. :try_end_13c} :catchall_2a0

    if-eqz v2, :cond_14d

    .line 458
    invoke-virtual {v2}, Lfreemarker/cache/TemplateLookupResult;->isPositive()Z

    move-result v1

    if-eqz v1, :cond_14d

    .line 459
    iget-object v1, v10, Lfreemarker/cache/TemplateCache;->templateLoader:Lfreemarker/cache/TemplateLoader;

    invoke-virtual {v2}, Lfreemarker/cache/TemplateLookupResult;->getTemplateSource()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lfreemarker/cache/TemplateLoader;->closeTemplateSource(Ljava/lang/Object;)V

    :cond_14d
    return-object v0

    :cond_14e
    if-eqz v6, :cond_1a9

    if-nez v14, :cond_181

    .line 398
    :try_start_152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newlyFoundSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 400
    invoke-static {v4}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cached.source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v11, Lfreemarker/cache/TemplateCache$CachedTemplate;->source:Ljava/lang/Object;

    .line 401
    invoke-static {v1}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-virtual {v5, v0}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1a9

    :cond_181
    if-nez v7, :cond_1a9

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cached.lastModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v14, v11, Lfreemarker/cache/TemplateCache$CachedTemplate;->lastModified:J

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " != source.lastModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V
    :try_end_1a9
    .catch Ljava/lang/RuntimeException; {:try_start_152 .. :try_end_1a9} :catch_1b3
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_1a9} :catch_1ae
    .catchall {:try_start_152 .. :try_end_1a9} :catchall_2a0

    :cond_1a9
    :goto_1a9
    move-wide v0, v12

    move-object v12, v11

    move-object v11, v2

    goto/16 :goto_215

    :catch_1ae
    move-exception v0

    move-object v7, v2

    :goto_1b0
    move-object v15, v9

    goto/16 :goto_2b0

    :catch_1b3
    move-exception v0

    move-object v7, v2

    :goto_1b5
    move-object v15, v9

    goto/16 :goto_2ba

    :catchall_1b8
    move-exception v0

    const/4 v7, 0x0

    goto/16 :goto_2c1

    :catch_1bc
    move-exception v0

    :goto_1bd
    move-object v15, v9

    const/4 v7, 0x0

    goto/16 :goto_2b0

    :catch_1c1
    move-exception v0

    move-object v15, v9

    const/4 v7, 0x0

    goto/16 :goto_2ba

    :cond_1c6
    if-eqz v6, :cond_1de

    .line 411
    :try_start_1c8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; will try to load it."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V
    :try_end_1de
    .catch Ljava/lang/RuntimeException; {:try_start_1c8 .. :try_end_1de} :catch_1c1
    .catch Ljava/io/IOException; {:try_start_1c8 .. :try_end_1de} :catch_1bc
    .catchall {:try_start_1c8 .. :try_end_1de} :catchall_1b8

    .line 417
    :cond_1de
    :try_start_1de
    new-instance v1, Lfreemarker/cache/TemplateCache$CachedTemplate;
    :try_end_1e0
    .catch Ljava/lang/RuntimeException; {:try_start_1de .. :try_end_1e0} :catch_2b6
    .catch Ljava/io/IOException; {:try_start_1de .. :try_end_1e0} :catch_2ac
    .catchall {:try_start_1de .. :try_end_1e0} :catchall_2a8

    const/4 v2, 0x0

    :try_start_1e1
    invoke-direct {v1, v2}, Lfreemarker/cache/TemplateCache$CachedTemplate;-><init>(Lfreemarker/cache/TemplateCache$1;)V
    :try_end_1e4
    .catch Ljava/lang/RuntimeException; {:try_start_1e1 .. :try_end_1e4} :catch_2a5
    .catch Ljava/io/IOException; {:try_start_1e1 .. :try_end_1e4} :catch_2a2
    .catchall {:try_start_1e1 .. :try_end_1e4} :catchall_2a0

    .line 418
    :try_start_1e4
    iput-wide v12, v1, Lfreemarker/cache/TemplateCache$CachedTemplate;->lastChecked:J

    .line 420
    invoke-direct/range {p0 .. p3}, Lfreemarker/cache/TemplateCache;->lookupTemplate(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;)Lfreemarker/cache/TemplateLookupResult;

    move-result-object v4
    :try_end_1ea
    .catch Ljava/lang/RuntimeException; {:try_start_1e4 .. :try_end_1ea} :catch_29c
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_1ea} :catch_298
    .catchall {:try_start_1e4 .. :try_end_1ea} :catchall_2a0

    .line 422
    :try_start_1ea
    invoke-virtual {v4}, Lfreemarker/cache/TemplateLookupResult;->isPositive()Z

    move-result v0
    :try_end_1ee
    .catch Ljava/lang/RuntimeException; {:try_start_1ea .. :try_end_1ee} :catch_293
    .catch Ljava/io/IOException; {:try_start_1ea .. :try_end_1ee} :catch_28e
    .catchall {:try_start_1ea .. :try_end_1ee} :catchall_28b

    if-nez v0, :cond_20d

    .line 423
    :try_start_1f0
    invoke-direct {v10, v9, v1, v2}, Lfreemarker/cache/TemplateCache;->storeNegativeLookup(Lfreemarker/cache/TemplateCache$TemplateKey;Lfreemarker/cache/TemplateCache$CachedTemplate;Ljava/lang/Exception;)V
    :try_end_1f3
    .catch Ljava/lang/RuntimeException; {:try_start_1f0 .. :try_end_1f3} :catch_209
    .catch Ljava/io/IOException; {:try_start_1f0 .. :try_end_1f3} :catch_205
    .catchall {:try_start_1f0 .. :try_end_1f3} :catchall_28b

    if-eqz v4, :cond_204

    .line 458
    invoke-virtual {v4}, Lfreemarker/cache/TemplateLookupResult;->isPositive()Z

    move-result v0

    if-eqz v0, :cond_204

    .line 459
    iget-object v0, v10, Lfreemarker/cache/TemplateCache;->templateLoader:Lfreemarker/cache/TemplateLoader;

    invoke-virtual {v4}, Lfreemarker/cache/TemplateLookupResult;->getTemplateSource()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lfreemarker/cache/TemplateLoader;->closeTemplateSource(Ljava/lang/Object;)V

    :cond_204
    return-object v2

    :catch_205
    move-exception v0

    move-object v11, v1

    move-object v7, v4

    goto :goto_1b0

    :catch_209
    move-exception v0

    move-object v11, v1

    move-object v7, v4

    goto :goto_1b5

    :cond_20d
    const-wide/high16 v11, -0x8000000000000000L

    .line 427
    :try_start_20f
    iput-wide v11, v1, Lfreemarker/cache/TemplateCache$CachedTemplate;->lastModified:J
    :try_end_211
    .catch Ljava/lang/RuntimeException; {:try_start_20f .. :try_end_211} :catch_293
    .catch Ljava/io/IOException; {:try_start_20f .. :try_end_211} :catch_28e
    .catchall {:try_start_20f .. :try_end_211} :catchall_28b

    move-object v12, v1

    move-object v11, v4

    const-wide/high16 v0, -0x8000000000000000L

    .line 430
    :goto_215
    :try_start_215
    invoke-virtual {v11}, Lfreemarker/cache/TemplateLookupResult;->getTemplateSource()Ljava/lang/Object;

    move-result-object v4

    .line 431
    iput-object v4, v12, Lfreemarker/cache/TemplateCache$CachedTemplate;->source:Ljava/lang/Object;

    if-eqz v6, :cond_23b

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    :cond_23b
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_247

    .line 438
    iget-object v0, v10, Lfreemarker/cache/TemplateCache;->templateLoader:Lfreemarker/cache/TemplateLoader;

    invoke-interface {v0, v4}, Lfreemarker/cache/TemplateLoader;->getLastModified(Ljava/lang/Object;)J

    move-result-wide v0

    :cond_247
    move-wide v13, v0

    .line 439
    iget-object v2, v10, Lfreemarker/cache/TemplateCache;->templateLoader:Lfreemarker/cache/TemplateLoader;

    .line 441
    invoke-virtual {v11}, Lfreemarker/cache/TemplateLookupResult;->getTemplateSourceName()Ljava/lang/String;

    move-result-object v5
    :try_end_24e
    .catch Ljava/lang/RuntimeException; {:try_start_215 .. :try_end_24e} :catch_286
    .catch Ljava/io/IOException; {:try_start_215 .. :try_end_24e} :catch_281
    .catchall {:try_start_215 .. :try_end_24e} :catchall_27d

    move-object/from16 v1, p0

    move-object v3, v4

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object v15, v9

    move/from16 v9, p5

    .line 439
    :try_start_25c
    invoke-direct/range {v1 .. v9}, Lfreemarker/cache/TemplateCache;->loadTemplate(Lfreemarker/cache/TemplateLoader;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)Lfreemarker/template/Template;

    move-result-object v0

    .line 443
    iput-object v0, v12, Lfreemarker/cache/TemplateCache$CachedTemplate;->templateOrException:Ljava/lang/Object;

    .line 444
    iput-wide v13, v12, Lfreemarker/cache/TemplateCache$CachedTemplate;->lastModified:J

    .line 445
    invoke-direct {v10, v15, v12}, Lfreemarker/cache/TemplateCache;->storeCached(Lfreemarker/cache/TemplateCache$TemplateKey;Lfreemarker/cache/TemplateCache$CachedTemplate;)V
    :try_end_267
    .catch Ljava/lang/RuntimeException; {:try_start_25c .. :try_end_267} :catch_27b
    .catch Ljava/io/IOException; {:try_start_25c .. :try_end_267} :catch_279
    .catchall {:try_start_25c .. :try_end_267} :catchall_27d

    if-eqz v11, :cond_278

    .line 458
    invoke-virtual {v11}, Lfreemarker/cache/TemplateLookupResult;->isPositive()Z

    move-result v1

    if-eqz v1, :cond_278

    .line 459
    iget-object v1, v10, Lfreemarker/cache/TemplateCache;->templateLoader:Lfreemarker/cache/TemplateLoader;

    invoke-virtual {v11}, Lfreemarker/cache/TemplateLookupResult;->getTemplateSource()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lfreemarker/cache/TemplateLoader;->closeTemplateSource(Ljava/lang/Object;)V

    :cond_278
    return-object v0

    :catch_279
    move-exception v0

    goto :goto_283

    :catch_27b
    move-exception v0

    goto :goto_288

    :catchall_27d
    move-exception v0

    move-object v7, v11

    goto/16 :goto_2c1

    :catch_281
    move-exception v0

    move-object v15, v9

    :goto_283
    move-object v7, v11

    move-object v11, v12

    goto :goto_2b0

    :catch_286
    move-exception v0

    move-object v15, v9

    :goto_288
    move-object v7, v11

    move-object v11, v12

    goto :goto_2ba

    :catchall_28b
    move-exception v0

    move-object v7, v4

    goto :goto_2c1

    :catch_28e
    move-exception v0

    move-object v15, v9

    move-object v11, v1

    move-object v7, v4

    goto :goto_2b0

    :catch_293
    move-exception v0

    move-object v15, v9

    move-object v11, v1

    move-object v7, v4

    goto :goto_2ba

    :catch_298
    move-exception v0

    move-object v15, v9

    move-object v11, v1

    goto :goto_2af

    :catch_29c
    move-exception v0

    move-object v15, v9

    move-object v11, v1

    goto :goto_2b9

    :catchall_2a0
    move-exception v0

    goto :goto_2aa

    :catch_2a2
    move-exception v0

    move-object v15, v9

    goto :goto_2af

    :catch_2a5
    move-exception v0

    move-object v15, v9

    goto :goto_2b9

    :catchall_2a8
    move-exception v0

    const/4 v2, 0x0

    :goto_2aa
    move-object v7, v2

    goto :goto_2c1

    :catch_2ac
    move-exception v0

    move-object v15, v9

    const/4 v2, 0x0

    :goto_2af
    move-object v7, v2

    :goto_2b0
    if-nez v16, :cond_2b5

    .line 454
    :try_start_2b2
    invoke-direct {v10, v15, v11, v0}, Lfreemarker/cache/TemplateCache;->storeNegativeLookup(Lfreemarker/cache/TemplateCache$TemplateKey;Lfreemarker/cache/TemplateCache$CachedTemplate;Ljava/lang/Exception;)V

    .line 456
    :cond_2b5
    throw v0

    :catch_2b6
    move-exception v0

    move-object v15, v9

    const/4 v2, 0x0

    :goto_2b9
    move-object v7, v2

    :goto_2ba
    if-eqz v11, :cond_2bf

    .line 449
    invoke-direct {v10, v15, v11, v0}, Lfreemarker/cache/TemplateCache;->storeNegativeLookup(Lfreemarker/cache/TemplateCache$TemplateKey;Lfreemarker/cache/TemplateCache$CachedTemplate;Ljava/lang/Exception;)V

    .line 451
    :cond_2bf
    throw v0
    :try_end_2c0
    .catchall {:try_start_2b2 .. :try_end_2c0} :catchall_2c0

    :catchall_2c0
    move-exception v0

    :goto_2c1
    if-eqz v7, :cond_2d2

    .line 458
    invoke-virtual {v7}, Lfreemarker/cache/TemplateLookupResult;->isPositive()Z

    move-result v1

    if-eqz v1, :cond_2d2

    .line 459
    iget-object v1, v10, Lfreemarker/cache/TemplateCache;->templateLoader:Lfreemarker/cache/TemplateLoader;

    invoke-virtual {v7}, Lfreemarker/cache/TemplateLookupResult;->getTemplateSource()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lfreemarker/cache/TemplateLoader;->closeTemplateSource(Ljava/lang/Object;)V

    .line 461
    :cond_2d2
    throw v0

    :catchall_2d3
    move-exception v0

    .line 338
    :try_start_2d4
    monitor-exit v11
    :try_end_2d5
    .catchall {:try_start_2d4 .. :try_end_2d5} :catchall_2d3

    throw v0
.end method

.method private loadTemplate(Lfreemarker/cache/TemplateLoader;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)Lfreemarker/template/Template;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v11, p4

    .line 529
    :try_start_8
    iget-object v0, v1, Lfreemarker/cache/TemplateCache;->templateConfigurations:Lfreemarker/cache/TemplateConfigurationFactory;

    if-eqz v0, :cond_11

    invoke-virtual {v0, v11, v3}, Lfreemarker/cache/TemplateConfigurationFactory;->get(Ljava/lang/String;Ljava/lang/Object;)Lfreemarker/core/TemplateConfiguration;

    move-result-object v0
    :try_end_10
    .catch Lfreemarker/cache/TemplateConfigurationFactoryException; {:try_start_8 .. :try_end_10} :catch_e8

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    move-object v12, v0

    if-eqz v12, :cond_33

    .line 535
    invoke-virtual {v12}, Lfreemarker/core/TemplateConfiguration;->isEncodingSet()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 536
    invoke-virtual {v12}, Lfreemarker/core/TemplateConfiguration;->getEncoding()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_20
    move-object/from16 v0, p7

    .line 538
    :goto_22
    invoke-virtual {v12}, Lfreemarker/core/TemplateConfiguration;->isLocaleSet()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 539
    invoke-virtual {v12}, Lfreemarker/core/TemplateConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v4

    move-object v14, v0

    move-object v13, v4

    goto :goto_37

    :cond_2f
    move-object/from16 v13, p5

    move-object v14, v0

    goto :goto_37

    :cond_33
    move-object/from16 v13, p5

    move-object/from16 v14, p7

    :goto_37
    if-eqz p8, :cond_a4

    .line 547
    :try_start_39
    invoke-interface {v2, v3, v14}, Lfreemarker/cache/TemplateLoader;->getReader(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v15
    :try_end_3d
    .catch Lfreemarker/template/Template$WrongEncodingException; {:try_start_39 .. :try_end_3d} :catch_56

    .line 549
    :try_start_3d
    new-instance v0, Lfreemarker/template/Template;

    iget-object v8, v1, Lfreemarker/cache/TemplateCache;->config:Lfreemarker/template/Configuration;

    move-object v4, v0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v15

    move-object v9, v12

    move-object v10, v14

    invoke-direct/range {v4 .. v10}, Lfreemarker/template/Template;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/Configuration;Lfreemarker/core/ParserConfiguration;Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_51

    .line 551
    :try_start_4c
    invoke-virtual {v15}, Ljava/io/Reader;->close()V

    goto/16 :goto_d0

    :catchall_51
    move-exception v0

    invoke-virtual {v15}, Ljava/io/Reader;->close()V

    .line 552
    throw v0
    :try_end_56
    .catch Lfreemarker/template/Template$WrongEncodingException; {:try_start_4c .. :try_end_56} :catch_56

    :catch_56
    move-exception v0

    .line 554
    invoke-virtual {v0}, Lfreemarker/template/Template$WrongEncodingException;->getTemplateSpecifiedEncoding()Ljava/lang/String;

    move-result-object v8

    .line 555
    sget-object v0, Lfreemarker/cache/TemplateCache;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v0}, Lfreemarker/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_89

    .line 556
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Initial encoding \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" was incorrect, re-reading with \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\". Template: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    .line 560
    :cond_89
    invoke-interface {v2, v3, v8}, Lfreemarker/cache/TemplateLoader;->getReader(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v9

    .line 562
    :try_start_8d
    new-instance v0, Lfreemarker/template/Template;

    iget-object v6, v1, Lfreemarker/cache/TemplateCache;->config:Lfreemarker/template/Configuration;

    move-object v2, v0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v9

    move-object v7, v12

    invoke-direct/range {v2 .. v8}, Lfreemarker/template/Template;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/Configuration;Lfreemarker/core/ParserConfiguration;Ljava/lang/String;)V
    :try_end_9b
    .catchall {:try_start_8d .. :try_end_9b} :catchall_9f

    .line 564
    invoke-virtual {v9}, Ljava/io/Reader;->close()V

    goto :goto_d0

    :catchall_9f
    move-exception v0

    invoke-virtual {v9}, Ljava/io/Reader;->close()V

    .line 565
    throw v0

    .line 569
    :cond_a4
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const/16 v4, 0x1000

    .line 570
    new-array v4, v4, [C

    .line 571
    invoke-interface {v2, v3, v14}, Lfreemarker/cache/TemplateLoader;->getReader(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v2

    .line 574
    :goto_b1
    :try_start_b1
    invoke-virtual {v2, v4}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-lez v3, :cond_bc

    const/4 v5, 0x0

    .line 576
    invoke-virtual {v0, v4, v5, v3}, Ljava/io/StringWriter;->write([CII)V
    :try_end_bb
    .catchall {:try_start_b1 .. :try_end_bb} :catchall_e3

    goto :goto_de

    :cond_bc
    if-gez v3, :cond_de

    .line 582
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 584
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lfreemarker/cache/TemplateCache;->config:Lfreemarker/template/Configuration;

    move-object/from16 v3, p3

    invoke-static {v3, v11, v0, v2}, Lfreemarker/template/Template;->getPlainTextTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfreemarker/template/Configuration;)Lfreemarker/template/Template;

    move-result-object v0

    .line 585
    invoke-virtual {v0, v14}, Lfreemarker/template/Template;->setEncoding(Ljava/lang/String;)V

    :goto_d0
    if-eqz v12, :cond_d5

    .line 590
    invoke-virtual {v12, v0}, Lfreemarker/core/TemplateConfiguration;->apply(Lfreemarker/template/Template;)V

    .line 593
    :cond_d5
    invoke-virtual {v0, v13}, Lfreemarker/template/Template;->setLocale(Ljava/util/Locale;)V

    move-object/from16 v5, p6

    .line 594
    invoke-virtual {v0, v5}, Lfreemarker/template/Template;->setCustomLookupCondition(Ljava/lang/Object;)V

    return-object v0

    :cond_de
    :goto_de
    move-object/from16 v3, p3

    move-object/from16 v5, p6

    goto :goto_b1

    :catchall_e3
    move-exception v0

    .line 582
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 583
    throw v0

    :catch_e8
    move-exception v0

    .line 531
    const-string v2, "Error while getting TemplateConfiguration; see cause exception."

    invoke-direct {v1, v2, v0}, Lfreemarker/cache/TemplateCache;->newIOException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private lookupTemplate(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;)Lfreemarker/cache/TemplateLookupResult;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 739
    iget-object v0, p0, Lfreemarker/cache/TemplateCache;->templateLookupStrategy:Lfreemarker/cache/TemplateLookupStrategy;

    new-instance v1, Lfreemarker/cache/TemplateCache$TemplateCacheTemplateLookupContext;

    invoke-direct {v1, p0, p1, p2, p3}, Lfreemarker/cache/TemplateCache$TemplateCacheTemplateLookupContext;-><init>(Lfreemarker/cache/TemplateCache;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lfreemarker/cache/TemplateLookupStrategy;->lookup(Lfreemarker/cache/TemplateLookupContext;)Lfreemarker/cache/TemplateLookupResult;

    move-result-object p1

    if-eqz p1, :cond_e

    return-object p1

    .line 742
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Lookup result shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private lookupTemplateWithAcquisitionStrategy(Ljava/lang/String;)Lfreemarker/cache/TemplateLookupResult;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2a

    .line 748
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    .line 751
    invoke-direct {p0, p1}, Lfreemarker/cache/TemplateCache;->findTemplateSource(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lfreemarker/cache/TemplateLookupResult;->from(Ljava/lang/String;Ljava/lang/Object;)Lfreemarker/cache/TemplateLookupResult;

    move-result-object p1

    return-object p1

    .line 753
    :cond_12
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, "/"

    invoke-direct {v0, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    .line 756
    :goto_1f
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 757
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 758
    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    if-eq v4, v1, :cond_36

    .line 760
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 762
    :cond_36
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 764
    :cond_3a
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_3e
    if-ne v4, v1, :cond_49

    .line 767
    invoke-direct {p0, p1}, Lfreemarker/cache/TemplateCache;->findTemplateSource(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lfreemarker/cache/TemplateLookupResult;->from(Ljava/lang/String;Ljava/lang/Object;)Lfreemarker/cache/TemplateLookupResult;

    move-result-object p1

    return-object p1

    :cond_49
    const/4 v0, 0x0

    .line 769
    invoke-direct {p0, v3, v0, v4}, Lfreemarker/cache/TemplateCache;->concatPath(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    .line 770
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lfreemarker/cache/TemplateCache;->concatPath(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v3

    .line 771
    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 772
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 774
    :cond_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 775
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 777
    :goto_79
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 778
    invoke-direct {p0, v2}, Lfreemarker/cache/TemplateCache;->findTemplateSource(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8c

    .line 780
    invoke-static {v2, v4}, Lfreemarker/cache/TemplateLookupResult;->from(Ljava/lang/String;Ljava/lang/Object;)Lfreemarker/cache/TemplateLookupResult;

    move-result-object p1

    return-object p1

    :cond_8c
    if-nez v0, :cond_93

    .line 783
    invoke-static {}, Lfreemarker/cache/TemplateLookupResult;->createNegativeResult()Lfreemarker/cache/TemplateLookupResult;

    move-result-object p1

    return-object p1

    :cond_93
    add-int/lit8 v0, v0, -0x2

    const/16 v2, 0x2f

    .line 785
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 786
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_79
.end method

.method private modifyForConfIcI(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 806
    :cond_4
    iget-object v0, p0, Lfreemarker/cache/TemplateCache;->config:Lfreemarker/template/Configuration;

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sget v1, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_21:I

    if-ge v0, v1, :cond_13

    return-object p1

    .line 810
    :cond_13
    instance-of v0, p1, Lfreemarker/cache/URLTemplateSource;

    if-eqz v0, :cond_25

    .line 811
    move-object v0, p1

    check-cast v0, Lfreemarker/cache/URLTemplateSource;

    .line 812
    invoke-virtual {v0}, Lfreemarker/cache/URLTemplateSource;->getUseCaches()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_33

    const/4 v1, 0x0

    .line 813
    invoke-virtual {v0, v1}, Lfreemarker/cache/URLTemplateSource;->setUseCaches(Z)V

    goto :goto_33

    .line 815
    :cond_25
    instance-of v0, p1, Lfreemarker/cache/MultiTemplateLoader$MultiSource;

    if-eqz v0, :cond_33

    .line 816
    move-object v0, p1

    check-cast v0, Lfreemarker/cache/MultiTemplateLoader$MultiSource;

    invoke-virtual {v0}, Lfreemarker/cache/MultiTemplateLoader$MultiSource;->getWrappedSource()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/cache/TemplateCache;->modifyForConfIcI(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    :goto_33
    return-object p1
.end method

.method private newIOException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/io/IOException;
    .registers 5

    if-nez p2, :cond_8

    .line 480
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 484
    :cond_8
    sget-object v0, Lfreemarker/cache/TemplateCache;->INIT_CAUSE:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_22

    .line 485
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 487
    :try_start_11
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_18} :catch_20
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_19

    goto :goto_54

    :catch_19
    move-exception p1

    .line 491
    new-instance p2, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {p2, p1}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_20
    move-exception p1

    .line 489
    throw p1

    .line 494
    :cond_22
    new-instance v1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\nCaused by: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 495
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :goto_54
    return-object v1
.end method

.method private storeCached(Lfreemarker/cache/TemplateCache$TemplateKey;Lfreemarker/cache/TemplateCache$CachedTemplate;)V
    .registers 5

    .line 514
    iget-boolean v0, p0, Lfreemarker/cache/TemplateCache;->isStorageConcurrent:Z

    if-eqz v0, :cond_a

    .line 515
    iget-object v0, p0, Lfreemarker/cache/TemplateCache;->storage:Lfreemarker/cache/CacheStorage;

    invoke-interface {v0, p1, p2}, Lfreemarker/cache/CacheStorage;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    .line 517
    :cond_a
    iget-object v0, p0, Lfreemarker/cache/TemplateCache;->storage:Lfreemarker/cache/CacheStorage;

    monitor-enter v0

    .line 518
    :try_start_d
    iget-object v1, p0, Lfreemarker/cache/TemplateCache;->storage:Lfreemarker/cache/CacheStorage;

    invoke-interface {v1, p1, p2}, Lfreemarker/cache/CacheStorage;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 519
    monitor-exit v0

    :goto_13
    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw p1
.end method

.method private storeNegativeLookup(Lfreemarker/cache/TemplateCache$TemplateKey;Lfreemarker/cache/TemplateCache$CachedTemplate;Ljava/lang/Exception;)V
    .registers 6

    .line 507
    iput-object p3, p2, Lfreemarker/cache/TemplateCache$CachedTemplate;->templateOrException:Ljava/lang/Object;

    const/4 p3, 0x0

    .line 508
    iput-object p3, p2, Lfreemarker/cache/TemplateCache$CachedTemplate;->source:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 509
    iput-wide v0, p2, Lfreemarker/cache/TemplateCache$CachedTemplate;->lastModified:J

    .line 510
    invoke-direct {p0, p1, p2}, Lfreemarker/cache/TemplateCache;->storeCached(Lfreemarker/cache/TemplateCache$TemplateKey;Lfreemarker/cache/TemplateCache$CachedTemplate;)V

    return-void
.end method

.method private throwLoadFailedException(Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    const-string v0, "There was an error loading the template on an earlier attempt; see cause exception."

    invoke-direct {p0, v0, p1}, Lfreemarker/cache/TemplateCache;->newIOException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public clear()V
    .registers 4

    .line 653
    iget-object v0, p0, Lfreemarker/cache/TemplateCache;->storage:Lfreemarker/cache/CacheStorage;

    monitor-enter v0

    .line 654
    :try_start_3
    iget-object v1, p0, Lfreemarker/cache/TemplateCache;->storage:Lfreemarker/cache/CacheStorage;

    invoke-interface {v1}, Lfreemarker/cache/CacheStorage;->clear()V

    .line 655
    iget-object v1, p0, Lfreemarker/cache/TemplateCache;->templateLoader:Lfreemarker/cache/TemplateLoader;

    instance-of v2, v1, Lfreemarker/cache/StatefulTemplateLoader;

    if-eqz v2, :cond_13

    .line 656
    check-cast v1, Lfreemarker/cache/StatefulTemplateLoader;

    invoke-interface {v1}, Lfreemarker/cache/StatefulTemplateLoader;->resetState()V

    .line 658
    :cond_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public getCacheStorage()Lfreemarker/cache/CacheStorage;
    .registers 2

    .line 216
    iget-object v0, p0, Lfreemarker/cache/TemplateCache;->storage:Lfreemarker/cache/CacheStorage;

    return-object v0
.end method

.method public getDelay()J
    .registers 3

    .line 605
    monitor-enter p0

    .line 606
    :try_start_1
    iget-wide v0, p0, Lfreemarker/cache/TemplateCache;->updateDelay:J

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    .line 607
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getLocalizedLookup()Z
    .registers 2

    .line 627
    monitor-enter p0

    .line 628
    :try_start_1
    iget-boolean v0, p0, Lfreemarker/cache/TemplateCache;->localizedLookup:Z

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    .line 629
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getTemplate(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    const-string v0, "name"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    const-string v0, "locale"

    invoke-static {v0, p2}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    const-string v0, "encoding"

    invoke-static {v0, p4}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 278
    :try_start_10
    iget-object v1, p0, Lfreemarker/cache/TemplateCache;->templateNameFormat:Lfreemarker/cache/TemplateNameFormat;

    invoke-virtual {v1, p1}, Lfreemarker/cache/TemplateNameFormat;->normalizeRootBasedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_16
    .catch Lfreemarker/template/MalformedTemplateNameException; {:try_start_10 .. :try_end_16} :catch_3e

    .line 288
    iget-object v1, p0, Lfreemarker/cache/TemplateCache;->templateLoader:Lfreemarker/cache/TemplateLoader;

    if-nez v1, :cond_22

    .line 289
    new-instance p2, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;

    const-string p3, "The TemplateLoader was null."

    invoke-direct {p2, p1, p3, v0}, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;Lfreemarker/cache/TemplateCache$1;)V

    return-object p2

    :cond_22
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .line 292
    invoke-direct/range {v2 .. v7}, Lfreemarker/cache/TemplateCache;->getTemplateInternal(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)Lfreemarker/template/Template;

    move-result-object p2

    if-eqz p2, :cond_34

    .line 293
    new-instance p1, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;

    invoke-direct {p1, p2, v0}, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;-><init>(Lfreemarker/template/Template;Lfreemarker/cache/TemplateCache$1;)V

    goto :goto_3d

    :cond_34
    new-instance p2, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;

    move-object p3, v0

    check-cast p3, Ljava/lang/String;

    invoke-direct {p2, p1, v0, v0}, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;Lfreemarker/cache/TemplateCache$1;)V

    move-object p1, p2

    :goto_3d
    return-object p1

    :catch_3e
    move-exception p1

    .line 281
    iget-object p2, p0, Lfreemarker/cache/TemplateCache;->templateNameFormat:Lfreemarker/cache/TemplateNameFormat;

    sget-object p3, Lfreemarker/cache/TemplateNameFormat;->DEFAULT_2_3_0:Lfreemarker/cache/TemplateNameFormat;

    if-ne p2, p3, :cond_59

    iget-object p2, p0, Lfreemarker/cache/TemplateCache;->config:Lfreemarker/template/Configuration;

    .line 282
    invoke-virtual {p2}, Lfreemarker/template/Configuration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object p2

    invoke-virtual {p2}, Lfreemarker/template/Version;->intValue()I

    move-result p2

    sget p3, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_4_0:I

    if-ge p2, p3, :cond_59

    .line 285
    new-instance p2, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;

    invoke-direct {p2, v0, p1, v0}, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;-><init>(Ljava/lang/String;Lfreemarker/template/MalformedTemplateNameException;Lfreemarker/cache/TemplateCache$1;)V

    return-object p2

    .line 283
    :cond_59
    throw p1
.end method

.method public getTemplate(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Z)Lfreemarker/template/Template;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 309
    invoke-virtual/range {v0 .. v5}, Lfreemarker/cache/TemplateCache;->getTemplate(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;->getTemplate()Lfreemarker/template/Template;

    move-result-object p1

    return-object p1
.end method

.method public getTemplateConfigurations()Lfreemarker/cache/TemplateConfigurationFactory;
    .registers 2

    .line 237
    iget-object v0, p0, Lfreemarker/cache/TemplateCache;->templateConfigurations:Lfreemarker/cache/TemplateConfigurationFactory;

    return-object v0
.end method

.method public getTemplateLoader()Lfreemarker/cache/TemplateLoader;
    .registers 2

    .line 212
    iget-object v0, p0, Lfreemarker/cache/TemplateCache;->templateLoader:Lfreemarker/cache/TemplateLoader;

    return-object v0
.end method

.method public getTemplateLookupStrategy()Lfreemarker/cache/TemplateLookupStrategy;
    .registers 2

    .line 223
    iget-object v0, p0, Lfreemarker/cache/TemplateCache;->templateLookupStrategy:Lfreemarker/cache/TemplateLookupStrategy;

    return-object v0
.end method

.method public getTemplateNameFormat()Lfreemarker/cache/TemplateNameFormat;
    .registers 2

    .line 230
    iget-object v0, p0, Lfreemarker/cache/TemplateCache;->templateNameFormat:Lfreemarker/cache/TemplateNameFormat;

    return-object v0
.end method

.method public removeTemplate(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_72

    if-eqz p2, :cond_6a

    if-eqz p4, :cond_62

    .line 690
    iget-object v0, p0, Lfreemarker/cache/TemplateCache;->templateNameFormat:Lfreemarker/cache/TemplateNameFormat;

    invoke-virtual {v0, p1}, Lfreemarker/cache/TemplateNameFormat;->normalizeRootBasedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_61

    .line 691
    iget-object v0, p0, Lfreemarker/cache/TemplateCache;->templateLoader:Lfreemarker/cache/TemplateLoader;

    if-eqz v0, :cond_61

    .line 692
    sget-object v0, Lfreemarker/cache/TemplateCache;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v0}, Lfreemarker/log/Logger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_25

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 694
    invoke-direct/range {v1 .. v6}, Lfreemarker/cache/TemplateCache;->buildDebugName(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    move-object v8, v1

    .line 696
    new-instance v9, Lfreemarker/cache/TemplateCache$TemplateKey;

    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lfreemarker/cache/TemplateCache$TemplateKey;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 698
    iget-boolean p1, p0, Lfreemarker/cache/TemplateCache;->isStorageConcurrent:Z

    if-eqz p1, :cond_3c

    .line 699
    iget-object p1, p0, Lfreemarker/cache/TemplateCache;->storage:Lfreemarker/cache/CacheStorage;

    invoke-interface {p1, v9}, Lfreemarker/cache/CacheStorage;->remove(Ljava/lang/Object;)V

    goto :goto_45

    .line 701
    :cond_3c
    iget-object p1, p0, Lfreemarker/cache/TemplateCache;->storage:Lfreemarker/cache/CacheStorage;

    monitor-enter p1

    .line 702
    :try_start_3f
    iget-object p2, p0, Lfreemarker/cache/TemplateCache;->storage:Lfreemarker/cache/CacheStorage;

    invoke-interface {p2, v9}, Lfreemarker/cache/CacheStorage;->remove(Ljava/lang/Object;)V

    .line 703
    monitor-exit p1
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_5e

    :goto_45
    if-eqz v7, :cond_61

    .line 706
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " was removed from the cache, if it was there"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    goto :goto_61

    :catchall_5e
    move-exception p2

    .line 703
    :try_start_5f
    monitor-exit p1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p2

    :cond_61
    :goto_61
    return-void

    .line 688
    :cond_62
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument \"encoding\" can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 685
    :cond_6a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument \"locale\" can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 682
    :cond_72
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument \"name\" can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeTemplate(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 667
    invoke-virtual/range {v0 .. v5}, Lfreemarker/cache/TemplateCache;->removeTemplate(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public setConfiguration(Lfreemarker/template/Configuration;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    iput-object p1, p0, Lfreemarker/cache/TemplateCache;->config:Lfreemarker/template/Configuration;

    .line 208
    invoke-virtual {p0}, Lfreemarker/cache/TemplateCache;->clear()V

    return-void
.end method

.method public setDelay(J)V
    .registers 3

    .line 617
    monitor-enter p0

    .line 618
    :try_start_1
    iput-wide p1, p0, Lfreemarker/cache/TemplateCache;->updateDelay:J

    .line 619
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public setLocalizedLookup(Z)V
    .registers 3

    .line 637
    monitor-enter p0

    .line 638
    :try_start_1
    iget-boolean v0, p0, Lfreemarker/cache/TemplateCache;->localizedLookup:Z

    if-eq v0, p1, :cond_a

    .line 639
    iput-boolean p1, p0, Lfreemarker/cache/TemplateCache;->localizedLookup:Z

    .line 640
    invoke-virtual {p0}, Lfreemarker/cache/TemplateCache;->clear()V

    .line 642
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

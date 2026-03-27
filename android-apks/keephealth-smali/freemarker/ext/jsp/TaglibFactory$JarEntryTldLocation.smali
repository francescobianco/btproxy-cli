.class abstract Lfreemarker/ext/jsp/TaglibFactory$JarEntryTldLocation;
.super Ljava/lang/Object;
.source "TaglibFactory.java"

# interfaces
.implements Lfreemarker/ext/jsp/TaglibFactory$TldLocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jsp/TaglibFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "JarEntryTldLocation"
.end annotation


# instance fields
.field private final entryPath:Ljava/lang/String;

.field private final entryUrl:Ljava/net/URL;

.field private final fallbackRawJarContentInputStreamFactory:Lfreemarker/ext/jsp/TaglibFactory$InputStreamFactory;

.field final synthetic this$0:Lfreemarker/ext/jsp/TaglibFactory;


# direct methods
.method public constructor <init>(Lfreemarker/ext/jsp/TaglibFactory;Ljava/net/URL;Lfreemarker/ext/jsp/TaglibFactory$InputStreamFactory;Ljava/lang/String;)V
    .registers 5

    .line 1295
    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$JarEntryTldLocation;->this$0:Lfreemarker/ext/jsp/TaglibFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_d

    .line 1297
    invoke-static {p3}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/Object;)V

    .line 1298
    invoke-static {p4}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/Object;)V

    .line 1301
    :cond_d
    iput-object p2, p0, Lfreemarker/ext/jsp/TaglibFactory$JarEntryTldLocation;->entryUrl:Ljava/net/URL;

    .line 1302
    iput-object p3, p0, Lfreemarker/ext/jsp/TaglibFactory$JarEntryTldLocation;->fallbackRawJarContentInputStreamFactory:Lfreemarker/ext/jsp/TaglibFactory$InputStreamFactory;

    if-eqz p4, :cond_19

    const/4 p1, 0x0

    .line 1303
    # invokes: Lfreemarker/ext/jsp/TaglibFactory;->normalizeJarEntryPath(Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static {p4, p1}, Lfreemarker/ext/jsp/TaglibFactory;->access$900(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$JarEntryTldLocation;->entryPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Jar\'s InputStreamFactory ("

    .line 1307
    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory$JarEntryTldLocation;->entryUrl:Ljava/net/URL;

    if-eqz v1, :cond_4c

    .line 1309
    :try_start_6
    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory$JarEntryTldLocation;->this$0:Lfreemarker/ext/jsp/TaglibFactory;

    iget-boolean v1, v1, Lfreemarker/ext/jsp/TaglibFactory;->test_emulateJarEntryUrlOpenStreamFails:Z

    if-nez v1, :cond_13

    .line 1312
    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory$JarEntryTldLocation;->entryUrl:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 1310
    :cond_13
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Test only"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1b} :catch_1b

    :catch_1b
    move-exception v1

    .line 1314
    iget-object v2, p0, Lfreemarker/ext/jsp/TaglibFactory$JarEntryTldLocation;->fallbackRawJarContentInputStreamFactory:Lfreemarker/ext/jsp/TaglibFactory$InputStreamFactory;

    if-nez v2, :cond_34

    .line 1316
    instance-of v0, v1, Ljava/io/IOException;

    if-nez v0, :cond_31

    .line 1319
    instance-of v0, v1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_2b

    .line 1320
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 1322
    :cond_2b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1317
    :cond_31
    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 1324
    :cond_34
    # getter for: Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;
    invoke-static {}, Lfreemarker/ext/jsp/TaglibFactory;->access$1000()Lfreemarker/log/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to open InputStream for URL (will try fallback stream): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lfreemarker/ext/jsp/TaglibFactory$JarEntryTldLocation;->entryUrl:Ljava/net/URL;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfreemarker/log/Logger;->error(Ljava/lang/String;)V

    .line 1330
    :cond_4c
    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory$JarEntryTldLocation;->entryPath:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_52

    goto :goto_75

    .line 1333
    :cond_52
    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory$JarEntryTldLocation;->entryUrl:Ljava/net/URL;

    if-eqz v1, :cond_fd

    .line 1336
    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    .line 1337
    const-string v3, "!/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_e8

    add-int/lit8 v3, v3, 0x2

    .line 1343
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1344
    # getter for: Lfreemarker/ext/jsp/TaglibFactory;->PLATFORM_FILE_ENCODING:Ljava/lang/String;
    invoke-static {}, Lfreemarker/ext/jsp/TaglibFactory;->access$1100()Ljava/lang/String;

    move-result-object v3

    .line 1342
    invoke-static {v1, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1341
    # invokes: Lfreemarker/ext/jsp/TaglibFactory;->normalizeJarEntryPath(Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static {v1, v2}, Lfreemarker/ext/jsp/TaglibFactory;->access$900(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    :goto_75
    const/4 v3, 0x0

    .line 1352
    :try_start_76
    iget-object v4, p0, Lfreemarker/ext/jsp/TaglibFactory$JarEntryTldLocation;->fallbackRawJarContentInputStreamFactory:Lfreemarker/ext/jsp/TaglibFactory$InputStreamFactory;

    invoke-interface {v4}, Lfreemarker/ext/jsp/TaglibFactory$InputStreamFactory;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_7c
    .catchall {:try_start_76 .. :try_end_7c} :catchall_db

    if-eqz v4, :cond_c0

    .line 1357
    :try_start_7e
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_83
    .catchall {:try_start_7e .. :try_end_83} :catchall_be

    .line 1359
    :cond_83
    :try_start_83
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_98

    .line 1363
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    # invokes: Lfreemarker/ext/jsp/TaglibFactory;->normalizeJarEntryPath(Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static {v3, v2}, Lfreemarker/ext/jsp/TaglibFactory;->access$900(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    return-object v0

    .line 1361
    :cond_98
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find JAR entry "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_bb
    .catchall {:try_start_83 .. :try_end_bb} :catchall_bb

    :catchall_bb
    move-exception v1

    move-object v3, v0

    goto :goto_dd

    :catchall_be
    move-exception v1

    goto :goto_dd

    .line 1354
    :cond_c0
    :try_start_c0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$JarEntryTldLocation;->fallbackRawJarContentInputStreamFactory:Lfreemarker/ext/jsp/TaglibFactory$InputStreamFactory;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") says the resource doesn\'t exist."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_db
    .catchall {:try_start_c0 .. :try_end_db} :catchall_be

    :catchall_db
    move-exception v1

    move-object v4, v3

    :goto_dd
    if-eqz v3, :cond_e2

    .line 1371
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V

    :cond_e2
    if-eqz v4, :cond_e7

    .line 1374
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1377
    :cond_e7
    throw v1

    .line 1339
    :cond_e8
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t extract jar entry path from: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1334
    :cond_fd
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Nothing to deduce jar entry path from."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getXmlSystemId()Ljava/lang/String;
    .registers 2

    .line 1381
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$JarEntryTldLocation;->entryUrl:Ljava/net/URL;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1386
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$JarEntryTldLocation;->entryUrl:Ljava/net/URL;

    if-eqz v0, :cond_9

    .line 1387
    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "jar:{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory$JarEntryTldLocation;->fallbackRawJarContentInputStreamFactory:Lfreemarker/ext/jsp/TaglibFactory$InputStreamFactory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory$JarEntryTldLocation;->entryPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_26
    return-object v0
.end method

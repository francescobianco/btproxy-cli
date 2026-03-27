.class public Lfreemarker/cache/FileTemplateLoader;
.super Ljava/lang/Object;
.source "FileTemplateLoader.java"

# interfaces
.implements Lfreemarker/cache/TemplateLoader;


# static fields
.field private static final CASE_CHECH_CACHE_HARD_SIZE:I = 0x32

.field private static final CASE_CHECK_CACHE__SOFT_SIZE:I = 0x3e8

.field private static final EMULATE_CASE_SENSITIVE_FILE_SYSTEM_DEFAULT:Z

.field private static final LOG:Lfreemarker/log/Logger;

.field private static final SEP_IS_SLASH:Z

.field public static SYSTEM_PROPERTY_NAME_EMULATE_CASE_SENSITIVE_FILE_SYSTEM:Ljava/lang/String; = "org.freemarker.emulateCaseSensitiveFileSystem"


# instance fields
.field public final baseDir:Ljava/io/File;

.field private final canonicalBasePath:Ljava/lang/String;

.field private correctCasePaths:Lfreemarker/cache/MruCacheStorage;

.field private emulateCaseSensitiveFileSystem:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 51
    const-string v0, "org.freemarker.emulateCaseSensitiveFileSystem"

    .line 55
    const-string v1, "false"

    invoke-static {v0, v1}, Lfreemarker/template/utility/SecurityUtilities;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 59
    :try_start_9
    invoke-static {v0}, Lfreemarker/template/utility/StringUtil;->getYesNo(Ljava/lang/String;)Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_d} :catch_e

    goto :goto_f

    :catch_e
    move v0, v1

    .line 63
    :goto_f
    sput-boolean v0, Lfreemarker/cache/FileTemplateLoader;->EMULATE_CASE_SENSITIVE_FILE_SYSTEM_DEFAULT:Z

    .line 68
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_18

    const/4 v1, 0x1

    :cond_18
    sput-boolean v1, Lfreemarker/cache/FileTemplateLoader;->SEP_IS_SLASH:Z

    .line 70
    const-string v0, "freemarker.cache"

    invoke-static {v0}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v0

    sput-object v0, Lfreemarker/cache/FileTemplateLoader;->LOG:Lfreemarker/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    new-instance v0, Ljava/io/File;

    const-string v1, "user.dir"

    invoke-static {v1}, Lfreemarker/template/utility/SecurityUtilities;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lfreemarker/cache/FileTemplateLoader;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0}, Lfreemarker/cache/FileTemplateLoader;-><init>(Ljava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    :try_start_3
    new-instance v0, Lfreemarker/cache/FileTemplateLoader$1;

    invoke-direct {v0, p0, p1, p2}, Lfreemarker/cache/FileTemplateLoader$1;-><init>(Lfreemarker/cache/FileTemplateLoader;Ljava/io/File;Z)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 144
    aget-object p2, p1, p2

    check-cast p2, Ljava/io/File;

    iput-object p2, p0, Lfreemarker/cache/FileTemplateLoader;->baseDir:Ljava/io/File;

    const/4 p2, 0x1

    .line 145
    aget-object p1, p1, p2

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lfreemarker/cache/FileTemplateLoader;->canonicalBasePath:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lfreemarker/cache/FileTemplateLoader;->getEmulateCaseSensitiveFileSystemDefault()Z

    move-result p1

    invoke-virtual {p0, p1}, Lfreemarker/cache/FileTemplateLoader;->setEmulateCaseSensitiveFileSystem(Z)V
    :try_end_25
    .catch Ljava/security/PrivilegedActionException; {:try_start_3 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p1

    .line 149
    invoke-virtual {p1}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 45
    sget-boolean v0, Lfreemarker/cache/FileTemplateLoader;->SEP_IS_SLASH:Z

    return v0
.end method

.method static synthetic access$100(Lfreemarker/cache/FileTemplateLoader;)Ljava/lang/String;
    .registers 1

    .line 45
    iget-object p0, p0, Lfreemarker/cache/FileTemplateLoader;->canonicalBasePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lfreemarker/cache/FileTemplateLoader;)Z
    .registers 1

    .line 45
    iget-boolean p0, p0, Lfreemarker/cache/FileTemplateLoader;->emulateCaseSensitiveFileSystem:Z

    return p0
.end method

.method static synthetic access$300(Lfreemarker/cache/FileTemplateLoader;Ljava/io/File;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Lfreemarker/cache/FileTemplateLoader;->isNameCaseCorrect(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private isNameCaseCorrect(Ljava/io/File;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lfreemarker/cache/FileTemplateLoader;->correctCasePaths:Lfreemarker/cache/MruCacheStorage;

    monitor-enter v1

    .line 217
    :try_start_7
    iget-object v2, p0, Lfreemarker/cache/FileTemplateLoader;->correctCasePaths:Lfreemarker/cache/MruCacheStorage;

    invoke-virtual {v2, v0}, Lfreemarker/cache/MruCacheStorage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_12

    .line 218
    monitor-exit v1

    return v3

    .line 220
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_81

    .line 222
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_72

    .line 224
    iget-object v2, p0, Lfreemarker/cache/FileTemplateLoader;->baseDir:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_29

    invoke-direct {p0, v1}, Lfreemarker/cache/FileTemplateLoader;->isNameCaseCorrect(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_29

    return v4

    .line 228
    :cond_29
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_72

    .line 230
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    move v2, v4

    move v5, v2

    :goto_35
    if-nez v2, :cond_46

    .line 233
    array-length v6, v1

    if-ge v5, v6, :cond_46

    .line 234
    aget-object v6, v1, v5

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    move v2, v3

    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :cond_46
    if-nez v2, :cond_72

    move v2, v4

    .line 241
    :goto_49
    array-length v5, v1

    if-ge v2, v5, :cond_72

    .line 242
    aget-object v5, v1, v2

    .line 243
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 244
    sget-object p1, Lfreemarker/cache/FileTemplateLoader;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {p1}, Lfreemarker/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Emulating file-not-found because of letter case differences to the real file, for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    :cond_6e
    return v4

    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 255
    :cond_72
    iget-object p1, p0, Lfreemarker/cache/FileTemplateLoader;->correctCasePaths:Lfreemarker/cache/MruCacheStorage;

    monitor-enter p1

    .line 256
    :try_start_75
    iget-object v1, p0, Lfreemarker/cache/FileTemplateLoader;->correctCasePaths:Lfreemarker/cache/MruCacheStorage;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lfreemarker/cache/MruCacheStorage;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 257
    monitor-exit p1

    return v3

    :catchall_7e
    move-exception v0

    monitor-exit p1
    :try_end_80
    .catchall {:try_start_75 .. :try_end_80} :catchall_7e

    throw v0

    :catchall_81
    move-exception p1

    .line 220
    :try_start_82
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw p1
.end method


# virtual methods
.method public closeTemplateSource(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public findTemplateSource(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    :try_start_0
    new-instance v0, Lfreemarker/cache/FileTemplateLoader$2;

    invoke-direct {v0, p0, p1}, Lfreemarker/cache/FileTemplateLoader$2;-><init>(Lfreemarker/cache/FileTemplateLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p1
    :try_end_9
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_9} :catch_a

    return-object p1

    :catch_a
    move-exception p1

    .line 182
    invoke-virtual {p1}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
.end method

.method public getBaseDirectory()Ljava/io/File;
    .registers 2

    .line 272
    iget-object v0, p0, Lfreemarker/cache/FileTemplateLoader;->baseDir:Ljava/io/File;

    return-object v0
.end method

.method public getEmulateCaseSensitiveFileSystem()Z
    .registers 2

    .line 307
    iget-boolean v0, p0, Lfreemarker/cache/FileTemplateLoader;->emulateCaseSensitiveFileSystem:Z

    return v0
.end method

.method protected getEmulateCaseSensitiveFileSystemDefault()Z
    .registers 2

    .line 319
    sget-boolean v0, Lfreemarker/cache/FileTemplateLoader;->EMULATE_CASE_SENSITIVE_FILE_SYSTEM_DEFAULT:Z

    return v0
.end method

.method public getLastModified(Ljava/lang/Object;)J
    .registers 4

    .line 187
    new-instance v0, Lfreemarker/cache/FileTemplateLoader$3;

    invoke-direct {v0, p0, p1}, Lfreemarker/cache/FileTemplateLoader$3;-><init>(Lfreemarker/cache/FileTemplateLoader;Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 191
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReader(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/Reader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    :try_start_0
    new-instance v0, Lfreemarker/cache/FileTemplateLoader$4;

    invoke-direct {v0, p0, p1, p2}, Lfreemarker/cache/FileTemplateLoader$4;-><init>(Lfreemarker/cache/FileTemplateLoader;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Reader;
    :try_end_b
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p1

    :catch_c
    move-exception p1

    .line 207
    invoke-virtual {p1}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
.end method

.method public setEmulateCaseSensitiveFileSystem(Z)V
    .registers 5

    if-eqz p1, :cond_12

    .line 291
    iget-object v0, p0, Lfreemarker/cache/FileTemplateLoader;->correctCasePaths:Lfreemarker/cache/MruCacheStorage;

    if-nez v0, :cond_15

    .line 292
    new-instance v0, Lfreemarker/cache/MruCacheStorage;

    const/16 v1, 0x32

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v2}, Lfreemarker/cache/MruCacheStorage;-><init>(II)V

    iput-object v0, p0, Lfreemarker/cache/FileTemplateLoader;->correctCasePaths:Lfreemarker/cache/MruCacheStorage;

    goto :goto_15

    :cond_12
    const/4 v0, 0x0

    .line 295
    iput-object v0, p0, Lfreemarker/cache/FileTemplateLoader;->correctCasePaths:Lfreemarker/cache/MruCacheStorage;

    .line 298
    :cond_15
    :goto_15
    iput-boolean p1, p0, Lfreemarker/cache/FileTemplateLoader;->emulateCaseSensitiveFileSystem:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lfreemarker/cache/TemplateLoaderUtils;->getClassNameForToString(Lfreemarker/cache/TemplateLoader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(baseDir=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/cache/FileTemplateLoader;->baseDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lfreemarker/cache/FileTemplateLoader;->canonicalBasePath:Ljava/lang/String;

    const-string v3, ""

    if-eqz v2, :cond_3b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ", canonicalBasePath=\""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lfreemarker/cache/FileTemplateLoader;->canonicalBasePath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3c

    :cond_3b
    move-object v1, v3

    :goto_3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lfreemarker/cache/FileTemplateLoader;->emulateCaseSensitiveFileSystem:Z

    if-eqz v1, :cond_46

    const-string v3, ", emulateCaseSensitiveFileSystem=true"

    :cond_46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

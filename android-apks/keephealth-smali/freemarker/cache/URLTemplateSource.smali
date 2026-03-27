.class Lfreemarker/cache/URLTemplateSource;
.super Ljava/lang/Object;
.source "URLTemplateSource.java"


# instance fields
.field private conn:Ljava/net/URLConnection;

.field private inputStream:Ljava/io/InputStream;

.field private final url:Ljava/net/URL;

.field private useCaches:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Ljava/net/URL;Ljava/lang/Boolean;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lfreemarker/cache/URLTemplateSource;->url:Ljava/net/URL;

    .line 43
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/cache/URLTemplateSource;->conn:Ljava/net/URLConnection;

    .line 44
    iput-object p2, p0, Lfreemarker/cache/URLTemplateSource;->useCaches:Ljava/lang/Boolean;

    if-eqz p2, :cond_16

    .line 46
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    :cond_16
    return-void
.end method


# virtual methods
.method close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 123
    :try_start_1
    iget-object v1, p0, Lfreemarker/cache/URLTemplateSource;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_9

    .line 124
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_12

    .line 126
    :cond_9
    iget-object v1, p0, Lfreemarker/cache/URLTemplateSource;->conn:Ljava/net/URLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_17

    .line 129
    :goto_12
    iput-object v0, p0, Lfreemarker/cache/URLTemplateSource;->inputStream:Ljava/io/InputStream;

    .line 130
    iput-object v0, p0, Lfreemarker/cache/URLTemplateSource;->conn:Ljava/net/URLConnection;

    return-void

    :catchall_17
    move-exception v1

    .line 129
    iput-object v0, p0, Lfreemarker/cache/URLTemplateSource;->inputStream:Ljava/io/InputStream;

    .line 130
    iput-object v0, p0, Lfreemarker/cache/URLTemplateSource;->conn:Ljava/net/URLConnection;

    .line 131
    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 52
    instance-of v0, p1, Lfreemarker/cache/URLTemplateSource;

    if-eqz v0, :cond_f

    .line 53
    iget-object v0, p0, Lfreemarker/cache/URLTemplateSource;->url:Ljava/net/URL;

    check-cast p1, Lfreemarker/cache/URLTemplateSource;

    iget-object p1, p1, Lfreemarker/cache/URLTemplateSource;->url:Ljava/net/URL;

    invoke-virtual {v0, p1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lfreemarker/cache/URLTemplateSource;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_f

    .line 111
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_7

    .line 115
    :catch_7
    iget-object v0, p0, Lfreemarker/cache/URLTemplateSource;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/cache/URLTemplateSource;->conn:Ljava/net/URLConnection;

    .line 117
    :cond_f
    iget-object v0, p0, Lfreemarker/cache/URLTemplateSource;->conn:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/cache/URLTemplateSource;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method getUseCaches()Ljava/lang/Boolean;
    .registers 2

    .line 135
    iget-object v0, p0, Lfreemarker/cache/URLTemplateSource;->useCaches:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 61
    iget-object v0, p0, Lfreemarker/cache/URLTemplateSource;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->hashCode()I

    move-result v0

    return v0
.end method

.method lastModified()J
    .registers 6

    .line 70
    iget-object v0, p0, Lfreemarker/cache/URLTemplateSource;->conn:Ljava/net/URLConnection;

    instance-of v1, v0, Ljava/net/JarURLConnection;

    const-string v2, "file"

    const-wide/16 v3, -0x1

    if-eqz v1, :cond_50

    .line 75
    check-cast v0, Ljava/net/JarURLConnection;

    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 78
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0

    :cond_28
    const/4 v1, 0x0

    .line 83
    :try_start_29
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v2
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_31} :catch_46
    .catchall {:try_start_29 .. :try_end_31} :catchall_3b

    if-eqz v1, :cond_3a

    .line 89
    :try_start_33
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3a} :catch_3a

    :catch_3a
    :cond_3a
    return-wide v2

    :catchall_3b
    move-exception v0

    if-eqz v1, :cond_45

    :try_start_3e
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_45} :catch_45

    .line 91
    :catch_45
    :cond_45
    throw v0

    :catch_46
    if-eqz v1, :cond_4f

    .line 89
    :try_start_48
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4f} :catch_4f

    :catch_4f
    :cond_4f
    return-wide v3

    .line 94
    :cond_50
    invoke-virtual {v0}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v0

    cmp-long v3, v0, v3

    if-nez v3, :cond_73

    .line 95
    iget-object v3, p0, Lfreemarker/cache/URLTemplateSource;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 99
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lfreemarker/cache/URLTemplateSource;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    :cond_73
    return-wide v0
.end method

.method setUseCaches(Z)V
    .registers 3

    .line 139
    iget-object v0, p0, Lfreemarker/cache/URLTemplateSource;->conn:Ljava/net/URLConnection;

    if-eqz v0, :cond_d

    .line 140
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 141
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/cache/URLTemplateSource;->useCaches:Ljava/lang/Boolean;

    :cond_d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lfreemarker/cache/URLTemplateSource;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lfreemarker/template/utility/ToCanonical;
.super Ljava/lang/Object;
.source "ToCanonical.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static config:Lfreemarker/template/Configuration;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    invoke-static {}, Lfreemarker/template/Configuration;->getDefaultConfiguration()Lfreemarker/template/Configuration;

    move-result-object v0

    sput-object v0, Lfreemarker/template/utility/ToCanonical;->config:Lfreemarker/template/Configuration;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertFile(Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    .line 64
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    .line 66
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".canonical"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    sget-object v2, Lfreemarker/template/utility/ToCanonical;->config:Lfreemarker/template/Configuration;

    invoke-virtual {v2, v0}, Lfreemarker/template/Configuration;->setDirectoryForTemplateLoading(Ljava/io/File;)V

    .line 68
    sget-object v0, Lfreemarker/template/utility/ToCanonical;->config:Lfreemarker/template/Configuration;

    invoke-virtual {v0, p0}, Lfreemarker/template/Configuration;->getTemplate(Ljava/lang/String;)Lfreemarker/template/Template;

    move-result-object p0

    .line 69
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 71
    :try_start_34
    invoke-virtual {p0, v0}, Lfreemarker/template/Template;->dump(Ljava/io/Writer;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3b

    .line 73
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    return-void

    :catchall_3b
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 74
    throw p0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    sget-object v0, Lfreemarker/template/utility/ToCanonical;->config:Lfreemarker/template/Configuration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfreemarker/template/Configuration;->setWhitespaceStripping(Z)V

    .line 45
    array-length v0, p0

    if-nez v0, :cond_c

    .line 46
    invoke-static {}, Lfreemarker/template/utility/ToCanonical;->usage()V

    .line 48
    :cond_c
    :goto_c
    array-length v0, p0

    if-ge v1, v0, :cond_55

    .line 49
    new-instance v0, Ljava/io/File;

    aget-object v2, p0, v1

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_36

    .line 51
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "File "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    :cond_36
    :try_start_36
    invoke-static {v0}, Lfreemarker/template/utility/ToCanonical;->convertFile(Ljava/io/File;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_52

    :catch_3a
    move-exception v2

    .line 56
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error converting file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_55
    return-void
.end method

.method static usage()V
    .registers 2

    .line 78
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage: java freemarker.template.utility.ToCanonical <filename(s)>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

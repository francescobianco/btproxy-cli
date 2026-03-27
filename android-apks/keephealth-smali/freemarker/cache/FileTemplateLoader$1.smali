.class Lfreemarker/cache/FileTemplateLoader$1;
.super Ljava/lang/Object;
.source "FileTemplateLoader.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/cache/FileTemplateLoader;-><init>(Ljava/io/File;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/cache/FileTemplateLoader;

.field final synthetic val$baseDir:Ljava/io/File;

.field final synthetic val$disableCanonicalPathCheck:Z


# direct methods
.method constructor <init>(Lfreemarker/cache/FileTemplateLoader;Ljava/io/File;Z)V
    .registers 4

    .line 119
    iput-object p1, p0, Lfreemarker/cache/FileTemplateLoader$1;->this$0:Lfreemarker/cache/FileTemplateLoader;

    iput-object p2, p0, Lfreemarker/cache/FileTemplateLoader$1;->val$baseDir:Ljava/io/File;

    iput-boolean p3, p0, Lfreemarker/cache/FileTemplateLoader$1;->val$disableCanonicalPathCheck:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lfreemarker/cache/FileTemplateLoader$1;->run()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public run()[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lfreemarker/cache/FileTemplateLoader$1;->val$baseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 124
    iget-object v0, p0, Lfreemarker/cache/FileTemplateLoader$1;->val$baseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v0, 0x2

    .line 127
    new-array v0, v0, [Ljava/lang/Object;

    .line 128
    iget-boolean v1, p0, Lfreemarker/cache/FileTemplateLoader$1;->val$disableCanonicalPathCheck:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_21

    .line 129
    iget-object v1, p0, Lfreemarker/cache/FileTemplateLoader$1;->val$baseDir:Ljava/io/File;

    aput-object v1, v0, v3

    const/4 v1, 0x0

    .line 130
    aput-object v1, v0, v2

    goto :goto_4d

    .line 132
    :cond_21
    iget-object v1, p0, Lfreemarker/cache/FileTemplateLoader$1;->val$baseDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    aput-object v1, v0, v3

    .line 133
    move-object v3, v1

    check-cast v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 136
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    :cond_4b
    aput-object v1, v0, v2

    :goto_4d
    return-object v0

    .line 125
    :cond_4e
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfreemarker/cache/FileTemplateLoader$1;->val$baseDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a directory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_69
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfreemarker/cache/FileTemplateLoader$1;->val$baseDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

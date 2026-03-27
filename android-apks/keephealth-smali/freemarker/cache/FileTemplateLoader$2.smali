.class Lfreemarker/cache/FileTemplateLoader$2;
.super Ljava/lang/Object;
.source "FileTemplateLoader.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/cache/FileTemplateLoader;->findTemplateSource(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/cache/FileTemplateLoader;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lfreemarker/cache/FileTemplateLoader;Ljava/lang/String;)V
    .registers 3

    .line 155
    iput-object p1, p0, Lfreemarker/cache/FileTemplateLoader$2;->this$0:Lfreemarker/cache/FileTemplateLoader;

    iput-object p2, p0, Lfreemarker/cache/FileTemplateLoader$2;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/io/File;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lfreemarker/cache/FileTemplateLoader$2;->this$0:Lfreemarker/cache/FileTemplateLoader;

    iget-object v1, v1, Lfreemarker/cache/FileTemplateLoader;->baseDir:Ljava/io/File;

    # getter for: Lfreemarker/cache/FileTemplateLoader;->SEP_IS_SLASH:Z
    invoke-static {}, Lfreemarker/cache/FileTemplateLoader;->access$000()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lfreemarker/cache/FileTemplateLoader$2;->val$name:Ljava/lang/String;

    goto :goto_19

    :cond_f
    iget-object v2, p0, Lfreemarker/cache/FileTemplateLoader$2;->val$name:Ljava/lang/String;

    const/16 v3, 0x2f

    sget-char v4, Ljava/io/File;->separatorChar:C

    .line 158
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    :goto_19
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_24

    return-object v2

    .line 165
    :cond_24
    iget-object v1, p0, Lfreemarker/cache/FileTemplateLoader$2;->this$0:Lfreemarker/cache/FileTemplateLoader;

    # getter for: Lfreemarker/cache/FileTemplateLoader;->canonicalBasePath:Ljava/lang/String;
    invoke-static {v1}, Lfreemarker/cache/FileTemplateLoader;->access$100(Lfreemarker/cache/FileTemplateLoader;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 167
    iget-object v3, p0, Lfreemarker/cache/FileTemplateLoader$2;->this$0:Lfreemarker/cache/FileTemplateLoader;

    # getter for: Lfreemarker/cache/FileTemplateLoader;->canonicalBasePath:Ljava/lang/String;
    invoke-static {v3}, Lfreemarker/cache/FileTemplateLoader;->access$100(Lfreemarker/cache/FileTemplateLoader;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    goto :goto_6e

    .line 168
    :cond_3d
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " resolves to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " which  doesn\'t start with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/cache/FileTemplateLoader$2;->this$0:Lfreemarker/cache/FileTemplateLoader;

    .line 170
    # getter for: Lfreemarker/cache/FileTemplateLoader;->canonicalBasePath:Ljava/lang/String;
    invoke-static {v1}, Lfreemarker/cache/FileTemplateLoader;->access$100(Lfreemarker/cache/FileTemplateLoader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 174
    :cond_6e
    :goto_6e
    iget-object v1, p0, Lfreemarker/cache/FileTemplateLoader$2;->this$0:Lfreemarker/cache/FileTemplateLoader;

    # getter for: Lfreemarker/cache/FileTemplateLoader;->emulateCaseSensitiveFileSystem:Z
    invoke-static {v1}, Lfreemarker/cache/FileTemplateLoader;->access$200(Lfreemarker/cache/FileTemplateLoader;)Z

    move-result v1

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lfreemarker/cache/FileTemplateLoader$2;->this$0:Lfreemarker/cache/FileTemplateLoader;

    # invokes: Lfreemarker/cache/FileTemplateLoader;->isNameCaseCorrect(Ljava/io/File;)Z
    invoke-static {v1, v0}, Lfreemarker/cache/FileTemplateLoader;->access$300(Lfreemarker/cache/FileTemplateLoader;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_7f

    return-object v2

    :cond_7f
    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lfreemarker/cache/FileTemplateLoader$2;->run()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

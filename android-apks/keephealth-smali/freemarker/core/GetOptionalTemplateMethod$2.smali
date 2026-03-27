.class Lfreemarker/core/GetOptionalTemplateMethod$2;
.super Ljava/lang/Object;
.source "GetOptionalTemplateMethod.java"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/GetOptionalTemplateMethod;->exec(Ljava/util/List;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/core/GetOptionalTemplateMethod;

.field final synthetic val$env:Lfreemarker/core/Environment;

.field final synthetic val$template:Lfreemarker/template/Template;


# direct methods
.method constructor <init>(Lfreemarker/core/GetOptionalTemplateMethod;Lfreemarker/core/Environment;Lfreemarker/template/Template;)V
    .registers 4

    .line 166
    iput-object p1, p0, Lfreemarker/core/GetOptionalTemplateMethod$2;->this$0:Lfreemarker/core/GetOptionalTemplateMethod;

    iput-object p2, p0, Lfreemarker/core/GetOptionalTemplateMethod$2;->val$env:Lfreemarker/core/Environment;

    iput-object p3, p0, Lfreemarker/core/GetOptionalTemplateMethod$2;->val$template:Lfreemarker/template/Template;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 168
    const-string v0, "Failed to import loaded template; see cause exception"

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 173
    :try_start_8
    iget-object p1, p0, Lfreemarker/core/GetOptionalTemplateMethod$2;->val$env:Lfreemarker/core/Environment;

    iget-object v1, p0, Lfreemarker/core/GetOptionalTemplateMethod$2;->val$template:Lfreemarker/template/Template;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lfreemarker/core/Environment;->importLib(Lfreemarker/template/Template;Ljava/lang/String;)Lfreemarker/core/Environment$Namespace;

    move-result-object p1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_11} :catch_19
    .catch Lfreemarker/template/TemplateException; {:try_start_8 .. :try_end_11} :catch_12

    return-object p1

    :catch_12
    move-exception p1

    .line 177
    new-instance v1, Lfreemarker/core/_TemplateModelException;

    invoke-direct {v1, p1, v0}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v1

    :catch_19
    move-exception p1

    .line 175
    new-instance v1, Lfreemarker/core/_TemplateModelException;

    invoke-direct {v1, p1, v0}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_20
    new-instance p1, Lfreemarker/template/TemplateModelException;

    const-string v0, "This method supports no parameters."

    invoke-direct {p1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

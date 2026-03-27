.class Lfreemarker/template/utility/CaptureOutput$1;
.super Ljava/io/Writer;
.source "CaptureOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/template/utility/CaptureOutput;->getWriter(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/template/utility/CaptureOutput;

.field final synthetic val$buf:Ljava/lang/StringBuilder;

.field final synthetic val$env:Lfreemarker/core/Environment;

.field final synthetic val$globalVar:Z

.field final synthetic val$localVar:Z

.field final synthetic val$nsModel:Lfreemarker/template/TemplateModel;

.field final synthetic val$out:Ljava/io/Writer;

.field final synthetic val$varName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lfreemarker/template/utility/CaptureOutput;Ljava/lang/StringBuilder;Ljava/io/Writer;ZLfreemarker/core/Environment;Ljava/lang/String;ZLfreemarker/template/TemplateModel;)V
    .registers 9

    .line 113
    iput-object p1, p0, Lfreemarker/template/utility/CaptureOutput$1;->this$0:Lfreemarker/template/utility/CaptureOutput;

    iput-object p2, p0, Lfreemarker/template/utility/CaptureOutput$1;->val$buf:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lfreemarker/template/utility/CaptureOutput$1;->val$out:Ljava/io/Writer;

    iput-boolean p4, p0, Lfreemarker/template/utility/CaptureOutput$1;->val$localVar:Z

    iput-object p5, p0, Lfreemarker/template/utility/CaptureOutput$1;->val$env:Lfreemarker/core/Environment;

    iput-object p6, p0, Lfreemarker/template/utility/CaptureOutput$1;->val$varName:Ljava/lang/String;

    iput-boolean p7, p0, Lfreemarker/template/utility/CaptureOutput$1;->val$globalVar:Z

    iput-object p8, p0, Lfreemarker/template/utility/CaptureOutput$1;->val$nsModel:Lfreemarker/template/TemplateModel;

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    new-instance v0, Lfreemarker/template/SimpleScalar;

    iget-object v1, p0, Lfreemarker/template/utility/CaptureOutput$1;->val$buf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    .line 129
    :try_start_b
    iget-boolean v1, p0, Lfreemarker/template/utility/CaptureOutput$1;->val$localVar:Z

    if-eqz v1, :cond_17

    .line 130
    iget-object v1, p0, Lfreemarker/template/utility/CaptureOutput$1;->val$env:Lfreemarker/core/Environment;

    iget-object v2, p0, Lfreemarker/template/utility/CaptureOutput$1;->val$varName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lfreemarker/core/Environment;->setLocalVariable(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    goto :goto_36

    .line 131
    :cond_17
    iget-boolean v1, p0, Lfreemarker/template/utility/CaptureOutput$1;->val$globalVar:Z

    if-eqz v1, :cond_23

    .line 132
    iget-object v1, p0, Lfreemarker/template/utility/CaptureOutput$1;->val$env:Lfreemarker/core/Environment;

    iget-object v2, p0, Lfreemarker/template/utility/CaptureOutput$1;->val$varName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lfreemarker/core/Environment;->setGlobalVariable(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    goto :goto_36

    .line 134
    :cond_23
    iget-object v1, p0, Lfreemarker/template/utility/CaptureOutput$1;->val$nsModel:Lfreemarker/template/TemplateModel;

    if-nez v1, :cond_2f

    .line 135
    iget-object v1, p0, Lfreemarker/template/utility/CaptureOutput$1;->val$env:Lfreemarker/core/Environment;

    iget-object v2, p0, Lfreemarker/template/utility/CaptureOutput$1;->val$varName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lfreemarker/core/Environment;->setVariable(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    goto :goto_36

    .line 137
    :cond_2f
    check-cast v1, Lfreemarker/core/Environment$Namespace;

    iget-object v2, p0, Lfreemarker/template/utility/CaptureOutput$1;->val$varName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lfreemarker/core/Environment$Namespace;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_36
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_36} :catch_37

    :goto_36
    return-void

    :catch_37
    move-exception v0

    .line 141
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not set variable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lfreemarker/template/utility/CaptureOutput$1;->val$varName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lfreemarker/template/utility/CaptureOutput$1;->val$out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public write([CII)V
    .registers 5

    .line 117
    iget-object v0, p0, Lfreemarker/template/utility/CaptureOutput$1;->val$buf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

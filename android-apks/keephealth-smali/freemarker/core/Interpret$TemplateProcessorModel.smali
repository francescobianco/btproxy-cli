.class Lfreemarker/core/Interpret$TemplateProcessorModel;
.super Ljava/lang/Object;
.source "Interpret.java"

# interfaces
.implements Lfreemarker/template/TemplateTransformModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/Interpret;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TemplateProcessorModel"
.end annotation


# instance fields
.field private final template:Lfreemarker/template/Template;

.field final synthetic this$0:Lfreemarker/core/Interpret;


# direct methods
.method constructor <init>(Lfreemarker/core/Interpret;Lfreemarker/template/Template;)V
    .registers 3

    .line 118
    iput-object p1, p0, Lfreemarker/core/Interpret$TemplateProcessorModel;->this$0:Lfreemarker/core/Interpret;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p2, p0, Lfreemarker/core/Interpret$TemplateProcessorModel;->template:Lfreemarker/template/Template;

    return-void
.end method


# virtual methods
.method public getWriter(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    :try_start_0
    invoke-static {}, Lfreemarker/core/Environment;->getCurrentEnvironment()Lfreemarker/core/Environment;

    move-result-object p2

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p2, v0}, Lfreemarker/core/Environment;->setFastInvalidReferenceExceptions(Z)Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_1c

    .line 127
    :try_start_9
    iget-object v1, p0, Lfreemarker/core/Interpret$TemplateProcessorModel;->template:Lfreemarker/template/Template;

    invoke-virtual {p2, v1}, Lfreemarker/core/Environment;->include(Lfreemarker/template/Template;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_17

    .line 129
    :try_start_e
    invoke-virtual {p2, v0}, Lfreemarker/core/Environment;->setFastInvalidReferenceExceptions(Z)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_1c

    .line 139
    new-instance p2, Lfreemarker/core/Interpret$TemplateProcessorModel$1;

    invoke-direct {p2, p0, p1, p1}, Lfreemarker/core/Interpret$TemplateProcessorModel$1;-><init>(Lfreemarker/core/Interpret$TemplateProcessorModel;Ljava/lang/Object;Ljava/io/Writer;)V

    return-object p2

    :catchall_17
    move-exception p1

    .line 129
    :try_start_18
    invoke-virtual {p2, v0}, Lfreemarker/core/Environment;->setFastInvalidReferenceExceptions(Z)Z

    .line 130
    throw p1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1c} :catch_1c

    :catch_1c
    move-exception p1

    .line 132
    new-instance p2, Lfreemarker/core/_TemplateModelException;

    iget-object v0, p0, Lfreemarker/core/Interpret$TemplateProcessorModel;->this$0:Lfreemarker/core/Interpret;

    iget-object v2, v0, Lfreemarker/core/Interpret;->key:Ljava/lang/String;

    new-instance v5, Lfreemarker/core/_DelayedGetMessage;

    invoke-direct {v5, p1}, Lfreemarker/core/_DelayedGetMessage;-><init>(Ljava/lang/Throwable;)V

    const-string v6, "\n---end-message---"

    const-string v1, "Template created with \"?"

    const-string v3, "\" has stopped with this error:\n\n"

    const-string v4, "---begin-message---\n"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw p2
.end method

.class public Lfreemarker/template/utility/CaptureOutput;
.super Ljava/lang/Object;
.source "CaptureOutput.java"

# interfaces
.implements Lfreemarker/template/TemplateTransformModel;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWriter(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 67
    const-string v0, "Must specify the name of the variable in which to capture the output with the \'var\' or \'local\' or \'global\' parameter."

    if-eqz p2, :cond_b9

    .line 70
    const-string v1, "namespace"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lfreemarker/template/TemplateModel;

    .line 71
    const-string v1, "var"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_34

    .line 73
    const-string v1, "local"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_27

    .line 75
    const-string v1, "global"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move v4, v3

    goto :goto_29

    :cond_27
    move v4, v2

    move v2, v3

    :goto_29
    if-eqz v1, :cond_2e

    move v6, v2

    move v9, v4

    goto :goto_36

    .line 81
    :cond_2e
    new-instance p1, Lfreemarker/template/TemplateModelException;

    invoke-direct {p1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    move v6, v2

    move v9, v6

    .line 84
    :goto_36
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7d

    if-eqz v10, :cond_75

    if-nez v6, :cond_6d

    if-nez v9, :cond_65

    .line 94
    instance-of p2, v10, Lfreemarker/core/Environment$Namespace;

    if-eqz p2, :cond_48

    goto :goto_83

    .line 95
    :cond_48
    new-instance p1, Lfreemarker/template/TemplateModelException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "namespace parameter does not specify a namespace. It is a "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_65
    new-instance p1, Lfreemarker/template/TemplateModelException;

    const-string p2, "Cannot specify namespace for a global assignment"

    invoke-direct {p1, p2}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_6d
    new-instance p1, Lfreemarker/template/TemplateModelException;

    const-string p2, "Cannot specify namespace for a local assignment"

    invoke-direct {p1, p2}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_75
    new-instance p1, Lfreemarker/template/TemplateModelException;

    const-string p2, "Second parameter can only be namespace"

    invoke-direct {p1, p2}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_7d
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    if-ne p2, v3, :cond_b1

    .line 100
    :goto_83
    instance-of p2, v1, Lfreemarker/template/TemplateScalarModel;

    if-eqz p2, :cond_a9

    .line 103
    check-cast v1, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v1}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a1

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    invoke-static {}, Lfreemarker/core/Environment;->getCurrentEnvironment()Lfreemarker/core/Environment;

    move-result-object v7

    .line 113
    new-instance p2, Lfreemarker/template/utility/CaptureOutput$1;

    move-object v2, p2

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v10}, Lfreemarker/template/utility/CaptureOutput$1;-><init>(Lfreemarker/template/utility/CaptureOutput;Ljava/lang/StringBuilder;Ljava/io/Writer;ZLfreemarker/core/Environment;Ljava/lang/String;ZLfreemarker/template/TemplateModel;)V

    return-object p2

    .line 105
    :cond_a1
    new-instance p1, Lfreemarker/template/TemplateModelException;

    const-string p2, "\'var\' or \'local\' or \'global\' parameter evaluates to null string"

    invoke-direct {p1, p2}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_a9
    new-instance p1, Lfreemarker/template/TemplateModelException;

    const-string p2, "\'var\' or \'local\' or \'global\' parameter doesn\'t evaluate to a string"

    invoke-direct {p1, p2}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_b1
    new-instance p1, Lfreemarker/template/TemplateModelException;

    const-string p2, "Bad parameters. Use only one of \'var\' or \'local\' or \'global\' parameters."

    invoke-direct {p1, p2}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_b9
    new-instance p1, Lfreemarker/template/TemplateModelException;

    invoke-direct {p1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

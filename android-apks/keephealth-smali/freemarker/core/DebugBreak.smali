.class public Lfreemarker/core/DebugBreak;
.super Lfreemarker/core/TemplateElement;
.source "DebugBreak.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lfreemarker/core/TemplateElement;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Lfreemarker/core/TemplateElement;-><init>()V

    .line 36
    invoke-virtual {p0, p1}, Lfreemarker/core/DebugBreak;->addChild(Lfreemarker/core/TemplateElement;)V

    .line 37
    invoke-virtual {p0, p1}, Lfreemarker/core/DebugBreak;->copyLocationFrom(Lfreemarker/core/TemplateObject;)Lfreemarker/core/TemplateObject;

    return-void
.end method


# virtual methods
.method protected accept(Lfreemarker/core/Environment;)[Lfreemarker/core/TemplateElement;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lfreemarker/core/DebugBreak;->getTemplate()Lfreemarker/template/Template;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/Template;->getSourceName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lfreemarker/core/DebugBreak;->getChild(I)Lfreemarker/core/TemplateElement;

    move-result-object v2

    invoke-virtual {v2}, Lfreemarker/core/TemplateElement;->getBeginLine()I

    move-result v2

    .line 42
    invoke-static {p1, v0, v2}, Lfreemarker/debug/impl/DebuggerService;->suspendEnvironment(Lfreemarker/core/Environment;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 44
    invoke-virtual {p0, v1}, Lfreemarker/core/DebugBreak;->getChild(I)Lfreemarker/core/TemplateElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfreemarker/core/TemplateElement;->accept(Lfreemarker/core/Environment;)[Lfreemarker/core/TemplateElement;

    move-result-object p1

    return-object p1

    .line 46
    :cond_20
    new-instance v0, Lfreemarker/core/StopException;

    const-string v1, "Stopped by debugger"

    invoke-direct {v0, p1, v1}, Lfreemarker/core/StopException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;)V

    throw v0
.end method

.method protected dump(Z)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_30

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "<#-- debug break"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lfreemarker/core/DebugBreak;->getChildCount()I

    move-result v0

    if-nez v0, :cond_15

    .line 57
    const-string v0, " /-->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 59
    :cond_15
    const-string v0, " -->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0}, Lfreemarker/core/DebugBreak;->getChild(I)Lfreemarker/core/TemplateElement;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/core/TemplateElement;->getCanonicalForm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v0, "<#--/ debug break -->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :goto_2b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 65
    :cond_30
    const-string p1, "debug break"

    return-object p1
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 71
    const-string v0, "#debug_break"

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 2

    .line 86
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 2

    .line 81
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method isNestedBlockRepeater()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

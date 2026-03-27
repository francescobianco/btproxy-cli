.class final Lfreemarker/core/BodyInstruction;
.super Lfreemarker/core/TemplateElement;
.source "BodyInstruction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/BodyInstruction$Context;
    }
.end annotation


# instance fields
.field private bodyParameters:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Lfreemarker/core/TemplateElement;-><init>()V

    .line 41
    iput-object p1, p0, Lfreemarker/core/BodyInstruction;->bodyParameters:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lfreemarker/core/BodyInstruction;)Ljava/util/List;
    .registers 1

    .line 34
    iget-object p0, p0, Lfreemarker/core/BodyInstruction;->bodyParameters:Ljava/util/List;

    return-object p0
.end method

.method private checkIndex(I)V
    .registers 3

    .line 102
    iget-object v0, p0, Lfreemarker/core/BodyInstruction;->bodyParameters:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_b

    return-void

    .line 103
    :cond_b
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method


# virtual methods
.method accept(Lfreemarker/core/Environment;)[Lfreemarker/core/TemplateElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 59
    new-instance v0, Lfreemarker/core/BodyInstruction$Context;

    invoke-direct {v0, p0, p1}, Lfreemarker/core/BodyInstruction$Context;-><init>(Lfreemarker/core/BodyInstruction;Lfreemarker/core/Environment;)V

    .line 60
    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->invokeNestedContent(Lfreemarker/core/BodyInstruction$Context;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected dump(Z)Ljava/lang/String;
    .registers 5

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_c

    const/16 v1, 0x3c

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    :cond_c
    invoke-virtual {p0}, Lfreemarker/core/BodyInstruction;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Lfreemarker/core/BodyInstruction;->bodyParameters:Ljava/util/List;

    if-eqz v1, :cond_37

    const/4 v1, 0x0

    .line 70
    :goto_18
    iget-object v2, p0, Lfreemarker/core/BodyInstruction;->bodyParameters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_37

    const/16 v2, 0x20

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    iget-object v2, p0, Lfreemarker/core/BodyInstruction;->bodyParameters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/core/Expression;

    invoke-virtual {v2}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_37
    if-eqz p1, :cond_3e

    const/16 p1, 0x3e

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getBodyParameters()Ljava/util/List;
    .registers 2

    .line 45
    iget-object v0, p0, Lfreemarker/core/BodyInstruction;->bodyParameters:Ljava/util/List;

    return-object v0
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 81
    const-string v0, "#nested"

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    .line 86
    iget-object v0, p0, Lfreemarker/core/BodyInstruction;->bodyParameters:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 2

    .line 97
    invoke-direct {p0, p1}, Lfreemarker/core/BodyInstruction;->checkIndex(I)V

    .line 98
    sget-object p1, Lfreemarker/core/ParameterRole;->PASSED_VALUE:Lfreemarker/core/ParameterRole;

    return-object p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 3

    .line 91
    invoke-direct {p0, p1}, Lfreemarker/core/BodyInstruction;->checkIndex(I)V

    .line 92
    iget-object v0, p0, Lfreemarker/core/BodyInstruction;->bodyParameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method isNestedBlockRepeater()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method isShownInStackTrace()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

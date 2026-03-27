.class public final Lfreemarker/core/ReturnInstruction;
.super Lfreemarker/core/TemplateElement;
.source "ReturnInstruction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/ReturnInstruction$Return;
    }
.end annotation


# instance fields
.field private exp:Lfreemarker/core/Expression;


# direct methods
.method constructor <init>(Lfreemarker/core/Expression;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Lfreemarker/core/TemplateElement;-><init>()V

    .line 32
    iput-object p1, p0, Lfreemarker/core/ReturnInstruction;->exp:Lfreemarker/core/Expression;

    return-void
.end method


# virtual methods
.method accept(Lfreemarker/core/Environment;)[Lfreemarker/core/TemplateElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lfreemarker/core/ReturnInstruction;->exp:Lfreemarker/core/Expression;

    if-eqz v0, :cond_b

    .line 38
    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->setLastReturnValue(Lfreemarker/template/TemplateModel;)V

    .line 40
    :cond_b
    invoke-virtual {p0}, Lfreemarker/core/ReturnInstruction;->nextSibling()Lfreemarker/core/TemplateElement;

    move-result-object p1

    if-nez p1, :cond_1b

    invoke-virtual {p0}, Lfreemarker/core/ReturnInstruction;->getParentElement()Lfreemarker/core/TemplateElement;

    move-result-object p1

    instance-of p1, p1, Lfreemarker/core/Macro;

    if-eqz p1, :cond_1b

    const/4 p1, 0x0

    return-object p1

    .line 44
    :cond_1b
    sget-object p1, Lfreemarker/core/ReturnInstruction$Return;->INSTANCE:Lfreemarker/core/ReturnInstruction$Return;

    throw p1
.end method

.method protected dump(Z)Ljava/lang/String;
    .registers 4

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_c

    const/16 v1, 0x3c

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    :cond_c
    invoke-virtual {p0}, Lfreemarker/core/ReturnInstruction;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v1, p0, Lfreemarker/core/ReturnInstruction;->exp:Lfreemarker/core/Expression;

    if-eqz v1, :cond_25

    const/16 v1, 0x20

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    iget-object v1, p0, Lfreemarker/core/ReturnInstruction;->exp:Lfreemarker/core/Expression;

    invoke-virtual {v1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    if-eqz p1, :cond_2c

    .line 56
    const-string p1, "/>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 62
    const-string v0, "#return"

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 2

    if-nez p1, :cond_5

    .line 85
    sget-object p1, Lfreemarker/core/ParameterRole;->VALUE:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 84
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 2

    if-nez p1, :cond_5

    .line 79
    iget-object p1, p0, Lfreemarker/core/ReturnInstruction;->exp:Lfreemarker/core/Expression;

    return-object p1

    .line 78
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method isNestedBlockRepeater()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

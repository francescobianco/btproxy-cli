.class final Lfreemarker/core/AttemptBlock;
.super Lfreemarker/core/TemplateElement;
.source "AttemptBlock.java"


# instance fields
.field private attemptedSection:Lfreemarker/core/TemplateElement;

.field private recoverySection:Lfreemarker/core/RecoveryBlock;


# direct methods
.method constructor <init>(Lfreemarker/core/TemplateElements;Lfreemarker/core/RecoveryBlock;)V
    .registers 4

    .line 34
    invoke-direct {p0}, Lfreemarker/core/TemplateElement;-><init>()V

    .line 35
    invoke-virtual {p1}, Lfreemarker/core/TemplateElements;->asSingleElement()Lfreemarker/core/TemplateElement;

    move-result-object p1

    .line 36
    iput-object p1, p0, Lfreemarker/core/AttemptBlock;->attemptedSection:Lfreemarker/core/TemplateElement;

    .line 37
    iput-object p2, p0, Lfreemarker/core/AttemptBlock;->recoverySection:Lfreemarker/core/RecoveryBlock;

    const/4 v0, 0x2

    .line 38
    invoke-virtual {p0, v0}, Lfreemarker/core/AttemptBlock;->setChildBufferCapacity(I)V

    .line 39
    invoke-virtual {p0, p1}, Lfreemarker/core/AttemptBlock;->addChild(Lfreemarker/core/TemplateElement;)V

    .line 40
    invoke-virtual {p0, p2}, Lfreemarker/core/AttemptBlock;->addChild(Lfreemarker/core/TemplateElement;)V

    return-void
.end method


# virtual methods
.method accept(Lfreemarker/core/Environment;)[Lfreemarker/core/TemplateElement;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lfreemarker/core/AttemptBlock;->attemptedSection:Lfreemarker/core/TemplateElement;

    iget-object v1, p0, Lfreemarker/core/AttemptBlock;->recoverySection:Lfreemarker/core/RecoveryBlock;

    invoke-virtual {p1, p0, v0, v1}, Lfreemarker/core/Environment;->visitAttemptRecover(Lfreemarker/core/AttemptBlock;Lfreemarker/core/TemplateElement;Lfreemarker/core/RecoveryBlock;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected dump(Z)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_7

    .line 52
    invoke-virtual {p0}, Lfreemarker/core/AttemptBlock;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 54
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "<"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lfreemarker/core/AttemptBlock;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0}, Lfreemarker/core/AttemptBlock;->getChildrenCanonicalForm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v0, "</"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/core/AttemptBlock;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 81
    const-string v0, "#attempt"

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

    .line 76
    sget-object p1, Lfreemarker/core/ParameterRole;->ERROR_HANDLER:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 75
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 2

    if-nez p1, :cond_5

    .line 70
    iget-object p1, p0, Lfreemarker/core/AttemptBlock;->recoverySection:Lfreemarker/core/RecoveryBlock;

    return-object p1

    .line 69
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

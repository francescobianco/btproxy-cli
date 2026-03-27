.class Lfreemarker/core/DefaultToExpression;
.super Lfreemarker/core/Expression;
.source "DefaultToExpression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/DefaultToExpression$EmptyStringAndSequenceAndHash;
    }
.end annotation


# static fields
.field private static final EMPTY_COLLECTION:Lfreemarker/template/TemplateCollectionModel;

.field static final EMPTY_STRING_AND_SEQUENCE_AND_HASH:Lfreemarker/template/TemplateModel;


# instance fields
.field private final lho:Lfreemarker/core/Expression;

.field private final rho:Lfreemarker/core/Expression;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 36
    new-instance v0, Lfreemarker/template/SimpleCollection;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleCollection;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lfreemarker/core/DefaultToExpression;->EMPTY_COLLECTION:Lfreemarker/template/TemplateCollectionModel;

    .line 66
    new-instance v0, Lfreemarker/core/DefaultToExpression$EmptyStringAndSequenceAndHash;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfreemarker/core/DefaultToExpression$EmptyStringAndSequenceAndHash;-><init>(Lfreemarker/core/DefaultToExpression$1;)V

    sput-object v0, Lfreemarker/core/DefaultToExpression;->EMPTY_STRING_AND_SEQUENCE_AND_HASH:Lfreemarker/template/TemplateModel;

    return-void
.end method

.method constructor <init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;)V
    .registers 3

    .line 70
    invoke-direct {p0}, Lfreemarker/core/Expression;-><init>()V

    .line 71
    iput-object p1, p0, Lfreemarker/core/DefaultToExpression;->lho:Lfreemarker/core/Expression;

    .line 72
    iput-object p2, p0, Lfreemarker/core/DefaultToExpression;->rho:Lfreemarker/core/Expression;

    return-void
.end method

.method static synthetic access$000()Lfreemarker/template/TemplateCollectionModel;
    .registers 1

    .line 34
    sget-object v0, Lfreemarker/core/DefaultToExpression;->EMPTY_COLLECTION:Lfreemarker/template/TemplateCollectionModel;

    return-object v0
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lfreemarker/core/DefaultToExpression;->lho:Lfreemarker/core/Expression;

    instance-of v1, v0, Lfreemarker/core/ParentheticalExpression;

    if-eqz v1, :cond_1f

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->setFastInvalidReferenceExceptions(Z)Z

    move-result v0

    .line 81
    :try_start_b
    iget-object v1, p0, Lfreemarker/core/DefaultToExpression;->lho:Lfreemarker/core/Expression;

    invoke-virtual {v1, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v1
    :try_end_11
    .catch Lfreemarker/core/InvalidReferenceException; {:try_start_b .. :try_end_11} :catch_1a
    .catchall {:try_start_b .. :try_end_11} :catchall_15

    .line 85
    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->setFastInvalidReferenceExceptions(Z)Z

    goto :goto_23

    :catchall_15
    move-exception v1

    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->setFastInvalidReferenceExceptions(Z)Z

    .line 86
    throw v1

    .line 85
    :catch_1a
    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->setFastInvalidReferenceExceptions(Z)Z

    const/4 v1, 0x0

    goto :goto_23

    .line 88
    :cond_1f
    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v1

    :goto_23
    if-eqz v1, :cond_26

    return-object v1

    .line 92
    :cond_26
    iget-object v0, p0, Lfreemarker/core/DefaultToExpression;->rho:Lfreemarker/core/Expression;

    if-nez v0, :cond_2d

    sget-object p1, Lfreemarker/core/DefaultToExpression;->EMPTY_STRING_AND_SEQUENCE_AND_HASH:Lfreemarker/template/TemplateModel;

    return-object p1

    .line 93
    :cond_2d
    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method protected deepCloneWithIdentifierReplaced_inner(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;
    .registers 7

    .line 103
    new-instance v0, Lfreemarker/core/DefaultToExpression;

    iget-object v1, p0, Lfreemarker/core/DefaultToExpression;->lho:Lfreemarker/core/Expression;

    .line 104
    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/Expression;->deepCloneWithIdentifierReplaced(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/DefaultToExpression;->rho:Lfreemarker/core/Expression;

    if-eqz v2, :cond_11

    .line 106
    invoke-virtual {v2, p1, p2, p3}, Lfreemarker/core/Expression;->deepCloneWithIdentifierReplaced(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;

    move-result-object p1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    invoke-direct {v0, v1, p1}, Lfreemarker/core/DefaultToExpression;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;)V

    return-object v0
.end method

.method public getCanonicalForm()Ljava/lang/String;
    .registers 4

    .line 112
    iget-object v0, p0, Lfreemarker/core/DefaultToExpression;->rho:Lfreemarker/core/Expression;

    const/16 v1, 0x21

    if-nez v0, :cond_1e

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfreemarker/core/DefaultToExpression;->lho:Lfreemarker/core/Expression;

    invoke-virtual {v2}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 115
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfreemarker/core/DefaultToExpression;->lho:Lfreemarker/core/Expression;

    invoke-virtual {v2}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/DefaultToExpression;->rho:Lfreemarker/core/Expression;

    invoke-virtual {v1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 120
    const-string v0, "...!..."

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 2

    .line 139
    invoke-static {p1}, Lfreemarker/core/ParameterRole;->forBinaryOperatorOperand(I)Lfreemarker/core/ParameterRole;

    move-result-object p1

    return-object p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 132
    iget-object p1, p0, Lfreemarker/core/DefaultToExpression;->rho:Lfreemarker/core/Expression;

    return-object p1

    .line 133
    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 131
    :cond_e
    iget-object p1, p0, Lfreemarker/core/DefaultToExpression;->lho:Lfreemarker/core/Expression;

    return-object p1
.end method

.method isLiteral()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

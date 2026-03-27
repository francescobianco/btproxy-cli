.class final Lfreemarker/core/Range;
.super Lfreemarker/core/Expression;
.source "Range.java"


# static fields
.field static final END_EXCLUSIVE:I = 0x1

.field static final END_INCLUSIVE:I = 0x0

.field static final END_SIZE_LIMITED:I = 0x3

.field static final END_UNBOUND:I = 0x2


# instance fields
.field final endType:I

.field final lho:Lfreemarker/core/Expression;

.field final rho:Lfreemarker/core/Expression;


# direct methods
.method constructor <init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;I)V
    .registers 4

    .line 40
    invoke-direct {p0}, Lfreemarker/core/Expression;-><init>()V

    .line 41
    iput-object p1, p0, Lfreemarker/core/Range;->lho:Lfreemarker/core/Expression;

    .line 42
    iput-object p2, p0, Lfreemarker/core/Range;->rho:Lfreemarker/core/Expression;

    .line 43
    iput p3, p0, Lfreemarker/core/Range;->endType:I

    return-void
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lfreemarker/core/Range;->lho:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->evalToNumber(Lfreemarker/core/Environment;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 53
    iget v1, p0, Lfreemarker/core/Range;->endType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_31

    .line 54
    iget-object v1, p0, Lfreemarker/core/Range;->rho:Lfreemarker/core/Expression;

    invoke-virtual {v1, p1}, Lfreemarker/core/Expression;->evalToNumber(Lfreemarker/core/Environment;)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 55
    new-instance v1, Lfreemarker/core/BoundedRangeModel;

    iget v2, p0, Lfreemarker/core/Range;->endType:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_21

    goto :goto_22

    :cond_21
    add-int/2addr p1, v0

    :goto_22
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_28

    move v6, v4

    goto :goto_29

    :cond_28
    move v6, v5

    :goto_29
    if-ne v2, v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v4, v5

    :goto_2d
    invoke-direct {v1, v0, p1, v6, v4}, Lfreemarker/core/BoundedRangeModel;-><init>(IIZZ)V

    return-object v1

    .line 59
    :cond_31
    invoke-static {p0}, Lfreemarker/template/_TemplateAPI;->getTemplateLanguageVersionAsInt(Lfreemarker/core/TemplateObject;)I

    move-result p1

    sget v1, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_21:I

    if-lt p1, v1, :cond_3f

    new-instance p1, Lfreemarker/core/ListableRightUnboundedRangeModel;

    invoke-direct {p1, v0}, Lfreemarker/core/ListableRightUnboundedRangeModel;-><init>(I)V

    goto :goto_44

    :cond_3f
    new-instance p1, Lfreemarker/core/NonListableRightUnboundedRangeModel;

    invoke-direct {p1, v0}, Lfreemarker/core/NonListableRightUnboundedRangeModel;-><init>(I)V

    :goto_44
    return-object p1
.end method

.method protected deepCloneWithIdentifierReplaced_inner(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;
    .registers 7

    .line 97
    new-instance v0, Lfreemarker/core/Range;

    iget-object v1, p0, Lfreemarker/core/Range;->lho:Lfreemarker/core/Expression;

    .line 98
    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/Expression;->deepCloneWithIdentifierReplaced(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/Range;->rho:Lfreemarker/core/Expression;

    .line 99
    invoke-virtual {v2, p1, p2, p3}, Lfreemarker/core/Expression;->deepCloneWithIdentifierReplaced(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;

    move-result-object p1

    iget p2, p0, Lfreemarker/core/Range;->endType:I

    invoke-direct {v0, v1, p1, p2}, Lfreemarker/core/Range;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;I)V

    return-object v0
.end method

.method evalToBoolean(Lfreemarker/core/Environment;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 68
    new-instance v0, Lfreemarker/core/NonBooleanException;

    new-instance v1, Lfreemarker/core/BoundedRangeModel;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Lfreemarker/core/BoundedRangeModel;-><init>(IIZZ)V

    invoke-direct {v0, p0, v1, p1}, Lfreemarker/core/NonBooleanException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    throw v0
.end method

.method public getCanonicalForm()Ljava/lang/String;
    .registers 4

    .line 73
    iget-object v0, p0, Lfreemarker/core/Range;->rho:Lfreemarker/core/Expression;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, ""

    .line 74
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfreemarker/core/Range;->lho:Lfreemarker/core/Expression;

    invoke-virtual {v2}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lfreemarker/core/Range;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getEndType()I
    .registers 2

    .line 47
    iget v0, p0, Lfreemarker/core/Range;->endType:I

    return v0
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 4

    .line 79
    iget v0, p0, Lfreemarker/core/Range;->endType:I

    const-string v1, ".."

    if-eqz v0, :cond_1e

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1a

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    .line 83
    const-string v0, "..*"

    return-object v0

    .line 84
    :cond_12
    new-instance v0, Lfreemarker/core/BugException;

    iget v1, p0, Lfreemarker/core/Range;->endType:I

    invoke-direct {v0, v1}, Lfreemarker/core/BugException;-><init>(I)V

    throw v0

    :cond_1a
    return-object v1

    .line 80
    :cond_1b
    const-string v0, "..<"

    return-object v0

    :cond_1e
    return-object v1
.end method

.method getParameterCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 2

    .line 119
    invoke-static {p1}, Lfreemarker/core/ParameterRole;->forBinaryOperatorOperand(I)Lfreemarker/core/ParameterRole;

    move-result-object p1

    return-object p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 112
    iget-object p1, p0, Lfreemarker/core/Range;->rho:Lfreemarker/core/Expression;

    return-object p1

    .line 113
    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 111
    :cond_e
    iget-object p1, p0, Lfreemarker/core/Range;->lho:Lfreemarker/core/Expression;

    return-object p1
.end method

.method isLiteral()Z
    .registers 5

    .line 90
    iget-object v0, p0, Lfreemarker/core/Range;->rho:Lfreemarker/core/Expression;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lfreemarker/core/Expression;->isLiteral()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    move v0, v1

    goto :goto_10

    :cond_f
    :goto_f
    move v0, v2

    .line 91
    :goto_10
    iget-object v3, p0, Lfreemarker/core/Range;->constantValue:Lfreemarker/template/TemplateModel;

    if-nez v3, :cond_1e

    iget-object v3, p0, Lfreemarker/core/Range;->lho:Lfreemarker/core/Expression;

    invoke-virtual {v3}, Lfreemarker/core/Expression;->isLiteral()Z

    move-result v3

    if-eqz v3, :cond_1f

    if-eqz v0, :cond_1f

    :cond_1e
    move v1, v2

    :cond_1f
    return v1
.end method

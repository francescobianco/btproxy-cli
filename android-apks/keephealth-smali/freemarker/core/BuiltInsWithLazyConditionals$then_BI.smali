.class Lfreemarker/core/BuiltInsWithLazyConditionals$then_BI;
.super Lfreemarker/core/BuiltInWithParseTimeParameters;
.source "BuiltInsWithLazyConditionals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsWithLazyConditionals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "then_BI"
.end annotation


# instance fields
.field private whenFalseExp:Lfreemarker/core/Expression;

.field private whenTrueExp:Lfreemarker/core/Expression;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lfreemarker/core/BuiltInWithParseTimeParameters;-><init>()V

    return-void
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lfreemarker/core/BuiltInsWithLazyConditionals$then_BI;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->evalToBoolean(Lfreemarker/core/Environment;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 41
    iget-object v0, p0, Lfreemarker/core/BuiltInsWithLazyConditionals$then_BI;->whenTrueExp:Lfreemarker/core/Expression;

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lfreemarker/core/BuiltInsWithLazyConditionals$then_BI;->whenFalseExp:Lfreemarker/core/Expression;

    :goto_d
    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->evalToNonMissing(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method bindToParameters(Ljava/util/List;Lfreemarker/core/Token;Lfreemarker/core/Token;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfreemarker/core/Expression;",
            ">;",
            "Lfreemarker/core/Token;",
            "Lfreemarker/core/Token;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    const/4 p2, 0x0

    .line 49
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfreemarker/core/Expression;

    iput-object p2, p0, Lfreemarker/core/BuiltInsWithLazyConditionals$then_BI;->whenTrueExp:Lfreemarker/core/Expression;

    const/4 p2, 0x1

    .line 50
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/core/Expression;

    iput-object p1, p0, Lfreemarker/core/BuiltInsWithLazyConditionals$then_BI;->whenFalseExp:Lfreemarker/core/Expression;

    return-void

    .line 47
    :cond_1a
    const-string p1, "requires exactly 2"

    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/BuiltInsWithLazyConditionals$then_BI;->newArgumentCountException(Ljava/lang/String;Lfreemarker/core/Token;Lfreemarker/core/Token;)Lfreemarker/core/ParseException;

    move-result-object p1

    throw p1
.end method

.method protected cloneArguments(Lfreemarker/core/Expression;Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)V
    .registers 6

    .line 78
    check-cast p1, Lfreemarker/core/BuiltInsWithLazyConditionals$then_BI;

    .line 79
    iget-object v0, p0, Lfreemarker/core/BuiltInsWithLazyConditionals$then_BI;->whenTrueExp:Lfreemarker/core/Expression;

    invoke-virtual {v0, p2, p3, p4}, Lfreemarker/core/Expression;->deepCloneWithIdentifierReplaced(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;

    move-result-object v0

    iput-object v0, p1, Lfreemarker/core/BuiltInsWithLazyConditionals$then_BI;->whenTrueExp:Lfreemarker/core/Expression;

    .line 80
    iget-object v0, p0, Lfreemarker/core/BuiltInsWithLazyConditionals$then_BI;->whenFalseExp:Lfreemarker/core/Expression;

    invoke-virtual {v0, p2, p3, p4}, Lfreemarker/core/Expression;->deepCloneWithIdentifierReplaced(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;

    move-result-object p2

    iput-object p2, p1, Lfreemarker/core/BuiltInsWithLazyConditionals$then_BI;->whenFalseExp:Lfreemarker/core/Expression;

    return-void
.end method

.method protected getArgumentParameterValue(I)Lfreemarker/core/Expression;
    .registers 3

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 57
    iget-object p1, p0, Lfreemarker/core/BuiltInsWithLazyConditionals$then_BI;->whenFalseExp:Lfreemarker/core/Expression;

    return-object p1

    .line 58
    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 56
    :cond_e
    iget-object p1, p0, Lfreemarker/core/BuiltInsWithLazyConditionals$then_BI;->whenTrueExp:Lfreemarker/core/Expression;

    return-object p1
.end method

.method protected getArgumentsAsList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfreemarker/core/Expression;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    iget-object v1, p0, Lfreemarker/core/BuiltInsWithLazyConditionals$then_BI;->whenTrueExp:Lfreemarker/core/Expression;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v1, p0, Lfreemarker/core/BuiltInsWithLazyConditionals$then_BI;->whenFalseExp:Lfreemarker/core/Expression;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getArgumentsCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.class Lfreemarker/core/BuiltInsWithLazyConditionals$switch_BI;
.super Lfreemarker/core/BuiltInWithParseTimeParameters;
.source "BuiltInsWithLazyConditionals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsWithLazyConditionals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "switch_BI"
.end annotation


# instance fields
.field private parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfreemarker/core/Expression;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Lfreemarker/core/BuiltInWithParseTimeParameters;-><init>()V

    return-void
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    .line 129
    iget-object v0, v12, Lfreemarker/core/BuiltInsWithLazyConditionals$switch_BI;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, v13}, Lfreemarker/core/Expression;->evalToNonMissing(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v14

    .line 131
    iget-object v15, v12, Lfreemarker/core/BuiltInsWithLazyConditionals$switch_BI;->parameters:Ljava/util/List;

    .line 132
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v11

    const/4 v0, 0x0

    move v10, v0

    :goto_12
    add-int/lit8 v9, v10, 0x1

    if-ge v9, v11, :cond_53

    .line 134
    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lfreemarker/core/Expression;

    .line 135
    invoke-virtual {v5, v13}, Lfreemarker/core/Expression;->evalToNonMissing(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v4

    .line 136
    iget-object v1, v12, Lfreemarker/core/BuiltInsWithLazyConditionals$switch_BI;->target:Lfreemarker/core/Expression;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v2, 0x1

    const-string v3, "=="

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, v14

    move-object/from16 v6, p0

    move/from16 v18, v9

    move/from16 v9, v16

    move/from16 v16, v10

    move/from16 v10, v17

    move/from16 v17, v11

    move-object/from16 v11, p1

    invoke-static/range {v0 .. v11}, Lfreemarker/core/EvalUtil;->compare(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;ILjava/lang/String;Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;Lfreemarker/core/Expression;ZZZZLfreemarker/core/Environment;)Z

    move-result v0

    if-eqz v0, :cond_4e

    move/from16 v10, v18

    .line 143
    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/Expression;

    invoke-virtual {v0, v13}, Lfreemarker/core/Expression;->evalToNonMissing(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    return-object v0

    :cond_4e
    add-int/lit8 v10, v16, 0x2

    move/from16 v11, v17

    goto :goto_12

    :cond_53
    move/from16 v17, v11

    .line 147
    rem-int/lit8 v11, v17, 0x2

    if-eqz v11, :cond_66

    add-int/lit8 v11, v17, -0x1

    .line 153
    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/Expression;

    invoke-virtual {v0, v13}, Lfreemarker/core/Expression;->evalToNonMissing(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    return-object v0

    .line 148
    :cond_66
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    iget-object v1, v12, Lfreemarker/core/BuiltInsWithLazyConditionals$switch_BI;->target:Lfreemarker/core/Expression;

    iget-object v2, v12, Lfreemarker/core/BuiltInsWithLazyConditionals$switch_BI;->key:Ljava/lang/String;

    const-string v3, "(case1, value1, case2, value2, ...) didn\'t match any of the case parameters, and there was no default value parameter (an additional last parameter) eithter. "

    const-string v4, "The value before ?"

    filled-new-array {v4, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Expression;[Ljava/lang/Object;)V

    throw v0
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

    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_a

    .line 98
    iput-object p1, p0, Lfreemarker/core/BuiltInsWithLazyConditionals$switch_BI;->parameters:Ljava/util/List;

    return-void

    .line 96
    :cond_a
    const-string p1, "must have at least 2"

    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/BuiltInsWithLazyConditionals$switch_BI;->newArgumentCountException(Ljava/lang/String;Lfreemarker/core/Token;Lfreemarker/core/Token;)Lfreemarker/core/ParseException;

    move-result-object p1

    throw p1
.end method

.method protected cloneArguments(Lfreemarker/core/Expression;Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)V
    .registers 8

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lfreemarker/core/BuiltInsWithLazyConditionals$switch_BI;->parameters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    iget-object v1, p0, Lfreemarker/core/BuiltInsWithLazyConditionals$switch_BI;->parameters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/core/Expression;

    .line 122
    invoke-virtual {v2, p2, p3, p4}, Lfreemarker/core/Expression;->deepCloneWithIdentifierReplaced(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;

    move-result-object v2

    .line 121
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 124
    :cond_25
    check-cast p1, Lfreemarker/core/BuiltInsWithLazyConditionals$switch_BI;

    iput-object v0, p1, Lfreemarker/core/BuiltInsWithLazyConditionals$switch_BI;->parameters:Ljava/util/List;

    return-void
.end method

.method protected getArgumentParameterValue(I)Lfreemarker/core/Expression;
    .registers 3

    .line 113
    iget-object v0, p0, Lfreemarker/core/BuiltInsWithLazyConditionals$switch_BI;->parameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/core/Expression;

    return-object p1
.end method

.method protected getArgumentsAsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfreemarker/core/Expression;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lfreemarker/core/BuiltInsWithLazyConditionals$switch_BI;->parameters:Ljava/util/List;

    return-object v0
.end method

.method protected getArgumentsCount()I
    .registers 2

    .line 108
    iget-object v0, p0, Lfreemarker/core/BuiltInsWithLazyConditionals$switch_BI;->parameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

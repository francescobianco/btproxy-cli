.class Lfreemarker/core/Macro$Context;
.super Ljava/lang/Object;
.source "Macro.java"

# interfaces
.implements Lfreemarker/core/LocalContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/Macro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Context"
.end annotation


# instance fields
.field final callPlace:Lfreemarker/core/TemplateObject;

.field final localVars:Lfreemarker/core/Environment$Namespace;

.field final nestedContentNamespace:Lfreemarker/core/Environment$Namespace;

.field final nestedContentParameterNames:Ljava/util/List;

.field final prevLocalContextStack:Lfreemarker/core/LocalContextStack;

.field final prevMacroContext:Lfreemarker/core/Macro$Context;

.field final synthetic this$0:Lfreemarker/core/Macro;


# direct methods
.method constructor <init>(Lfreemarker/core/Macro;Lfreemarker/core/Environment;Lfreemarker/core/TemplateObject;Ljava/util/List;)V
    .registers 5

    .line 165
    iput-object p1, p0, Lfreemarker/core/Macro$Context;->this$0:Lfreemarker/core/Macro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance p1, Lfreemarker/core/Environment$Namespace;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, p2}, Lfreemarker/core/Environment$Namespace;-><init>(Lfreemarker/core/Environment;)V

    iput-object p1, p0, Lfreemarker/core/Macro$Context;->localVars:Lfreemarker/core/Environment$Namespace;

    .line 167
    iput-object p3, p0, Lfreemarker/core/Macro$Context;->callPlace:Lfreemarker/core/TemplateObject;

    .line 168
    invoke-virtual {p2}, Lfreemarker/core/Environment;->getCurrentNamespace()Lfreemarker/core/Environment$Namespace;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/Macro$Context;->nestedContentNamespace:Lfreemarker/core/Environment$Namespace;

    .line 169
    iput-object p4, p0, Lfreemarker/core/Macro$Context;->nestedContentParameterNames:Ljava/util/List;

    .line 170
    invoke-virtual {p2}, Lfreemarker/core/Environment;->getLocalContextStack()Lfreemarker/core/LocalContextStack;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/Macro$Context;->prevLocalContextStack:Lfreemarker/core/LocalContextStack;

    .line 171
    invoke-virtual {p2}, Lfreemarker/core/Environment;->getCurrentMacroContext()Lfreemarker/core/Macro$Context;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/Macro$Context;->prevMacroContext:Lfreemarker/core/Macro$Context;

    return-void
.end method


# virtual methods
.method public getLocalVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lfreemarker/core/Macro$Context;->localVars:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v0, p1}, Lfreemarker/core/Environment$Namespace;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public getLocalVariableNames()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 261
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 262
    iget-object v1, p0, Lfreemarker/core/Macro$Context;->localVars:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v1}, Lfreemarker/core/Environment$Namespace;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v1

    invoke-interface {v1}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 263
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v2

    check-cast v2, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v2}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_23
    return-object v0
.end method

.method getLocals()Lfreemarker/core/Environment$Namespace;
    .registers 2

    .line 250
    iget-object v0, p0, Lfreemarker/core/Macro$Context;->localVars:Lfreemarker/core/Environment$Namespace;

    return-object v0
.end method

.method getMacro()Lfreemarker/core/Macro;
    .registers 2

    .line 176
    iget-object v0, p0, Lfreemarker/core/Macro$Context;->this$0:Lfreemarker/core/Macro;

    return-object v0
.end method

.method sanityCheck(Lfreemarker/core/Environment;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :cond_4
    const/4 v0, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    move-object v5, v4

    move v6, v3

    move v7, v6

    move v8, v7

    .line 188
    :goto_b
    iget-object v0, v1, Lfreemarker/core/Macro$Context;->this$0:Lfreemarker/core/Macro;

    # getter for: Lfreemarker/core/Macro;->paramNames:[Ljava/lang/String;
    invoke-static {v0}, Lfreemarker/core/Macro;->access$000(Lfreemarker/core/Macro;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge v6, v0, :cond_c0

    .line 189
    iget-object v0, v1, Lfreemarker/core/Macro$Context;->this$0:Lfreemarker/core/Macro;

    # getter for: Lfreemarker/core/Macro;->paramNames:[Ljava/lang/String;
    invoke-static {v0}, Lfreemarker/core/Macro;->access$000(Lfreemarker/core/Macro;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    .line 190
    iget-object v9, v1, Lfreemarker/core/Macro$Context;->localVars:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v9, v0}, Lfreemarker/core/Environment$Namespace;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v9

    if-nez v9, :cond_bc

    .line 191
    iget-object v9, v1, Lfreemarker/core/Macro$Context;->this$0:Lfreemarker/core/Macro;

    # getter for: Lfreemarker/core/Macro;->paramDefaults:Ljava/util/Map;
    invoke-static {v9}, Lfreemarker/core/Macro;->access$100(Lfreemarker/core/Macro;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lfreemarker/core/Expression;

    const/4 v10, 0x1

    if-eqz v9, :cond_4c

    .line 194
    :try_start_33
    invoke-virtual {v9, v2}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v11

    if-nez v11, :cond_3f

    if-nez v8, :cond_bc

    move-object v5, v9

    :goto_3c
    move v8, v10

    goto/16 :goto_bc

    .line 201
    :cond_3f
    iget-object v9, v1, Lfreemarker/core/Macro$Context;->localVars:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v9, v0, v11}, Lfreemarker/core/Environment$Namespace;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_44
    .catch Lfreemarker/core/InvalidReferenceException; {:try_start_33 .. :try_end_44} :catch_47

    move v7, v10

    goto/16 :goto_bc

    :catch_47
    move-exception v0

    if-nez v8, :cond_bc

    move-object v4, v0

    goto :goto_3c

    .line 210
    :cond_4c
    invoke-virtual/range {p1 .. p1}, Lfreemarker/core/Environment;->isClassicCompatible()Z

    move-result v9

    if-nez v9, :cond_bc

    .line 211
    iget-object v4, v1, Lfreemarker/core/Macro$Context;->localVars:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v4, v0}, Lfreemarker/core/Environment$Namespace;->containsKey(Ljava/lang/String;)Z

    move-result v4

    .line 212
    new-instance v5, Lfreemarker/core/_MiscTemplateException;

    new-instance v7, Lfreemarker/core/_ErrorDescriptionBuilder;

    iget-object v8, v1, Lfreemarker/core/Macro$Context;->this$0:Lfreemarker/core/Macro;

    .line 214
    invoke-virtual {v8}, Lfreemarker/core/Macro;->isFunction()Z

    move-result v8

    if-eqz v8, :cond_67

    const-string v8, "function"

    goto :goto_69

    :cond_67
    const-string v8, "macro"

    :goto_69
    move-object v12, v8

    new-instance v14, Lfreemarker/core/_DelayedJQuote;

    iget-object v8, v1, Lfreemarker/core/Macro$Context;->this$0:Lfreemarker/core/Macro;

    .line 215
    # getter for: Lfreemarker/core/Macro;->name:Ljava/lang/String;
    invoke-static {v8}, Lfreemarker/core/Macro;->access$200(Lfreemarker/core/Macro;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v14, v8}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    new-instance v8, Lfreemarker/core/_DelayedJQuote;

    invoke-direct {v8, v0}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    add-int/2addr v6, v10

    .line 217
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    if-eqz v4, :cond_84

    const-string v0, "specified, but had null/missing value."

    goto :goto_86

    :cond_84
    const-string v0, "not specified."

    :goto_86
    move-object/from16 v20, v0

    const-string v11, "When calling "

    const-string v13, " "

    const-string v15, ", required parameter "

    const-string v17, " (parameter #"

    const-string v19, ") was "

    move-object/from16 v16, v8

    filled-new-array/range {v11 .. v20}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v7, v0}, Lfreemarker/core/_ErrorDescriptionBuilder;-><init>([Ljava/lang/Object;)V

    if-eqz v4, :cond_a4

    new-array v0, v10, [Ljava/lang/Object;

    const-string v4, "If the parameter value expression on the caller side is known to be legally null/missing, you may want to specify a default value for it with the \"!\" operator, like paramValue!defaultValue."

    aput-object v4, v0, v3

    goto :goto_b4

    :cond_a4
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "If the omission was deliberate, you may consider making the parameter optional in the macro by specifying a default value for it, like "

    aput-object v4, v0, v3

    const-string v3, "<#macro macroName paramName=defaultExpr>"

    aput-object v3, v0, v10

    const/4 v3, 0x2

    const-string v4, ")"

    aput-object v4, v0, v3

    .line 221
    :goto_b4
    invoke-virtual {v7, v0}, Lfreemarker/core/_ErrorDescriptionBuilder;->tip([Ljava/lang/Object;)Lfreemarker/core/_ErrorDescriptionBuilder;

    move-result-object v0

    invoke-direct {v5, v2, v0}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;Lfreemarker/core/_ErrorDescriptionBuilder;)V

    throw v5

    :cond_bc
    :goto_bc
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_b

    :cond_c0
    if-eqz v7, :cond_c4

    if-nez v8, :cond_4

    :cond_c4
    if-eqz v8, :cond_d5

    if-nez v4, :cond_d4

    .line 239
    invoke-virtual/range {p1 .. p1}, Lfreemarker/core/Environment;->isClassicCompatible()Z

    move-result v0

    if-eqz v0, :cond_cf

    goto :goto_d5

    .line 240
    :cond_cf
    invoke-static {v5, v2}, Lfreemarker/core/InvalidReferenceException;->getInstance(Lfreemarker/core/Expression;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object v0

    throw v0

    .line 238
    :cond_d4
    throw v4

    :cond_d5
    :goto_d5
    return-void
.end method

.method setLocalVar(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V
    .registers 4

    .line 257
    iget-object v0, p0, Lfreemarker/core/Macro$Context;->localVars:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v0, p1, p2}, Lfreemarker/core/Environment$Namespace;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

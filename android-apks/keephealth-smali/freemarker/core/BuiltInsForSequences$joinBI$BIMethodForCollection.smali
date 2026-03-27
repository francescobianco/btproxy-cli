.class Lfreemarker/core/BuiltInsForSequences$joinBI$BIMethodForCollection;
.super Ljava/lang/Object;
.source "BuiltInsForSequences.java"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences$joinBI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BIMethodForCollection"
.end annotation


# instance fields
.field private final coll:Lfreemarker/template/TemplateCollectionModel;

.field private final env:Lfreemarker/core/Environment;

.field final synthetic this$0:Lfreemarker/core/BuiltInsForSequences$joinBI;


# direct methods
.method private constructor <init>(Lfreemarker/core/BuiltInsForSequences$joinBI;Lfreemarker/core/Environment;Lfreemarker/template/TemplateCollectionModel;)V
    .registers 4

    .line 197
    iput-object p1, p0, Lfreemarker/core/BuiltInsForSequences$joinBI$BIMethodForCollection;->this$0:Lfreemarker/core/BuiltInsForSequences$joinBI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p2, p0, Lfreemarker/core/BuiltInsForSequences$joinBI$BIMethodForCollection;->env:Lfreemarker/core/Environment;

    .line 199
    iput-object p3, p0, Lfreemarker/core/BuiltInsForSequences$joinBI$BIMethodForCollection;->coll:Lfreemarker/template/TemplateCollectionModel;

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/core/BuiltInsForSequences$joinBI;Lfreemarker/core/Environment;Lfreemarker/template/TemplateCollectionModel;Lfreemarker/core/BuiltInsForSequences$1;)V
    .registers 5

    .line 192
    invoke-direct {p0, p1, p2, p3}, Lfreemarker/core/BuiltInsForSequences$joinBI$BIMethodForCollection;-><init>(Lfreemarker/core/BuiltInsForSequences$joinBI;Lfreemarker/core/Environment;Lfreemarker/template/TemplateCollectionModel;)V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 204
    iget-object v2, v1, Lfreemarker/core/BuiltInsForSequences$joinBI$BIMethodForCollection;->this$0:Lfreemarker/core/BuiltInsForSequences$joinBI;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4, v3}, Lfreemarker/core/BuiltInsForSequences$joinBI;->checkMethodArgCount(Ljava/util/List;II)V

    .line 205
    iget-object v2, v1, Lfreemarker/core/BuiltInsForSequences$joinBI$BIMethodForCollection;->this$0:Lfreemarker/core/BuiltInsForSequences$joinBI;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lfreemarker/core/BuiltInsForSequences$joinBI;->getStringMethodArg(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v2

    .line 206
    iget-object v5, v1, Lfreemarker/core/BuiltInsForSequences$joinBI$BIMethodForCollection;->this$0:Lfreemarker/core/BuiltInsForSequences$joinBI;

    invoke-virtual {v5, v0, v4}, Lfreemarker/core/BuiltInsForSequences$joinBI;->getOptStringMethodArg(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v5

    .line 207
    iget-object v6, v1, Lfreemarker/core/BuiltInsForSequences$joinBI$BIMethodForCollection;->this$0:Lfreemarker/core/BuiltInsForSequences$joinBI;

    const/4 v7, 0x2

    invoke-virtual {v6, v0, v7}, Lfreemarker/core/BuiltInsForSequences$joinBI;->getOptStringMethodArg(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    .line 209
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    iget-object v7, v1, Lfreemarker/core/BuiltInsForSequences$joinBI$BIMethodForCollection;->coll:Lfreemarker/template/TemplateCollectionModel;

    invoke-interface {v7}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v7

    move v8, v3

    .line 215
    :goto_2b
    invoke-interface {v7}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6e

    .line 216
    invoke-interface {v7}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v9

    if-eqz v9, :cond_6b

    if-eqz v3, :cond_3d

    .line 219
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    :cond_3d
    move v3, v4

    .line 224
    :goto_3e
    :try_start_3e
    iget-object v10, v1, Lfreemarker/core/BuiltInsForSequences$joinBI$BIMethodForCollection;->env:Lfreemarker/core/Environment;

    const/4 v11, 0x0

    invoke-static {v9, v11, v11, v10}, Lfreemarker/core/EvalUtil;->coerceModelToStringOrUnsupportedMarkup(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;Ljava/lang/String;Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_48
    .catch Lfreemarker/template/TemplateException; {:try_start_3e .. :try_end_48} :catch_49

    goto :goto_6b

    :catch_49
    move-exception v0

    .line 226
    new-instance v2, Lfreemarker/core/_TemplateModelException;

    iget-object v3, v1, Lfreemarker/core/BuiltInsForSequences$joinBI$BIMethodForCollection;->this$0:Lfreemarker/core/BuiltInsForSequences$joinBI;

    iget-object v10, v3, Lfreemarker/core/BuiltInsForSequences$joinBI;->key:Ljava/lang/String;

    .line 227
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v15, Lfreemarker/core/_DelayedGetMessageWithoutStackTop;

    invoke-direct {v15, v0}, Lfreemarker/core/_DelayedGetMessageWithoutStackTop;-><init>(Lfreemarker/template/TemplateException;)V

    const-string v16, "\n---end-message---"

    const-string v9, "\"?"

    const-string v11, "\" failed at index "

    const-string v13, " with this error:\n\n"

    const-string v14, "---begin-message---\n"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v2

    :cond_6b
    :goto_6b
    add-int/lit8 v8, v8, 0x1

    goto :goto_2b

    :cond_6e
    if-eqz v3, :cond_76

    if-eqz v0, :cond_7b

    .line 236
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7b

    :cond_76
    if-eqz v5, :cond_7b

    .line 238
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_7b
    :goto_7b
    new-instance v0, Lfreemarker/template/SimpleScalar;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

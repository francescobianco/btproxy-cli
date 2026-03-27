.class Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;
.super Ljava/lang/Object;
.source "BuiltInsForSequences.java"

# interfaces
.implements Lfreemarker/template/TemplateModelIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/BuiltInsForSequences$drop_whileBI;->calculateResult(Lfreemarker/template/TemplateModelIterator;Lfreemarker/template/TemplateModel;ZLfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field dropMode:Z

.field prefetchDone:Z

.field prefetchedElement:Lfreemarker/template/TemplateModel;

.field prefetchedEndOfIterator:Z

.field final synthetic this$0:Lfreemarker/core/BuiltInsForSequences$drop_whileBI;

.field final synthetic val$elementTransformer:Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;

.field final synthetic val$env:Lfreemarker/core/Environment;

.field final synthetic val$lhoIterator:Lfreemarker/template/TemplateModelIterator;


# direct methods
.method constructor <init>(Lfreemarker/core/BuiltInsForSequences$drop_whileBI;Lfreemarker/template/TemplateModelIterator;Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/Environment;)V
    .registers 5

    .line 1262
    iput-object p1, p0, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->this$0:Lfreemarker/core/BuiltInsForSequences$drop_whileBI;

    iput-object p2, p0, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->val$lhoIterator:Lfreemarker/template/TemplateModelIterator;

    iput-object p3, p0, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->val$elementTransformer:Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;

    iput-object p4, p0, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->val$env:Lfreemarker/core/Environment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 1263
    iput-boolean p1, p0, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->dropMode:Z

    return-void
.end method

.method private ensurePrefetchDone()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 1283
    iget-boolean v0, p0, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->prefetchDone:Z

    if-eqz v0, :cond_5

    return-void

    .line 1287
    :cond_5
    iget-boolean v0, p0, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->dropMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3f

    .line 1289
    :cond_b
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->val$lhoIterator:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_35

    .line 1290
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->val$lhoIterator:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 1292
    :try_start_1a
    iget-object v4, p0, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->this$0:Lfreemarker/core/BuiltInsForSequences$drop_whileBI;

    iget-object v5, p0, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->val$elementTransformer:Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;

    iget-object v6, p0, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->val$env:Lfreemarker/core/Environment;

    invoke-virtual {v4, v0, v5, v6}, Lfreemarker/core/BuiltInsForSequences$drop_whileBI;->elementMatches(Lfreemarker/template/TemplateModel;Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/Environment;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1293
    iput-object v0, p0, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->prefetchedElement:Lfreemarker/template/TemplateModel;
    :try_end_28
    .catch Lfreemarker/template/TemplateException; {:try_start_1a .. :try_end_28} :catch_2a

    move v0, v2

    goto :goto_36

    :catch_2a
    move-exception v0

    .line 1298
    new-instance v1, Lfreemarker/core/_TemplateModelException;

    iget-object v2, p0, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->val$env:Lfreemarker/core/Environment;

    const-string v3, "Failed to transform element"

    invoke-direct {v1, v0, v2, v3}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Ljava/lang/String;)V

    throw v1

    :cond_35
    move v0, v3

    .line 1302
    :goto_36
    iput-boolean v3, p0, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->dropMode:Z

    if-nez v0, :cond_54

    .line 1304
    iput-boolean v2, p0, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->prefetchedEndOfIterator:Z

    .line 1305
    iput-object v1, p0, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->prefetchedElement:Lfreemarker/template/TemplateModel;

    goto :goto_54

    .line 1308
    :cond_3f
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->val$lhoIterator:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1309
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->val$lhoIterator:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 1310
    iput-object v0, p0, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->prefetchedElement:Lfreemarker/template/TemplateModel;

    goto :goto_54

    .line 1312
    :cond_50
    iput-boolean v2, p0, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->prefetchedEndOfIterator:Z

    .line 1313
    iput-object v1, p0, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->prefetchedElement:Lfreemarker/template/TemplateModel;

    .line 1316
    :cond_54
    :goto_54
    iput-boolean v2, p0, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->prefetchDone:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 1278
    invoke-direct {p0}, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->ensurePrefetchDone()V

    .line 1279
    iget-boolean v0, p0, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->prefetchedEndOfIterator:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 1269
    invoke-direct {p0}, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->ensurePrefetchDone()V

    .line 1270
    iget-boolean v0, p0, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->prefetchedEndOfIterator:Z

    if-nez v0, :cond_d

    const/4 v0, 0x0

    .line 1273
    iput-boolean v0, p0, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->prefetchDone:Z

    .line 1274
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;->prefetchedElement:Lfreemarker/template/TemplateModel;

    return-object v0

    .line 1271
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next() was called when hasNext() is false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

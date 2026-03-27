.class Lfreemarker/core/BuiltInsForSequences$take_whileBI$1;
.super Ljava/lang/Object;
.source "BuiltInsForSequences.java"

# interfaces
.implements Lfreemarker/template/TemplateModelIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/BuiltInsForSequences$take_whileBI;->calculateResult(Lfreemarker/template/TemplateModelIterator;Lfreemarker/template/TemplateModel;ZLfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field prefetchDone:Z

.field prefetchedElement:Lfreemarker/template/TemplateModel;

.field prefetchedEndOfIterator:Z

.field final synthetic this$0:Lfreemarker/core/BuiltInsForSequences$take_whileBI;

.field final synthetic val$elementTransformer:Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;

.field final synthetic val$env:Lfreemarker/core/Environment;

.field final synthetic val$lhoIterator:Lfreemarker/template/TemplateModelIterator;


# direct methods
.method constructor <init>(Lfreemarker/core/BuiltInsForSequences$take_whileBI;Lfreemarker/template/TemplateModelIterator;Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/Environment;)V
    .registers 5

    .line 1130
    iput-object p1, p0, Lfreemarker/core/BuiltInsForSequences$take_whileBI$1;->this$0:Lfreemarker/core/BuiltInsForSequences$take_whileBI;

    iput-object p2, p0, Lfreemarker/core/BuiltInsForSequences$take_whileBI$1;->val$lhoIterator:Lfreemarker/template/TemplateModelIterator;

    iput-object p3, p0, Lfreemarker/core/BuiltInsForSequences$take_whileBI$1;->val$elementTransformer:Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;

    iput-object p4, p0, Lfreemarker/core/BuiltInsForSequences$take_whileBI$1;->val$env:Lfreemarker/core/Environment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensurePrefetchDone()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 1150
    iget-boolean v0, p0, Lfreemarker/core/BuiltInsForSequences$take_whileBI$1;->prefetchDone:Z

    if-eqz v0, :cond_5

    return-void

    .line 1154
    :cond_5
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$take_whileBI$1;->val$lhoIterator:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_34

    .line 1155
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$take_whileBI$1;->val$lhoIterator:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 1158
    :try_start_15
    iget-object v3, p0, Lfreemarker/core/BuiltInsForSequences$take_whileBI$1;->this$0:Lfreemarker/core/BuiltInsForSequences$take_whileBI;

    iget-object v4, p0, Lfreemarker/core/BuiltInsForSequences$take_whileBI$1;->val$elementTransformer:Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;

    iget-object v5, p0, Lfreemarker/core/BuiltInsForSequences$take_whileBI$1;->val$env:Lfreemarker/core/Environment;

    invoke-virtual {v3, v0, v4, v5}, Lfreemarker/core/BuiltInsForSequences$take_whileBI;->elementMatches(Lfreemarker/template/TemplateModel;Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/Environment;)Z

    move-result v3
    :try_end_1f
    .catch Lfreemarker/template/TemplateException; {:try_start_15 .. :try_end_1f} :catch_29

    if-eqz v3, :cond_24

    .line 1163
    iput-object v0, p0, Lfreemarker/core/BuiltInsForSequences$take_whileBI$1;->prefetchedElement:Lfreemarker/template/TemplateModel;

    goto :goto_38

    .line 1165
    :cond_24
    iput-boolean v2, p0, Lfreemarker/core/BuiltInsForSequences$take_whileBI$1;->prefetchedEndOfIterator:Z

    .line 1166
    iput-object v1, p0, Lfreemarker/core/BuiltInsForSequences$take_whileBI$1;->prefetchedElement:Lfreemarker/template/TemplateModel;

    goto :goto_38

    :catch_29
    move-exception v0

    .line 1160
    new-instance v1, Lfreemarker/core/_TemplateModelException;

    iget-object v2, p0, Lfreemarker/core/BuiltInsForSequences$take_whileBI$1;->val$env:Lfreemarker/core/Environment;

    const-string v3, "Failed to transform element"

    invoke-direct {v1, v0, v2, v3}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Ljava/lang/String;)V

    throw v1

    .line 1169
    :cond_34
    iput-boolean v2, p0, Lfreemarker/core/BuiltInsForSequences$take_whileBI$1;->prefetchedEndOfIterator:Z

    .line 1170
    iput-object v1, p0, Lfreemarker/core/BuiltInsForSequences$take_whileBI$1;->prefetchedElement:Lfreemarker/template/TemplateModel;

    .line 1172
    :goto_38
    iput-boolean v2, p0, Lfreemarker/core/BuiltInsForSequences$take_whileBI$1;->prefetchDone:Z

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

    .line 1145
    invoke-direct {p0}, Lfreemarker/core/BuiltInsForSequences$take_whileBI$1;->ensurePrefetchDone()V

    .line 1146
    iget-boolean v0, p0, Lfreemarker/core/BuiltInsForSequences$take_whileBI$1;->prefetchedEndOfIterator:Z

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

    .line 1136
    invoke-direct {p0}, Lfreemarker/core/BuiltInsForSequences$take_whileBI$1;->ensurePrefetchDone()V

    .line 1137
    iget-boolean v0, p0, Lfreemarker/core/BuiltInsForSequences$take_whileBI$1;->prefetchedEndOfIterator:Z

    if-nez v0, :cond_d

    const/4 v0, 0x0

    .line 1140
    iput-boolean v0, p0, Lfreemarker/core/BuiltInsForSequences$take_whileBI$1;->prefetchDone:Z

    .line 1141
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$take_whileBI$1;->prefetchedElement:Lfreemarker/template/TemplateModel;

    return-object v0

    .line 1138
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next() was called when hasNext() is false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

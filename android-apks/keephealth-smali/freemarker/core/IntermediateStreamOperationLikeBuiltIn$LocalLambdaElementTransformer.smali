.class Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$LocalLambdaElementTransformer;
.super Ljava/lang/Object;
.source "IntermediateStreamOperationLikeBuiltIn.java"

# interfaces
.implements Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalLambdaElementTransformer"
.end annotation


# instance fields
.field private final elementTransformerExp:Lfreemarker/core/LocalLambdaExpression;


# direct methods
.method public constructor <init>(Lfreemarker/core/LocalLambdaExpression;)V
    .registers 2

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$LocalLambdaElementTransformer;->elementTransformerExp:Lfreemarker/core/LocalLambdaExpression;

    return-void
.end method


# virtual methods
.method public transformElement(Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$LocalLambdaElementTransformer;->elementTransformerExp:Lfreemarker/core/LocalLambdaExpression;

    invoke-virtual {v0, p1, p2}, Lfreemarker/core/LocalLambdaExpression;->invokeLambdaDefinedFunction(Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

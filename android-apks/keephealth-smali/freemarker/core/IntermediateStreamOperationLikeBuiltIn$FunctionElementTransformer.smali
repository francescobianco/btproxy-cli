.class Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$FunctionElementTransformer;
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
    name = "FunctionElementTransformer"
.end annotation


# instance fields
.field private final elementTransformerExp:Lfreemarker/core/Expression;

.field private final templateTransformer:Lfreemarker/core/Macro;


# direct methods
.method public constructor <init>(Lfreemarker/core/Macro;Lfreemarker/core/Expression;)V
    .registers 3

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$FunctionElementTransformer;->templateTransformer:Lfreemarker/core/Macro;

    .line 207
    iput-object p2, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$FunctionElementTransformer;->elementTransformerExp:Lfreemarker/core/Expression;

    return-void
.end method


# virtual methods
.method public transformElement(Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 214
    new-instance v0, Lfreemarker/core/ExpressionWithFixedResult;

    iget-object v1, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$FunctionElementTransformer;->elementTransformerExp:Lfreemarker/core/Expression;

    invoke-direct {v0, p1, v1}, Lfreemarker/core/ExpressionWithFixedResult;-><init>(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;)V

    .line 216
    iget-object p1, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$FunctionElementTransformer;->templateTransformer:Lfreemarker/core/Macro;

    .line 217
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$FunctionElementTransformer;->elementTransformerExp:Lfreemarker/core/Expression;

    .line 216
    invoke-virtual {p2, p2, p1, v0, v1}, Lfreemarker/core/Environment;->invokeFunction(Lfreemarker/core/Environment;Lfreemarker/core/Macro;Ljava/util/List;Lfreemarker/core/TemplateObject;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

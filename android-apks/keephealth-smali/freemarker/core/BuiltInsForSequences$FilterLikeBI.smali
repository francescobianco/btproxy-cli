.class abstract Lfreemarker/core/BuiltInsForSequences$FilterLikeBI;
.super Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;
.source "BuiltInsForSequences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "FilterLikeBI"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1012
    invoke-direct {p0}, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/core/BuiltInsForSequences$1;)V
    .registers 2

    .line 1012
    invoke-direct {p0}, Lfreemarker/core/BuiltInsForSequences$FilterLikeBI;-><init>()V

    return-void
.end method


# virtual methods
.method protected final elementMatches(Lfreemarker/template/TemplateModel;Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/Environment;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1016
    invoke-interface {p2, p1, p3}, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;->transformElement(Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    .line 1017
    instance-of p2, p1, Lfreemarker/template/TemplateBooleanModel;

    if-nez p2, :cond_32

    if-nez p1, :cond_16

    .line 1019
    new-instance p1, Lfreemarker/core/_TemplateModelException;

    invoke-virtual {p0}, Lfreemarker/core/BuiltInsForSequences$FilterLikeBI;->getElementTransformerExp()Lfreemarker/core/Expression;

    move-result-object p2

    const-string v0, "The filter expression has returned no value (has returned null), rather than a boolean."

    invoke-direct {p1, p2, p3, v0}, Lfreemarker/core/_TemplateModelException;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Environment;Ljava/lang/String;)V

    throw p1

    .line 1023
    :cond_16
    new-instance p2, Lfreemarker/core/_TemplateModelException;

    invoke-virtual {p0}, Lfreemarker/core/BuiltInsForSequences$FilterLikeBI;->getElementTransformerExp()Lfreemarker/core/Expression;

    move-result-object v0

    new-instance v1, Lfreemarker/core/_DelayedAOrAn;

    new-instance v2, Lfreemarker/core/_DelayedFTLTypeDescription;

    invoke-direct {v2, p1}, Lfreemarker/core/_DelayedFTLTypeDescription;-><init>(Lfreemarker/template/TemplateModel;)V

    invoke-direct {v1, v2}, Lfreemarker/core/_DelayedAOrAn;-><init>(Ljava/lang/Object;)V

    const-string p1, " instead."

    const-string v2, "The filter expression had to return a boolean value, but it returned "

    filled-new-array {v2, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, v0, p3, p1}, Lfreemarker/core/_TemplateModelException;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw p2

    .line 1028
    :cond_32
    check-cast p1, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result p1

    return p1
.end method

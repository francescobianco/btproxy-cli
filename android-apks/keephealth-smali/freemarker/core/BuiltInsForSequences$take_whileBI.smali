.class Lfreemarker/core/BuiltInsForSequences$take_whileBI;
.super Lfreemarker/core/BuiltInsForSequences$FilterLikeBI;
.source "BuiltInsForSequences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "take_whileBI"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1107
    invoke-direct {p0, v0}, Lfreemarker/core/BuiltInsForSequences$FilterLikeBI;-><init>(Lfreemarker/core/BuiltInsForSequences$1;)V

    return-void
.end method


# virtual methods
.method protected calculateResult(Lfreemarker/template/TemplateModelIterator;Lfreemarker/template/TemplateModel;ZLfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1113
    invoke-virtual {p0}, Lfreemarker/core/BuiltInsForSequences$take_whileBI;->isLazilyGeneratedResultEnabled()Z

    move-result p2

    if-nez p2, :cond_2c

    if-eqz p3, :cond_27

    .line 1118
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1119
    :goto_d
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_21

    .line 1120
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object p3

    .line 1121
    invoke-virtual {p0, p3, p4, p5}, Lfreemarker/core/BuiltInsForSequences$take_whileBI;->elementMatches(Lfreemarker/template/TemplateModel;Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/Environment;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1122
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1127
    :cond_21
    new-instance p1, Lfreemarker/template/TemplateModelListSequence;

    invoke-direct {p1, p2}, Lfreemarker/template/TemplateModelListSequence;-><init>(Ljava/util/List;)V

    return-object p1

    .line 1115
    :cond_27
    invoke-static {p0}, Lfreemarker/core/_MessageUtil;->newLazilyGeneratedCollectionMustBeSequenceException(Lfreemarker/core/Expression;)Lfreemarker/template/TemplateException;

    move-result-object p1

    throw p1

    .line 1129
    :cond_2c
    new-instance p2, Lfreemarker/core/LazilyGeneratedCollectionModelWithUnknownSize;

    new-instance v0, Lfreemarker/core/BuiltInsForSequences$take_whileBI$1;

    invoke-direct {v0, p0, p1, p4, p5}, Lfreemarker/core/BuiltInsForSequences$take_whileBI$1;-><init>(Lfreemarker/core/BuiltInsForSequences$take_whileBI;Lfreemarker/template/TemplateModelIterator;Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/Environment;)V

    invoke-direct {p2, v0, p3}, Lfreemarker/core/LazilyGeneratedCollectionModelWithUnknownSize;-><init>(Lfreemarker/template/TemplateModelIterator;Z)V

    return-object p2
.end method

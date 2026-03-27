.class Lfreemarker/core/BuiltInsForSequences$drop_whileBI;
.super Lfreemarker/core/BuiltInsForSequences$FilterLikeBI;
.source "BuiltInsForSequences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "drop_whileBI"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1237
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

    .line 1243
    invoke-virtual {p0}, Lfreemarker/core/BuiltInsForSequences$drop_whileBI;->isLazilyGeneratedResultEnabled()Z

    move-result p2

    if-nez p2, :cond_39

    if-eqz p3, :cond_34

    .line 1248
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1249
    :cond_d
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2e

    .line 1250
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object p3

    .line 1251
    invoke-virtual {p0, p3, p4, p5}, Lfreemarker/core/BuiltInsForSequences$drop_whileBI;->elementMatches(Lfreemarker/template/TemplateModel;Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/Environment;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1252
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1253
    :goto_20
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2e

    .line 1254
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 1259
    :cond_2e
    new-instance p1, Lfreemarker/template/TemplateModelListSequence;

    invoke-direct {p1, p2}, Lfreemarker/template/TemplateModelListSequence;-><init>(Ljava/util/List;)V

    return-object p1

    .line 1245
    :cond_34
    invoke-static {p0}, Lfreemarker/core/_MessageUtil;->newLazilyGeneratedCollectionMustBeSequenceException(Lfreemarker/core/Expression;)Lfreemarker/template/TemplateException;

    move-result-object p1

    throw p1

    .line 1261
    :cond_39
    new-instance p2, Lfreemarker/core/LazilyGeneratedCollectionModelWithUnknownSize;

    new-instance v0, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;

    invoke-direct {v0, p0, p1, p4, p5}, Lfreemarker/core/BuiltInsForSequences$drop_whileBI$1;-><init>(Lfreemarker/core/BuiltInsForSequences$drop_whileBI;Lfreemarker/template/TemplateModelIterator;Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/Environment;)V

    invoke-direct {p2, v0, p3}, Lfreemarker/core/LazilyGeneratedCollectionModelWithUnknownSize;-><init>(Lfreemarker/template/TemplateModelIterator;Z)V

    return-object p2
.end method

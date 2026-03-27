.class Lfreemarker/core/BuiltInsForNodes$AncestorSequence;
.super Lfreemarker/template/SimpleSequence;
.source "BuiltInsForNodes.java"

# interfaces
.implements Lfreemarker/template/TemplateMethodModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForNodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AncestorSequence"
.end annotation


# instance fields
.field private env:Lfreemarker/core/Environment;


# direct methods
.method constructor <init>(Lfreemarker/core/Environment;)V
    .registers 2

    .line 125
    invoke-direct {p0}, Lfreemarker/template/SimpleSequence;-><init>()V

    .line 126
    iput-object p1, p0, Lfreemarker/core/BuiltInsForNodes$AncestorSequence;->env:Lfreemarker/core/Environment;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    if-eqz p1, :cond_52

    .line 130
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_52

    .line 133
    :cond_9
    new-instance v0, Lfreemarker/core/BuiltInsForNodes$AncestorSequence;

    iget-object v1, p0, Lfreemarker/core/BuiltInsForNodes$AncestorSequence;->env:Lfreemarker/core/Environment;

    invoke-direct {v0, v1}, Lfreemarker/core/BuiltInsForNodes$AncestorSequence;-><init>(Lfreemarker/core/Environment;)V

    const/4 v1, 0x0

    move v2, v1

    .line 134
    :goto_12
    invoke-virtual {p0}, Lfreemarker/core/BuiltInsForNodes$AncestorSequence;->size()I

    move-result v3

    if-ge v2, v3, :cond_51

    .line 135
    invoke-virtual {p0, v2}, Lfreemarker/core/BuiltInsForNodes$AncestorSequence;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v3

    check-cast v3, Lfreemarker/template/TemplateNodeModel;

    .line 136
    invoke-interface {v3}, Lfreemarker/template/TemplateNodeModel;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-interface {v3}, Lfreemarker/template/TemplateNodeModel;->getNodeNamespace()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_32

    .line 139
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 140
    invoke-virtual {v0, v3}, Lfreemarker/core/BuiltInsForNodes$AncestorSequence;->add(Ljava/lang/Object;)V

    goto :goto_4e

    :cond_32
    move v6, v1

    .line 143
    :goto_33
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4e

    .line 144
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lfreemarker/core/BuiltInsForNodes$AncestorSequence;->env:Lfreemarker/core/Environment;

    invoke-static {v7, v4, v5, v8}, Lfreemarker/ext/dom/_ExtDomApi;->matchesName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/Environment;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 145
    invoke-virtual {v0, v3}, Lfreemarker/core/BuiltInsForNodes$AncestorSequence;->add(Ljava/lang/Object;)V

    goto :goto_4e

    :cond_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    :cond_4e
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_51
    return-object v0

    :cond_52
    :goto_52
    return-object p0
.end method

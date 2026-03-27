.class public Lfreemarker/template/TemplateModelListSequence;
.super Ljava/lang/Object;
.source "TemplateModelListSequence.java"

# interfaces
.implements Lfreemarker/template/TemplateSequenceModel;


# instance fields
.field private list:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lfreemarker/template/TemplateModelListSequence;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public get(I)Lfreemarker/template/TemplateModel;
    .registers 3

    .line 38
    iget-object v0, p0, Lfreemarker/template/TemplateModelListSequence;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateModel;

    return-object p1
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .registers 2

    .line 49
    iget-object v0, p0, Lfreemarker/template/TemplateModelListSequence;->list:Ljava/util/List;

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 42
    iget-object v0, p0, Lfreemarker/template/TemplateModelListSequence;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

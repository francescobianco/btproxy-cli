.class public Lfreemarker/template/DefaultListAdapter;
.super Lfreemarker/template/WrappingTemplateModel;
.source "DefaultListAdapter.java"

# interfaces
.implements Lfreemarker/template/TemplateSequenceModel;
.implements Lfreemarker/template/AdapterTemplateModel;
.implements Lfreemarker/ext/util/WrapperTemplateModel;
.implements Lfreemarker/template/TemplateModelWithAPISupport;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/DefaultListAdapter$DefaultListAdapterWithCollectionSupport;
    }
.end annotation


# instance fields
.field protected final list:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/List;Lfreemarker/template/utility/RichObjectWrapper;)V
    .registers 3

    .line 71
    invoke-direct {p0, p2}, Lfreemarker/template/WrappingTemplateModel;-><init>(Lfreemarker/template/ObjectWrapper;)V

    .line 72
    iput-object p1, p0, Lfreemarker/template/DefaultListAdapter;->list:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lfreemarker/template/utility/RichObjectWrapper;Lfreemarker/template/DefaultListAdapter$1;)V
    .registers 4

    .line 50
    invoke-direct {p0, p1, p2}, Lfreemarker/template/DefaultListAdapter;-><init>(Ljava/util/List;Lfreemarker/template/utility/RichObjectWrapper;)V

    return-void
.end method

.method public static adapt(Ljava/util/List;Lfreemarker/template/utility/RichObjectWrapper;)Lfreemarker/template/DefaultListAdapter;
    .registers 4

    .line 65
    instance-of v0, p0, Ljava/util/AbstractSequentialList;

    if-eqz v0, :cond_b

    new-instance v0, Lfreemarker/template/DefaultListAdapter$DefaultListAdapterWithCollectionSupport;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lfreemarker/template/DefaultListAdapter$DefaultListAdapterWithCollectionSupport;-><init>(Ljava/util/List;Lfreemarker/template/utility/RichObjectWrapper;Lfreemarker/template/DefaultListAdapter$1;)V

    goto :goto_10

    :cond_b
    new-instance v0, Lfreemarker/template/DefaultListAdapter;

    invoke-direct {v0, p0, p1}, Lfreemarker/template/DefaultListAdapter;-><init>(Ljava/util/List;Lfreemarker/template/utility/RichObjectWrapper;)V

    :goto_10
    return-object v0
.end method


# virtual methods
.method public get(I)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    if-ltz p1, :cond_15

    .line 76
    iget-object v0, p0, Lfreemarker/template/DefaultListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    iget-object v0, p0, Lfreemarker/template/DefaultListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/template/DefaultListAdapter;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return-object p1
.end method

.method public getAPI()Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lfreemarker/template/DefaultListAdapter;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    check-cast v0, Lfreemarker/template/utility/ObjectWrapperWithAPISupport;

    iget-object v1, p0, Lfreemarker/template/DefaultListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Lfreemarker/template/utility/ObjectWrapperWithAPISupport;->wrapAsAPI(Ljava/lang/Object;)Lfreemarker/template/TemplateHashModel;

    move-result-object v0

    return-object v0
.end method

.method public getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 84
    invoke-virtual {p0}, Lfreemarker/template/DefaultListAdapter;->getWrappedObject()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .registers 2

    .line 88
    iget-object v0, p0, Lfreemarker/template/DefaultListAdapter;->list:Ljava/util/List;

    return-object v0
.end method

.method public size()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lfreemarker/template/DefaultListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

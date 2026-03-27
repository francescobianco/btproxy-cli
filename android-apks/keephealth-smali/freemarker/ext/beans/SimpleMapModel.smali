.class public Lfreemarker/ext/beans/SimpleMapModel;
.super Lfreemarker/template/WrappingTemplateModel;
.source "SimpleMapModel.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx2;
.implements Lfreemarker/template/TemplateMethodModelEx;
.implements Lfreemarker/template/AdapterTemplateModel;
.implements Lfreemarker/ext/util/WrapperTemplateModel;
.implements Lfreemarker/template/TemplateModelWithAPISupport;


# static fields
.field static final FACTORY:Lfreemarker/ext/util/ModelFactory;


# instance fields
.field private final map:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Lfreemarker/ext/beans/SimpleMapModel$1;

    invoke-direct {v0}, Lfreemarker/ext/beans/SimpleMapModel$1;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/SimpleMapModel;->FACTORY:Lfreemarker/ext/util/ModelFactory;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lfreemarker/ext/beans/BeansWrapper;)V
    .registers 3

    .line 61
    invoke-direct {p0, p2}, Lfreemarker/template/WrappingTemplateModel;-><init>(Lfreemarker/template/ObjectWrapper;)V

    .line 62
    iput-object p1, p0, Lfreemarker/ext/beans/SimpleMapModel;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lfreemarker/ext/beans/SimpleMapModel;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/beans/BeansWrapper;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateModel;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/BeansWrapper;->unwrap(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;

    move-result-object p1

    .line 84
    iget-object v0, p0, Lfreemarker/ext/beans/SimpleMapModel;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_23

    .line 85
    iget-object v1, p0, Lfreemarker/ext/beans/SimpleMapModel;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    const/4 p1, 0x0

    return-object p1

    .line 88
    :cond_23
    invoke-virtual {p0, v0}, Lfreemarker/ext/beans/SimpleMapModel;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lfreemarker/ext/beans/SimpleMapModel;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3d

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_34

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lfreemarker/ext/beans/SimpleMapModel;->map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_32

    .line 72
    iget-object v2, p0, Lfreemarker/ext/beans/SimpleMapModel;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    iget-object p1, p0, Lfreemarker/ext/beans/SimpleMapModel;->map:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    return-object v3

    :cond_32
    move-object v0, v1

    goto :goto_3d

    .line 75
    :cond_34
    iget-object v1, p0, Lfreemarker/ext/beans/SimpleMapModel;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    return-object v3

    .line 79
    :cond_3d
    :goto_3d
    invoke-virtual {p0, v0}, Lfreemarker/ext/beans/SimpleMapModel;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public getAPI()Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lfreemarker/ext/beans/SimpleMapModel;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    check-cast v0, Lfreemarker/template/utility/RichObjectWrapper;

    iget-object v1, p0, Lfreemarker/ext/beans/SimpleMapModel;->map:Ljava/util/Map;

    invoke-interface {v0, v1}, Lfreemarker/template/utility/RichObjectWrapper;->wrapAsAPI(Ljava/lang/Object;)Lfreemarker/template/TemplateHashModel;

    move-result-object v0

    return-object v0
.end method

.method public getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 112
    iget-object p1, p0, Lfreemarker/ext/beans/SimpleMapModel;->map:Ljava/util/Map;

    return-object p1
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .registers 2

    .line 116
    iget-object v0, p0, Lfreemarker/ext/beans/SimpleMapModel;->map:Ljava/util/Map;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 92
    iget-object v0, p0, Lfreemarker/ext/beans/SimpleMapModel;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keyValuePairIterator()Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;
    .registers 4

    .line 108
    new-instance v0, Lfreemarker/template/MapKeyValuePairIterator;

    iget-object v1, p0, Lfreemarker/ext/beans/SimpleMapModel;->map:Ljava/util/Map;

    invoke-virtual {p0}, Lfreemarker/ext/beans/SimpleMapModel;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfreemarker/template/MapKeyValuePairIterator;-><init>(Ljava/util/Map;Lfreemarker/template/ObjectWrapper;)V

    return-object v0
.end method

.method public keys()Lfreemarker/template/TemplateCollectionModel;
    .registers 5

    .line 100
    new-instance v0, Lfreemarker/core/CollectionAndSequence;

    new-instance v1, Lfreemarker/template/SimpleSequence;

    iget-object v2, p0, Lfreemarker/ext/beans/SimpleMapModel;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0}, Lfreemarker/ext/beans/SimpleMapModel;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;Lfreemarker/template/ObjectWrapper;)V

    invoke-direct {v0, v1}, Lfreemarker/core/CollectionAndSequence;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 96
    iget-object v0, p0, Lfreemarker/ext/beans/SimpleMapModel;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Lfreemarker/template/TemplateCollectionModel;
    .registers 5

    .line 104
    new-instance v0, Lfreemarker/core/CollectionAndSequence;

    new-instance v1, Lfreemarker/template/SimpleSequence;

    iget-object v2, p0, Lfreemarker/ext/beans/SimpleMapModel;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p0}, Lfreemarker/ext/beans/SimpleMapModel;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;Lfreemarker/template/ObjectWrapper;)V

    invoke-direct {v0, v1}, Lfreemarker/core/CollectionAndSequence;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    return-object v0
.end method

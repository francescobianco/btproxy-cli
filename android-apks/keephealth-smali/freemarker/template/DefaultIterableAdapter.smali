.class public Lfreemarker/template/DefaultIterableAdapter;
.super Lfreemarker/template/WrappingTemplateModel;
.source "DefaultIterableAdapter.java"

# interfaces
.implements Lfreemarker/template/TemplateCollectionModel;
.implements Lfreemarker/template/AdapterTemplateModel;
.implements Lfreemarker/ext/util/WrapperTemplateModel;
.implements Lfreemarker/template/TemplateModelWithAPISupport;
.implements Ljava/io/Serializable;


# instance fields
.field private final iterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Iterable;Lfreemarker/template/utility/ObjectWrapperWithAPISupport;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Lfreemarker/template/utility/ObjectWrapperWithAPISupport;",
            ")V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p2}, Lfreemarker/template/WrappingTemplateModel;-><init>(Lfreemarker/template/ObjectWrapper;)V

    .line 67
    iput-object p1, p0, Lfreemarker/template/DefaultIterableAdapter;->iterable:Ljava/lang/Iterable;

    return-void
.end method

.method public static adapt(Ljava/lang/Iterable;Lfreemarker/template/utility/ObjectWrapperWithAPISupport;)Lfreemarker/template/DefaultIterableAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Lfreemarker/template/utility/ObjectWrapperWithAPISupport;",
            ")",
            "Lfreemarker/template/DefaultIterableAdapter;"
        }
    .end annotation

    .line 62
    new-instance v0, Lfreemarker/template/DefaultIterableAdapter;

    invoke-direct {v0, p0, p1}, Lfreemarker/template/DefaultIterableAdapter;-><init>(Ljava/lang/Iterable;Lfreemarker/template/utility/ObjectWrapperWithAPISupport;)V

    return-object v0
.end method


# virtual methods
.method public getAPI()Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lfreemarker/template/DefaultIterableAdapter;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    check-cast v0, Lfreemarker/template/utility/ObjectWrapperWithAPISupport;

    iget-object v1, p0, Lfreemarker/template/DefaultIterableAdapter;->iterable:Ljava/lang/Iterable;

    invoke-interface {v0, v1}, Lfreemarker/template/utility/ObjectWrapperWithAPISupport;->wrapAsAPI(Ljava/lang/Object;)Lfreemarker/template/TemplateHashModel;

    move-result-object v0

    return-object v0
.end method

.method public getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 79
    invoke-virtual {p0}, Lfreemarker/template/DefaultIterableAdapter;->getWrappedObject()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .registers 2

    .line 75
    iget-object v0, p0, Lfreemarker/template/DefaultIterableAdapter;->iterable:Ljava/lang/Iterable;

    return-object v0
.end method

.method public iterator()Lfreemarker/template/TemplateModelIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 71
    new-instance v0, Lfreemarker/template/IteratorToTemplateModelIteratorAdapter;

    iget-object v1, p0, Lfreemarker/template/DefaultIterableAdapter;->iterable:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p0}, Lfreemarker/template/DefaultIterableAdapter;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfreemarker/template/IteratorToTemplateModelIteratorAdapter;-><init>(Ljava/util/Iterator;Lfreemarker/template/ObjectWrapper;)V

    return-object v0
.end method

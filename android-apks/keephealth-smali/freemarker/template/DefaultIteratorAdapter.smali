.class public Lfreemarker/template/DefaultIteratorAdapter;
.super Lfreemarker/template/WrappingTemplateModel;
.source "DefaultIteratorAdapter.java"

# interfaces
.implements Lfreemarker/template/TemplateCollectionModel;
.implements Lfreemarker/template/AdapterTemplateModel;
.implements Lfreemarker/ext/util/WrapperTemplateModel;
.implements Lfreemarker/template/TemplateModelWithAPISupport;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/DefaultIteratorAdapter$SimpleTemplateModelIterator;
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;

.field private iteratorOwnedBySomeone:Z


# direct methods
.method private constructor <init>(Ljava/util/Iterator;Lfreemarker/template/ObjectWrapper;)V
    .registers 3

    .line 64
    invoke-direct {p0, p2}, Lfreemarker/template/WrappingTemplateModel;-><init>(Lfreemarker/template/ObjectWrapper;)V

    .line 65
    iput-object p1, p0, Lfreemarker/template/DefaultIteratorAdapter;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method static synthetic access$100(Lfreemarker/template/DefaultIteratorAdapter;)Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lfreemarker/template/DefaultIteratorAdapter;->iteratorOwnedBySomeone:Z

    return p0
.end method

.method static synthetic access$102(Lfreemarker/template/DefaultIteratorAdapter;Z)Z
    .registers 2

    .line 46
    iput-boolean p1, p0, Lfreemarker/template/DefaultIteratorAdapter;->iteratorOwnedBySomeone:Z

    return p1
.end method

.method static synthetic access$200(Lfreemarker/template/DefaultIteratorAdapter;)Ljava/util/Iterator;
    .registers 1

    .line 46
    iget-object p0, p0, Lfreemarker/template/DefaultIteratorAdapter;->iterator:Ljava/util/Iterator;

    return-object p0
.end method

.method public static adapt(Ljava/util/Iterator;Lfreemarker/template/ObjectWrapper;)Lfreemarker/template/DefaultIteratorAdapter;
    .registers 3

    .line 60
    new-instance v0, Lfreemarker/template/DefaultIteratorAdapter;

    invoke-direct {v0, p0, p1}, Lfreemarker/template/DefaultIteratorAdapter;-><init>(Ljava/util/Iterator;Lfreemarker/template/ObjectWrapper;)V

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

    .line 81
    invoke-virtual {p0}, Lfreemarker/template/DefaultIteratorAdapter;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    check-cast v0, Lfreemarker/template/utility/ObjectWrapperWithAPISupport;

    iget-object v1, p0, Lfreemarker/template/DefaultIteratorAdapter;->iterator:Ljava/util/Iterator;

    invoke-interface {v0, v1}, Lfreemarker/template/utility/ObjectWrapperWithAPISupport;->wrapAsAPI(Ljava/lang/Object;)Lfreemarker/template/TemplateHashModel;

    move-result-object v0

    return-object v0
.end method

.method public getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 73
    invoke-virtual {p0}, Lfreemarker/template/DefaultIteratorAdapter;->getWrappedObject()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .registers 2

    .line 69
    iget-object v0, p0, Lfreemarker/template/DefaultIteratorAdapter;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public iterator()Lfreemarker/template/TemplateModelIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 77
    new-instance v0, Lfreemarker/template/DefaultIteratorAdapter$SimpleTemplateModelIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfreemarker/template/DefaultIteratorAdapter$SimpleTemplateModelIterator;-><init>(Lfreemarker/template/DefaultIteratorAdapter;Lfreemarker/template/DefaultIteratorAdapter$1;)V

    return-object v0
.end method

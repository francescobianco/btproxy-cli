.class Lfreemarker/core/LazyCollectionTemplateModelIterator;
.super Ljava/lang/Object;
.source "LazyCollectionTemplateModelIterator.java"

# interfaces
.implements Lfreemarker/template/TemplateModelIterator;


# instance fields
.field private iterator:Lfreemarker/template/TemplateModelIterator;

.field private final templateCollectionModel:Lfreemarker/template/TemplateCollectionModel;


# direct methods
.method public constructor <init>(Lfreemarker/template/TemplateCollectionModel;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lfreemarker/core/LazyCollectionTemplateModelIterator;->templateCollectionModel:Lfreemarker/template/TemplateCollectionModel;

    return-void
.end method

.method private ensureIteratorInitialized()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lfreemarker/core/LazyCollectionTemplateModelIterator;->iterator:Lfreemarker/template/TemplateModelIterator;

    if-nez v0, :cond_c

    .line 51
    iget-object v0, p0, Lfreemarker/core/LazyCollectionTemplateModelIterator;->templateCollectionModel:Lfreemarker/template/TemplateCollectionModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/LazyCollectionTemplateModelIterator;->iterator:Lfreemarker/template/TemplateModelIterator;

    :cond_c
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lfreemarker/core/LazyCollectionTemplateModelIterator;->ensureIteratorInitialized()V

    .line 46
    iget-object v0, p0, Lfreemarker/core/LazyCollectionTemplateModelIterator;->iterator:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lfreemarker/template/TemplateModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lfreemarker/core/LazyCollectionTemplateModelIterator;->ensureIteratorInitialized()V

    .line 41
    iget-object v0, p0, Lfreemarker/core/LazyCollectionTemplateModelIterator;->iterator:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v0

    return-object v0
.end method

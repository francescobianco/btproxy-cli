.class Lfreemarker/core/SingleIterationCollectionModel;
.super Ljava/lang/Object;
.source "SingleIterationCollectionModel.java"

# interfaces
.implements Lfreemarker/template/TemplateCollectionModel;


# instance fields
.field private iterator:Lfreemarker/template/TemplateModelIterator;


# direct methods
.method constructor <init>(Lfreemarker/template/TemplateModelIterator;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/Object;)V

    .line 39
    iput-object p1, p0, Lfreemarker/core/SingleIterationCollectionModel;->iterator:Lfreemarker/template/TemplateModelIterator;

    return-void
.end method


# virtual methods
.method protected getIterator()Lfreemarker/template/TemplateModelIterator;
    .registers 2

    .line 53
    iget-object v0, p0, Lfreemarker/core/SingleIterationCollectionModel;->iterator:Lfreemarker/template/TemplateModelIterator;

    return-object v0
.end method

.method public iterator()Lfreemarker/template/TemplateModelIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lfreemarker/core/SingleIterationCollectionModel;->iterator:Lfreemarker/template/TemplateModelIterator;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lfreemarker/core/SingleIterationCollectionModel;->iterator:Lfreemarker/template/TemplateModelIterator;

    return-object v0

    .line 44
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t return the iterator again, as this TemplateCollectionModel can only be iterated once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

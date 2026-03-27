.class Lfreemarker/template/DefaultListAdapter$DefaultListAdapterWithCollectionSupport;
.super Lfreemarker/template/DefaultListAdapter;
.source "DefaultListAdapter.java"

# interfaces
.implements Lfreemarker/template/TemplateCollectionModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/DefaultListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultListAdapterWithCollectionSupport"
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/List;Lfreemarker/template/utility/RichObjectWrapper;)V
    .registers 4

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, p2, v0}, Lfreemarker/template/DefaultListAdapter;-><init>(Ljava/util/List;Lfreemarker/template/utility/RichObjectWrapper;Lfreemarker/template/DefaultListAdapter$1;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lfreemarker/template/utility/RichObjectWrapper;Lfreemarker/template/DefaultListAdapter$1;)V
    .registers 4

    .line 91
    invoke-direct {p0, p1, p2}, Lfreemarker/template/DefaultListAdapter$DefaultListAdapterWithCollectionSupport;-><init>(Ljava/util/List;Lfreemarker/template/utility/RichObjectWrapper;)V

    return-void
.end method


# virtual methods
.method public iterator()Lfreemarker/template/TemplateModelIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 99
    new-instance v0, Lfreemarker/template/IteratorToTemplateModelIteratorAdapter;

    iget-object v1, p0, Lfreemarker/template/DefaultListAdapter$DefaultListAdapterWithCollectionSupport;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p0}, Lfreemarker/template/DefaultListAdapter$DefaultListAdapterWithCollectionSupport;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfreemarker/template/IteratorToTemplateModelIteratorAdapter;-><init>(Ljava/util/Iterator;Lfreemarker/template/ObjectWrapper;)V

    return-object v0
.end method

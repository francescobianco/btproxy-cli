.class Lfreemarker/template/utility/TemplateModelUtils$TemplateHashModelExKeyValuePairIterator;
.super Ljava/lang/Object;
.source "TemplateModelUtils.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/utility/TemplateModelUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TemplateHashModelExKeyValuePairIterator"
.end annotation


# instance fields
.field private final hash:Lfreemarker/template/TemplateHashModelEx;

.field private final keyIter:Lfreemarker/template/TemplateModelIterator;


# direct methods
.method private constructor <init>(Lfreemarker/template/TemplateHashModelEx;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lfreemarker/template/utility/TemplateModelUtils$TemplateHashModelExKeyValuePairIterator;->hash:Lfreemarker/template/TemplateHashModelEx;

    .line 77
    invoke-interface {p1}, Lfreemarker/template/TemplateHashModelEx;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object p1

    invoke-interface {p1}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/template/utility/TemplateModelUtils$TemplateHashModelExKeyValuePairIterator;->keyIter:Lfreemarker/template/TemplateModelIterator;

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/template/TemplateHashModelEx;Lfreemarker/template/utility/TemplateModelUtils$1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1}, Lfreemarker/template/utility/TemplateModelUtils$TemplateHashModelExKeyValuePairIterator;-><init>(Lfreemarker/template/TemplateHashModelEx;)V

    return-void
.end method

.method static synthetic access$100(Lfreemarker/template/utility/TemplateModelUtils$TemplateHashModelExKeyValuePairIterator;)Lfreemarker/template/TemplateHashModelEx;
    .registers 1

    .line 70
    iget-object p0, p0, Lfreemarker/template/utility/TemplateModelUtils$TemplateHashModelExKeyValuePairIterator;->hash:Lfreemarker/template/TemplateHashModelEx;

    return-object p0
.end method


# virtual methods
.method public hasNext()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lfreemarker/template/utility/TemplateModelUtils$TemplateHashModelExKeyValuePairIterator;->keyIter:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lfreemarker/template/TemplateHashModelEx2$KeyValuePair;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lfreemarker/template/utility/TemplateModelUtils$TemplateHashModelExKeyValuePairIterator;->keyIter:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 86
    instance-of v1, v0, Lfreemarker/template/TemplateScalarModel;

    if-eqz v1, :cond_10

    .line 90
    new-instance v1, Lfreemarker/template/utility/TemplateModelUtils$TemplateHashModelExKeyValuePairIterator$1;

    invoke-direct {v1, p0, v0}, Lfreemarker/template/utility/TemplateModelUtils$TemplateHashModelExKeyValuePairIterator$1;-><init>(Lfreemarker/template/utility/TemplateModelUtils$TemplateHashModelExKeyValuePairIterator;Lfreemarker/template/TemplateModel;)V

    return-object v1

    .line 87
    :cond_10
    iget-object v1, p0, Lfreemarker/template/utility/TemplateModelUtils$TemplateHashModelExKeyValuePairIterator;->hash:Lfreemarker/template/TemplateHashModelEx;

    invoke-static {v0, v1}, Lfreemarker/core/_MessageUtil;->newKeyValuePairListingNonStringKeyExceptionMessage(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateHashModelEx;)Lfreemarker/template/TemplateModelException;

    move-result-object v0

    throw v0
.end method

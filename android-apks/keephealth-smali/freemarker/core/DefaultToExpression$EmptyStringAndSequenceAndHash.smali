.class Lfreemarker/core/DefaultToExpression$EmptyStringAndSequenceAndHash;
.super Ljava/lang/Object;
.source "DefaultToExpression.java"

# interfaces
.implements Lfreemarker/template/TemplateScalarModel;
.implements Lfreemarker/template/TemplateSequenceModel;
.implements Lfreemarker/template/TemplateHashModelEx2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/DefaultToExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyStringAndSequenceAndHash"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/core/DefaultToExpression$1;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Lfreemarker/core/DefaultToExpression$EmptyStringAndSequenceAndHash;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lfreemarker/template/TemplateModel;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAsString()Ljava/lang/String;
    .registers 2

    .line 41
    const-string v0, ""

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public keyValuePairIterator()Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 62
    sget-object v0, Lfreemarker/template/utility/Constants;->EMPTY_KEY_VALUE_PAIR_ITERATOR:Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;

    return-object v0
.end method

.method public keys()Lfreemarker/template/TemplateCollectionModel;
    .registers 2

    .line 56
    # getter for: Lfreemarker/core/DefaultToExpression;->EMPTY_COLLECTION:Lfreemarker/template/TemplateCollectionModel;
    invoke-static {}, Lfreemarker/core/DefaultToExpression;->access$000()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public values()Lfreemarker/template/TemplateCollectionModel;
    .registers 2

    .line 59
    # getter for: Lfreemarker/core/DefaultToExpression;->EMPTY_COLLECTION:Lfreemarker/template/TemplateCollectionModel;
    invoke-static {}, Lfreemarker/core/DefaultToExpression;->access$000()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v0

    return-object v0
.end method

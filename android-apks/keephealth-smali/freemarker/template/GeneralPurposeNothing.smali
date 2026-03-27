.class final Lfreemarker/template/GeneralPurposeNothing;
.super Ljava/lang/Object;
.source "GeneralPurposeNothing.java"

# interfaces
.implements Lfreemarker/template/TemplateBooleanModel;
.implements Lfreemarker/template/TemplateScalarModel;
.implements Lfreemarker/template/TemplateSequenceModel;
.implements Lfreemarker/template/TemplateHashModelEx2;
.implements Lfreemarker/template/TemplateMethodModelEx;


# static fields
.field private static final instance:Lfreemarker/template/TemplateModel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lfreemarker/template/GeneralPurposeNothing;

    invoke-direct {v0}, Lfreemarker/template/GeneralPurposeNothing;-><init>()V

    sput-object v0, Lfreemarker/template/GeneralPurposeNothing;->instance:Lfreemarker/template/TemplateModel;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Lfreemarker/template/TemplateModel;
    .registers 1

    .line 41
    sget-object v0, Lfreemarker/template/GeneralPurposeNothing;->instance:Lfreemarker/template/TemplateModel;

    return-object v0
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public get(I)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 61
    new-instance p1, Lfreemarker/template/TemplateModelException;

    const-string v0, "Can\'t get item from an empty sequence."

    invoke-direct {p1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAsBoolean()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAsString()Ljava/lang/String;
    .registers 2

    .line 45
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

    .line 81
    sget-object v0, Lfreemarker/template/utility/Constants;->EMPTY_KEY_VALUE_PAIR_ITERATOR:Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;

    return-object v0
.end method

.method public keys()Lfreemarker/template/TemplateCollectionModel;
    .registers 2

    .line 73
    sget-object v0, Lfreemarker/template/utility/Constants;->EMPTY_COLLECTION:Lfreemarker/template/TemplateCollectionModel;

    return-object v0
.end method

.method public size()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public values()Lfreemarker/template/TemplateCollectionModel;
    .registers 2

    .line 77
    sget-object v0, Lfreemarker/template/utility/Constants;->EMPTY_COLLECTION:Lfreemarker/template/TemplateCollectionModel;

    return-object v0
.end method

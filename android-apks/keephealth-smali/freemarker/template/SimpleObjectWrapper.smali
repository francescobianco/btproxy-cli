.class public Lfreemarker/template/SimpleObjectWrapper;
.super Lfreemarker/template/DefaultObjectWrapper;
.source "SimpleObjectWrapper.java"


# static fields
.field static final instance:Lfreemarker/template/SimpleObjectWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lfreemarker/template/SimpleObjectWrapper;

    invoke-direct {v0}, Lfreemarker/template/SimpleObjectWrapper;-><init>()V

    sput-object v0, Lfreemarker/template/SimpleObjectWrapper;->instance:Lfreemarker/template/SimpleObjectWrapper;

    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    invoke-direct {p0}, Lfreemarker/template/DefaultObjectWrapper;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/Version;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lfreemarker/template/DefaultObjectWrapper;-><init>(Lfreemarker/template/Version;)V

    return-void
.end method


# virtual methods
.method protected handleUnknownType(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 56
    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SimpleObjectWrapper deliberately won\'t wrap this type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public wrapAsAPI(Ljava/lang/Object;)Lfreemarker/template/TemplateHashModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 62
    new-instance p1, Lfreemarker/template/TemplateModelException;

    const-string v0, "SimpleObjectWrapper deliberately doesn\'t allow ?api."

    invoke-direct {p1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

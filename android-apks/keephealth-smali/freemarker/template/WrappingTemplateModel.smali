.class public abstract Lfreemarker/template/WrappingTemplateModel;
.super Ljava/lang/Object;
.source "WrappingTemplateModel.java"


# static fields
.field private static defaultObjectWrapper:Lfreemarker/template/ObjectWrapper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private objectWrapper:Lfreemarker/template/ObjectWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    sget-object v0, Lfreemarker/template/DefaultObjectWrapper;->instance:Lfreemarker/template/DefaultObjectWrapper;

    sput-object v0, Lfreemarker/template/WrappingTemplateModel;->defaultObjectWrapper:Lfreemarker/template/ObjectWrapper;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    sget-object v0, Lfreemarker/template/WrappingTemplateModel;->defaultObjectWrapper:Lfreemarker/template/ObjectWrapper;

    invoke-direct {p0, v0}, Lfreemarker/template/WrappingTemplateModel;-><init>(Lfreemarker/template/ObjectWrapper;)V

    return-void
.end method

.method protected constructor <init>(Lfreemarker/template/ObjectWrapper;)V
    .registers 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    goto :goto_8

    .line 85
    :cond_6
    sget-object p1, Lfreemarker/template/WrappingTemplateModel;->defaultObjectWrapper:Lfreemarker/template/ObjectWrapper;

    :goto_8
    iput-object p1, p0, Lfreemarker/template/WrappingTemplateModel;->objectWrapper:Lfreemarker/template/ObjectWrapper;

    if-nez p1, :cond_15

    .line 88
    new-instance p1, Lfreemarker/template/DefaultObjectWrapper;

    invoke-direct {p1}, Lfreemarker/template/DefaultObjectWrapper;-><init>()V

    sput-object p1, Lfreemarker/template/WrappingTemplateModel;->defaultObjectWrapper:Lfreemarker/template/ObjectWrapper;

    iput-object p1, p0, Lfreemarker/template/WrappingTemplateModel;->objectWrapper:Lfreemarker/template/ObjectWrapper;

    :cond_15
    return-void
.end method

.method public static getDefaultObjectWrapper()Lfreemarker/template/ObjectWrapper;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    sget-object v0, Lfreemarker/template/WrappingTemplateModel;->defaultObjectWrapper:Lfreemarker/template/ObjectWrapper;

    return-object v0
.end method

.method public static setDefaultObjectWrapper(Lfreemarker/template/ObjectWrapper;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    sput-object p0, Lfreemarker/template/WrappingTemplateModel;->defaultObjectWrapper:Lfreemarker/template/ObjectWrapper;

    return-void
.end method


# virtual methods
.method public getObjectWrapper()Lfreemarker/template/ObjectWrapper;
    .registers 2

    .line 96
    iget-object v0, p0, Lfreemarker/template/WrappingTemplateModel;->objectWrapper:Lfreemarker/template/ObjectWrapper;

    return-object v0
.end method

.method public setObjectWrapper(Lfreemarker/template/ObjectWrapper;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lfreemarker/template/WrappingTemplateModel;->objectWrapper:Lfreemarker/template/ObjectWrapper;

    return-void
.end method

.method protected final wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lfreemarker/template/WrappingTemplateModel;->objectWrapper:Lfreemarker/template/ObjectWrapper;

    invoke-interface {v0, p1}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

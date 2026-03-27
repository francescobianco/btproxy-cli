.class public Lfreemarker/ext/rhino/RhinoWrapper;
.super Lfreemarker/ext/beans/BeansWrapper;
.source "RhinoWrapper.java"


# static fields
.field private static final UNDEFINED_INSTANCE:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 45
    :try_start_0
    new-instance v0, Lfreemarker/ext/rhino/RhinoWrapper$1;

    invoke-direct {v0}, Lfreemarker/ext/rhino/RhinoWrapper$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/rhino/RhinoWrapper;->UNDEFINED_INSTANCE:Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_b} :catch_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    .line 53
    new-instance v1, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {v1, v0}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_13
    move-exception v0

    .line 51
    throw v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lfreemarker/ext/beans/BeansWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method protected getModelFactory(Ljava/lang/Class;)Lfreemarker/ext/util/ModelFactory;
    .registers 3

    .line 82
    const-class v0, Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 83
    sget-object p1, Lfreemarker/ext/rhino/RhinoScriptableModel;->FACTORY:Lfreemarker/ext/util/ModelFactory;

    return-object p1

    .line 85
    :cond_b
    invoke-super {p0, p1}, Lfreemarker/ext/beans/BeansWrapper;->getModelFactory(Ljava/lang/Class;)Lfreemarker/ext/util/ModelFactory;

    move-result-object p1

    return-object p1
.end method

.method public wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 60
    sget-object v0, Lfreemarker/ext/rhino/RhinoWrapper;->UNDEFINED_INSTANCE:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_22

    sget-object v0, Lorg/mozilla/javascript/UniqueTag;->NOT_FOUND:Lorg/mozilla/javascript/UniqueTag;

    if-ne p1, v0, :cond_a

    goto :goto_22

    .line 70
    :cond_a
    sget-object v0, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    if-ne p1, v0, :cond_13

    .line 71
    invoke-super {p0, v1}, Lfreemarker/ext/beans/BeansWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 74
    :cond_13
    instance-of v0, p1, Lorg/mozilla/javascript/Wrapper;

    if-eqz v0, :cond_1d

    .line 75
    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p1

    .line 77
    :cond_1d
    invoke-super {p0, p1}, Lfreemarker/ext/beans/BeansWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    :cond_22
    :goto_22
    return-object v1
.end method

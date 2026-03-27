.class public Lfreemarker/ext/jython/JythonWrapper;
.super Ljava/lang/Object;
.source "JythonWrapper.java"

# interfaces
.implements Lfreemarker/template/ObjectWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/jython/JythonWrapper$TemplateModelToJythonAdapter;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lfreemarker/ext/jython/JythonWrapper;

.field private static final PYOBJECT_CLASS:Ljava/lang/Class;


# instance fields
.field private attributesShadowItems:Z

.field private final modelCache:Lfreemarker/ext/util/ModelCache;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    const-class v0, Lorg/python/core/PyObject;

    sput-object v0, Lfreemarker/ext/jython/JythonWrapper;->PYOBJECT_CLASS:Ljava/lang/Class;

    .line 60
    new-instance v0, Lfreemarker/ext/jython/JythonWrapper;

    invoke-direct {v0}, Lfreemarker/ext/jython/JythonWrapper;-><init>()V

    sput-object v0, Lfreemarker/ext/jython/JythonWrapper;->INSTANCE:Lfreemarker/ext/jython/JythonWrapper;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lfreemarker/ext/jython/JythonModelCache;

    invoke-direct {v0, p0}, Lfreemarker/ext/jython/JythonModelCache;-><init>(Lfreemarker/ext/jython/JythonWrapper;)V

    iput-object v0, p0, Lfreemarker/ext/jython/JythonWrapper;->modelCache:Lfreemarker/ext/util/ModelCache;

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lfreemarker/ext/jython/JythonWrapper;->attributesShadowItems:Z

    return-void
.end method


# virtual methods
.method isAttributesShadowItems()Z
    .registers 2

    .line 93
    iget-boolean v0, p0, Lfreemarker/ext/jython/JythonWrapper;->attributesShadowItems:Z

    return v0
.end method

.method public declared-synchronized setAttributesShadowItems(Z)V
    .registers 2

    monitor-enter p0

    .line 89
    :try_start_1
    iput-boolean p1, p0, Lfreemarker/ext/jython/JythonWrapper;->attributesShadowItems:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 90
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setUseCache(Z)V
    .registers 3

    .line 75
    iget-object v0, p0, Lfreemarker/ext/jython/JythonWrapper;->modelCache:Lfreemarker/ext/util/ModelCache;

    invoke-virtual {v0, p1}, Lfreemarker/ext/util/ModelCache;->setUseCache(Z)V

    return-void
.end method

.method public unwrap(Lfreemarker/template/TemplateModel;)Lorg/python/core/PyObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 139
    instance-of v0, p1, Lfreemarker/template/AdapterTemplateModel;

    if-eqz v0, :cond_11

    .line 140
    check-cast p1, Lfreemarker/template/AdapterTemplateModel;

    sget-object v0, Lfreemarker/ext/jython/JythonWrapper;->PYOBJECT_CLASS:Ljava/lang/Class;

    invoke-interface {p1, v0}, Lfreemarker/template/AdapterTemplateModel;->getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/python/core/Py;->java2py(Ljava/lang/Object;)Lorg/python/core/PyObject;

    move-result-object p1

    return-object p1

    .line 143
    :cond_11
    instance-of v0, p1, Lfreemarker/ext/util/WrapperTemplateModel;

    if-eqz v0, :cond_20

    .line 144
    check-cast p1, Lfreemarker/ext/util/WrapperTemplateModel;

    invoke-interface {p1}, Lfreemarker/ext/util/WrapperTemplateModel;->getWrappedObject()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/python/core/Py;->java2py(Ljava/lang/Object;)Lorg/python/core/PyObject;

    move-result-object p1

    return-object p1

    .line 148
    :cond_20
    instance-of v0, p1, Lfreemarker/template/TemplateScalarModel;

    if-eqz v0, :cond_30

    .line 149
    new-instance v0, Lorg/python/core/PyString;

    check-cast p1, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/python/core/PyString;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 153
    :cond_30
    instance-of v0, p1, Lfreemarker/template/TemplateNumberModel;

    if-eqz v0, :cond_53

    .line 154
    check-cast p1, Lfreemarker/template/TemplateNumberModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateNumberModel;->getAsNumber()Ljava/lang/Number;

    move-result-object p1

    .line 155
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_42

    .line 156
    invoke-static {p1}, Lfreemarker/template/utility/OptimizerUtil;->optimizeNumberRepresentation(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    .line 158
    :cond_42
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_4e

    .line 162
    new-instance v0, Lorg/python/core/PyLong;

    check-cast p1, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Lorg/python/core/PyLong;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 164
    :cond_4e
    invoke-static {p1}, Lorg/python/core/Py;->java2py(Ljava/lang/Object;)Lorg/python/core/PyObject;

    move-result-object p1

    return-object p1

    .line 168
    :cond_53
    new-instance v0, Lfreemarker/ext/jython/JythonWrapper$TemplateModelToJythonAdapter;

    invoke-direct {v0, p0, p1}, Lfreemarker/ext/jython/JythonWrapper$TemplateModelToJythonAdapter;-><init>(Lfreemarker/ext/jython/JythonWrapper;Lfreemarker/template/TemplateModel;)V

    return-object v0
.end method

.method public wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 113
    :cond_4
    iget-object v0, p0, Lfreemarker/ext/jython/JythonWrapper;->modelCache:Lfreemarker/ext/util/ModelCache;

    invoke-virtual {v0, p1}, Lfreemarker/ext/util/ModelCache;->getInstance(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.class public Lfreemarker/ext/rhino/RhinoScriptableModel;
.super Ljava/lang/Object;
.source "RhinoScriptableModel.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx;
.implements Lfreemarker/template/TemplateSequenceModel;
.implements Lfreemarker/template/AdapterTemplateModel;
.implements Lfreemarker/template/TemplateScalarModel;
.implements Lfreemarker/template/TemplateBooleanModel;
.implements Lfreemarker/template/TemplateNumberModel;


# static fields
.field static final FACTORY:Lfreemarker/ext/util/ModelFactory;


# instance fields
.field private final scriptable:Lorg/mozilla/javascript/Scriptable;

.field private final wrapper:Lfreemarker/ext/beans/BeansWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Lfreemarker/ext/rhino/RhinoScriptableModel$1;

    invoke-direct {v0}, Lfreemarker/ext/rhino/RhinoScriptableModel$1;-><init>()V

    sput-object v0, Lfreemarker/ext/rhino/RhinoScriptableModel;->FACTORY:Lfreemarker/ext/util/ModelFactory;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Lfreemarker/ext/beans/BeansWrapper;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lfreemarker/ext/rhino/RhinoScriptableModel;->scriptable:Lorg/mozilla/javascript/Scriptable;

    .line 59
    iput-object p2, p0, Lfreemarker/ext/rhino/RhinoScriptableModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    return-void
.end method


# virtual methods
.method public get(I)Lfreemarker/template/TemplateModel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lfreemarker/ext/rhino/RhinoScriptableModel;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p1

    .line 73
    instance-of v0, p1, Lorg/mozilla/javascript/Function;

    if-eqz v0, :cond_16

    .line 74
    new-instance v0, Lfreemarker/ext/rhino/RhinoFunctionModel;

    check-cast p1, Lorg/mozilla/javascript/Function;

    iget-object v1, p0, Lfreemarker/ext/rhino/RhinoScriptableModel;->scriptable:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, p0, Lfreemarker/ext/rhino/RhinoScriptableModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-direct {v0, p1, v1, v2}, Lfreemarker/ext/rhino/RhinoFunctionModel;-><init>(Lorg/mozilla/javascript/Function;Lorg/mozilla/javascript/Scriptable;Lfreemarker/ext/beans/BeansWrapper;)V

    return-object v0

    .line 76
    :cond_16
    iget-object v0, p0, Lfreemarker/ext/rhino/RhinoScriptableModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/BeansWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lfreemarker/ext/rhino/RhinoScriptableModel;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 64
    instance-of v0, p1, Lorg/mozilla/javascript/Function;

    if-eqz v0, :cond_16

    .line 65
    new-instance v0, Lfreemarker/ext/rhino/RhinoFunctionModel;

    check-cast p1, Lorg/mozilla/javascript/Function;

    iget-object v1, p0, Lfreemarker/ext/rhino/RhinoScriptableModel;->scriptable:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, p0, Lfreemarker/ext/rhino/RhinoScriptableModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-direct {v0, p1, v1, v2}, Lfreemarker/ext/rhino/RhinoFunctionModel;-><init>(Lorg/mozilla/javascript/Function;Lorg/mozilla/javascript/Scriptable;Lfreemarker/ext/beans/BeansWrapper;)V

    return-object v0

    .line 67
    :cond_16
    iget-object v0, p0, Lfreemarker/ext/rhino/RhinoScriptableModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/BeansWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    .line 131
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/rhino/RhinoScriptableModel;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-static {p1, v0}, Lorg/mozilla/javascript/NativeJavaObject;->coerceType(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catch Lorg/mozilla/javascript/EvaluatorException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 133
    :catch_7
    const-class p1, Ljava/lang/Object;

    iget-object v0, p0, Lfreemarker/ext/rhino/RhinoScriptableModel;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-static {p1, v0}, Lorg/mozilla/javascript/NativeJavaObject;->coerceType(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAsBoolean()Z
    .registers 2

    .line 109
    iget-object v0, p0, Lfreemarker/ext/rhino/RhinoScriptableModel;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .registers 3

    .line 113
    iget-object v0, p0, Lfreemarker/ext/rhino/RhinoScriptableModel;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getAsString()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lfreemarker/ext/rhino/RhinoScriptableModel;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getScriptable()Lorg/mozilla/javascript/Scriptable;
    .registers 2

    .line 121
    iget-object v0, p0, Lfreemarker/ext/rhino/RhinoScriptableModel;->scriptable:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method getWrapper()Lfreemarker/ext/beans/BeansWrapper;
    .registers 2

    .line 125
    iget-object v0, p0, Lfreemarker/ext/rhino/RhinoScriptableModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 81
    iget-object v0, p0, Lfreemarker/ext/rhino/RhinoScriptableModel;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public keys()Lfreemarker/template/TemplateCollectionModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lfreemarker/ext/rhino/RhinoScriptableModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    iget-object v1, p0, Lfreemarker/ext/rhino/RhinoScriptableModel;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v1}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfreemarker/ext/beans/BeansWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateCollectionModel;

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 89
    iget-object v0, p0, Lfreemarker/ext/rhino/RhinoScriptableModel;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public values()Lfreemarker/template/TemplateCollectionModel;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lfreemarker/ext/rhino/RhinoScriptableModel;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v0

    .line 94
    array-length v1, v0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_30

    .line 96
    aget-object v4, v0, v3

    .line 97
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_21

    .line 98
    iget-object v5, p0, Lfreemarker/ext/rhino/RhinoScriptableModel;->scriptable:Lorg/mozilla/javascript/Scriptable;

    check-cast v4, Ljava/lang/Number;

    .line 99
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 98
    invoke-static {v5, v4}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_2d

    .line 101
    :cond_21
    iget-object v5, p0, Lfreemarker/ext/rhino/RhinoScriptableModel;->scriptable:Lorg/mozilla/javascript/Scriptable;

    .line 102
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-static {v5, v4}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 105
    :cond_30
    iget-object v0, p0, Lfreemarker/ext/rhino/RhinoScriptableModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v0, v2}, Lfreemarker/ext/beans/BeansWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateCollectionModel;

    return-object v0
.end method

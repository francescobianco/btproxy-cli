.class Lfreemarker/ext/jython/JythonModelCache;
.super Lfreemarker/ext/util/ModelCache;
.source "JythonModelCache.java"


# instance fields
.field private final wrapper:Lfreemarker/ext/jython/JythonWrapper;


# direct methods
.method constructor <init>(Lfreemarker/ext/jython/JythonWrapper;)V
    .registers 2

    .line 46
    invoke-direct {p0}, Lfreemarker/ext/util/ModelCache;-><init>()V

    .line 47
    iput-object p1, p0, Lfreemarker/ext/jython/JythonModelCache;->wrapper:Lfreemarker/ext/jython/JythonWrapper;

    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .registers 6

    .line 59
    sget-object v0, Lfreemarker/ext/jython/JythonVersionAdapterHolder;->INSTANCE:Lfreemarker/ext/jython/JythonVersionAdapter;

    .line 60
    invoke-virtual {v0, p1}, Lfreemarker/ext/jython/JythonVersionAdapter;->isPyInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3a

    .line 61
    invoke-virtual {v0, p1}, Lfreemarker/ext/jython/JythonVersionAdapter;->pyInstanceToJava(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    instance-of v1, v0, Lfreemarker/template/TemplateModel;

    if-eqz v1, :cond_14

    .line 64
    check-cast v0, Lfreemarker/template/TemplateModel;

    return-object v0

    .line 66
    :cond_14
    instance-of v1, v0, Ljava/util/Map;

    .line 69
    instance-of v3, v0, Ljava/util/Date;

    if-eqz v3, :cond_26

    .line 70
    new-instance p1, Lfreemarker/ext/beans/DateModel;

    check-cast v0, Ljava/util/Date;

    invoke-static {}, Lfreemarker/ext/beans/BeansWrapper;->getDefaultInstance()Lfreemarker/ext/beans/BeansWrapper;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lfreemarker/ext/beans/DateModel;-><init>(Ljava/util/Date;Lfreemarker/ext/beans/BeansWrapper;)V

    return-object p1

    .line 71
    :cond_26
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_37

    .line 77
    instance-of v2, v0, Ljava/util/List;

    const/4 v3, 0x1

    if-nez v2, :cond_38

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_38

    :cond_37
    move v3, v2

    :cond_38
    :goto_38
    move v2, v1

    goto :goto_3b

    :cond_3a
    move v3, v2

    .line 84
    :goto_3b
    instance-of v0, p1, Lorg/python/core/PyObject;

    if-nez v0, :cond_43

    .line 85
    invoke-static {p1}, Lorg/python/core/Py;->java2py(Ljava/lang/Object;)Lorg/python/core/PyObject;

    move-result-object p1

    :cond_43
    if-nez v2, :cond_83

    .line 87
    instance-of v0, p1, Lorg/python/core/PyDictionary;

    if-nez v0, :cond_83

    instance-of v0, p1, Lorg/python/core/PyStringMap;

    if-eqz v0, :cond_4e

    goto :goto_83

    :cond_4e
    if-nez v3, :cond_7a

    .line 90
    instance-of v0, p1, Lorg/python/core/PySequence;

    if-eqz v0, :cond_55

    goto :goto_7a

    .line 93
    :cond_55
    instance-of v0, p1, Lorg/python/core/PyInteger;

    if-nez v0, :cond_71

    instance-of v0, p1, Lorg/python/core/PyLong;

    if-nez v0, :cond_71

    instance-of v0, p1, Lorg/python/core/PyFloat;

    if-eqz v0, :cond_62

    goto :goto_71

    .line 96
    :cond_62
    instance-of v0, p1, Lorg/python/core/PyNone;

    if-eqz v0, :cond_68

    const/4 p1, 0x0

    return-object p1

    .line 99
    :cond_68
    sget-object v0, Lfreemarker/ext/jython/JythonModel;->FACTORY:Lfreemarker/ext/util/ModelFactory;

    iget-object v1, p0, Lfreemarker/ext/jython/JythonModelCache;->wrapper:Lfreemarker/ext/jython/JythonWrapper;

    invoke-interface {v0, p1, v1}, Lfreemarker/ext/util/ModelFactory;->create(Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 94
    :cond_71
    :goto_71
    sget-object v0, Lfreemarker/ext/jython/JythonNumberModel;->FACTORY:Lfreemarker/ext/util/ModelFactory;

    iget-object v1, p0, Lfreemarker/ext/jython/JythonModelCache;->wrapper:Lfreemarker/ext/jython/JythonWrapper;

    invoke-interface {v0, p1, v1}, Lfreemarker/ext/util/ModelFactory;->create(Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 91
    :cond_7a
    :goto_7a
    sget-object v0, Lfreemarker/ext/jython/JythonSequenceModel;->FACTORY:Lfreemarker/ext/util/ModelFactory;

    iget-object v1, p0, Lfreemarker/ext/jython/JythonModelCache;->wrapper:Lfreemarker/ext/jython/JythonWrapper;

    invoke-interface {v0, p1, v1}, Lfreemarker/ext/util/ModelFactory;->create(Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 88
    :cond_83
    :goto_83
    sget-object v0, Lfreemarker/ext/jython/JythonHashModel;->FACTORY:Lfreemarker/ext/util/ModelFactory;

    iget-object v1, p0, Lfreemarker/ext/jython/JythonModelCache;->wrapper:Lfreemarker/ext/jython/JythonWrapper;

    invoke-interface {v0, p1, v1}, Lfreemarker/ext/util/ModelFactory;->create(Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method protected isCacheable(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.class Lfreemarker/ext/jsp/JspTagModelBase;
.super Ljava/lang/Object;
.source "JspTagModelBase.java"


# instance fields
.field private final dynaSetter:Ljava/lang/reflect/Method;

.field private final propertySetters:Ljava/util/Map;

.field private final tagClass:Ljava/lang/Class;

.field protected final tagName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/jsp/JspTagModelBase;->propertySetters:Ljava/util/Map;

    .line 54
    iput-object p1, p0, Lfreemarker/ext/jsp/JspTagModelBase;->tagName:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lfreemarker/ext/jsp/JspTagModelBase;->tagClass:Ljava/lang/Class;

    .line 56
    invoke-static {p2}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object p1

    .line 57
    invoke-interface {p1}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 58
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_2f

    .line 59
    aget-object v2, p1, v1

    .line 60
    invoke-virtual {v2}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 62
    iget-object v4, p0, Lfreemarker/ext/jsp/JspTagModelBase;->propertySetters:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 69
    :cond_2f
    :try_start_2f
    const-string p1, "setDynamicAttribute"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v0

    const-class v0, Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-class v0, Ljava/lang/Object;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-virtual {p2, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_46
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2f .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    const/4 p1, 0x0

    .line 74
    :goto_48
    iput-object p1, p0, Lfreemarker/ext/jsp/JspTagModelBase;->dynaSetter:Ljava/lang/reflect/Method;

    return-void
.end method

.method private isCommonRuntimeException(Ljava/lang/RuntimeException;)Z
    .registers 3

    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 163
    const-class v0, Ljava/lang/NullPointerException;

    if-eq p1, v0, :cond_17

    const-class v0, Ljava/lang/IllegalArgumentException;

    if-eq p1, v0, :cond_17

    const-class v0, Ljava/lang/ClassCastException;

    if-eq p1, v0, :cond_17

    const-class v0, Ljava/lang/IndexOutOfBoundsException;

    if-ne p1, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p1, 0x1

    :goto_18
    return p1
.end method


# virtual methods
.method getTagInstance()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lfreemarker/ext/jsp/JspTagModelBase;->tagClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method setupTag(Ljava/lang/Object;Ljava/util/Map;Lfreemarker/template/ObjectWrapper;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    if-eqz p2, :cond_113

    .line 85
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_113

    .line 86
    instance-of v3, v2, Lfreemarker/template/ObjectWrapperAndUnwrapper;

    if-eqz v3, :cond_15

    check-cast v2, Lfreemarker/template/ObjectWrapperAndUnwrapper;

    goto :goto_19

    .line 88
    :cond_15
    invoke-static {}, Lfreemarker/ext/beans/BeansWrapper;->getDefaultInstance()Lfreemarker/ext/beans/BeansWrapper;

    move-result-object v2

    :goto_19
    const/4 v3, 0x1

    .line 89
    new-array v3, v3, [Ljava/lang/Object;

    .line 90
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_113

    .line 91
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 92
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfreemarker/template/TemplateModel;

    invoke-interface {v2, v6}, Lfreemarker/template/ObjectWrapperAndUnwrapper;->unwrap(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    .line 93
    aput-object v6, v3, v7

    .line 94
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 95
    iget-object v8, v1, Lfreemarker/ext/jsp/JspTagModelBase;->propertySetters:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Method;

    const/4 v9, 0x0

    if-nez v8, :cond_87

    .line 97
    iget-object v6, v1, Lfreemarker/ext/jsp/JspTagModelBase;->dynaSetter:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_5a

    .line 102
    aget-object v7, v3, v7

    filled-new-array {v9, v5, v7}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    .line 98
    :cond_5a
    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown property "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lfreemarker/ext/jsp/JspTagModelBase;->tagClass:Ljava/lang/Class;

    .line 100
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_87
    instance-of v10, v6, Ljava/math/BigDecimal;

    if-eqz v10, :cond_99

    .line 106
    check-cast v6, Ljava/math/BigDecimal;

    .line 107
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    aget-object v10, v10, v7

    .line 106
    invoke-static {v6, v10}, Lfreemarker/ext/beans/BeansWrapper;->coerceBigDecimal(Ljava/math/BigDecimal;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v7

    .line 110
    :cond_99
    :try_start_99
    invoke-virtual {v8, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_9d

    goto :goto_24

    :catch_9d
    move-exception v0

    move-object v2, v0

    .line 112
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    aget-object v0, v0, v7

    .line 113
    new-instance v4, Lfreemarker/core/_ErrorDescriptionBuilder;

    new-instance v11, Lfreemarker/core/_DelayedJQuote;

    invoke-direct {v11, v5}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Lfreemarker/core/_DelayedShortClassName;

    invoke-direct {v6, v0}, Lfreemarker/core/_DelayedShortClassName;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", actual value\'s type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aget-object v5, v3, v7

    if-eqz v5, :cond_d4

    new-instance v5, Lfreemarker/core/_DelayedShortClassName;

    aget-object v6, v3, v7

    .line 118
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v5, v6}, Lfreemarker/core/_DelayedShortClassName;-><init>(Ljava/lang/Class;)V

    goto :goto_d6

    :cond_d4
    const-string v5, "Null"

    :goto_d6
    move-object v14, v5

    const-string v15, "). See cause exception for the more specific cause..."

    const-string v10, "Failed to set JSP tag parameter "

    const-string v12, " (declared type: "

    filled-new-array/range {v10 .. v15}, [Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5}, Lfreemarker/core/_ErrorDescriptionBuilder;-><init>([Ljava/lang/Object;)V

    .line 120
    instance-of v5, v2, Ljava/lang/IllegalArgumentException;

    if-eqz v5, :cond_10d

    const-class v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_10d

    aget-object v0, v3, v7

    if-eqz v0, :cond_10d

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_10d

    .line 122
    const-string v15, "<@my.box style=\"info\" message=\"Hello ${name}!\" width=200 />"

    const-string v16, "."

    const-string v10, "This problem is often caused by unnecessary parameter quotation. Paramters aren\'t quoted in FTL, similarly as they aren\'t quoted in most languages. For example, these parameter assignments are wrong: "

    const-string v11, "<@my.tag p1=\"true\" p2=\"10\" p3=\"${someVariable}\" p4=\"${x+1}\" />"

    const-string v12, ". The correct form is: "

    const-string v13, "<@my.tag p1=true p2=10 p3=someVariable p4=x+1 />"

    const-string v14, ". Only string literals are quoted (regardless of where they occur): "

    filled-new-array/range {v10 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Lfreemarker/core/_ErrorDescriptionBuilder;->tip([Ljava/lang/Object;)Lfreemarker/core/_ErrorDescriptionBuilder;

    .line 132
    :cond_10d
    new-instance v0, Lfreemarker/core/_TemplateModelException;

    invoke-direct {v0, v2, v9, v4}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Lfreemarker/core/_ErrorDescriptionBuilder;)V

    throw v0

    :cond_113
    return-void
.end method

.method protected final toTemplateModelExceptionOrRethrow(Ljava/lang/Exception;)Lfreemarker/template/TemplateModelException;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 140
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Lfreemarker/ext/jsp/JspTagModelBase;->isCommonRuntimeException(Ljava/lang/RuntimeException;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_f

    .line 141
    :cond_e
    throw v0

    .line 143
    :cond_f
    :goto_f
    instance-of v0, p1, Lfreemarker/template/TemplateModelException;

    if-nez v0, :cond_45

    .line 146
    instance-of v0, p1, Lfreemarker/ext/jsp/SimpleTagDirectiveModel$TemplateExceptionWrapperJspException;

    if-eqz v0, :cond_22

    .line 147
    check-cast p1, Lfreemarker/ext/jsp/SimpleTagDirectiveModel$TemplateExceptionWrapperJspException;

    invoke-virtual {p1}, Lfreemarker/ext/jsp/SimpleTagDirectiveModel$TemplateExceptionWrapperJspException;->getCause()Lfreemarker/template/TemplateException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/JspTagModelBase;->toTemplateModelExceptionOrRethrow(Ljava/lang/Exception;)Lfreemarker/template/TemplateModelException;

    move-result-object p1

    return-object p1

    .line 149
    :cond_22
    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while invoking the "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lfreemarker/ext/jsp/JspTagModelBase;->tagName:Ljava/lang/String;

    .line 150
    invoke-static {v2}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " JSP custom tag; see cause exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    instance-of v2, p1, Lfreemarker/template/TemplateException;

    invoke-direct {v0, v1, v2, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    return-object v0

    .line 144
    :cond_45
    check-cast p1, Lfreemarker/template/TemplateModelException;

    throw p1
.end method

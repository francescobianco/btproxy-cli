.class final Lfreemarker/ext/beans/StaticModel;
.super Ljava/lang/Object;
.source "StaticModel.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx;


# static fields
.field private static final LOG:Lfreemarker/log/Logger;


# instance fields
.field private final clazz:Ljava/lang/Class;

.field private final map:Ljava/util/Map;

.field private final wrapper:Lfreemarker/ext/beans/BeansWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    const-string v0, "freemarker.beans"

    invoke-static {v0}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/StaticModel;->LOG:Lfreemarker/log/Logger;

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lfreemarker/ext/beans/BeansWrapper;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/beans/StaticModel;->map:Ljava/util/Map;

    .line 50
    iput-object p1, p0, Lfreemarker/ext/beans/StaticModel;->clazz:Ljava/lang/Class;

    .line 51
    iput-object p2, p0, Lfreemarker/ext/beans/StaticModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    .line 52
    invoke-direct {p0}, Lfreemarker/ext/beans/StaticModel;->populate()V

    return-void
.end method

.method private populate()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lfreemarker/ext/beans/StaticModel;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_149

    .line 105
    iget-object v0, p0, Lfreemarker/ext/beans/StaticModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v0}, Lfreemarker/ext/beans/BeansWrapper;->getExposureLevel()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    return-void

    .line 109
    :cond_16
    iget-object v0, p0, Lfreemarker/ext/beans/StaticModel;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 110
    :goto_1e
    array-length v3, v0

    const/4 v4, 0x0

    if-ge v2, v3, :cond_5e

    .line 111
    aget-object v3, v0, v2

    .line 112
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    .line 113
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 114
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 118
    :try_start_3a
    iget-object v5, p0, Lfreemarker/ext/beans/StaticModel;->map:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lfreemarker/ext/beans/StaticModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v7}, Lfreemarker/ext/beans/BeansWrapper;->getOuterIdentity()Lfreemarker/template/ObjectWrapper;

    move-result-object v7

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v7, v3}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catch Ljava/lang/IllegalAccessException; {:try_start_3a .. :try_end_51} :catch_5b

    goto :goto_5b

    .line 125
    :cond_52
    iget-object v4, p0, Lfreemarker/ext/beans/StaticModel;->map:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :catch_5b
    :cond_5b
    :goto_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 128
    :cond_5e
    iget-object v0, p0, Lfreemarker/ext/beans/StaticModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v0}, Lfreemarker/ext/beans/BeansWrapper;->getExposureLevel()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_148

    .line 129
    iget-object v0, p0, Lfreemarker/ext/beans/StaticModel;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 130
    :goto_6d
    array-length v2, v0

    if-ge v1, v2, :cond_108

    .line 131
    aget-object v2, v0, v1

    .line 132
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    .line 133
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_104

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_104

    iget-object v3, p0, Lfreemarker/ext/beans/StaticModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    .line 134
    invoke-virtual {v3}, Lfreemarker/ext/beans/BeansWrapper;->getClassIntrospector()Lfreemarker/ext/beans/ClassIntrospector;

    move-result-object v3

    invoke-virtual {v3, v2}, Lfreemarker/ext/beans/ClassIntrospector;->isAllowedToExpose(Ljava/lang/reflect/Method;)Z

    move-result v3

    if-eqz v3, :cond_104

    .line 135
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 136
    iget-object v5, p0, Lfreemarker/ext/beans/StaticModel;->map:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 137
    instance-of v6, v5, Ljava/lang/reflect/Method;

    if-eqz v6, :cond_b5

    .line 138
    new-instance v6, Lfreemarker/ext/beans/OverloadedMethods;

    iget-object v7, p0, Lfreemarker/ext/beans/StaticModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v7}, Lfreemarker/ext/beans/BeansWrapper;->is2321Bugfixed()Z

    move-result v7

    invoke-direct {v6, v7}, Lfreemarker/ext/beans/OverloadedMethods;-><init>(Z)V

    .line 139
    check-cast v5, Ljava/lang/reflect/Method;

    invoke-virtual {v6, v5}, Lfreemarker/ext/beans/OverloadedMethods;->addMethod(Ljava/lang/reflect/Method;)V

    .line 140
    invoke-virtual {v6, v2}, Lfreemarker/ext/beans/OverloadedMethods;->addMethod(Ljava/lang/reflect/Method;)V

    .line 141
    iget-object v2, p0, Lfreemarker/ext/beans/StaticModel;->map:Ljava/util/Map;

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_104

    .line 142
    :cond_b5
    instance-of v6, v5, Lfreemarker/ext/beans/OverloadedMethods;

    if-eqz v6, :cond_bf

    .line 143
    check-cast v5, Lfreemarker/ext/beans/OverloadedMethods;

    .line 144
    invoke-virtual {v5, v2}, Lfreemarker/ext/beans/OverloadedMethods;->addMethod(Ljava/lang/reflect/Method;)V

    goto :goto_104

    :cond_bf
    if-eqz v5, :cond_ff

    .line 147
    sget-object v6, Lfreemarker/ext/beans/StaticModel;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v6}, Lfreemarker/log/Logger;->isInfoEnabled()Z

    move-result v7

    if-eqz v7, :cond_ff

    .line 148
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Overwriting value ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] for  key \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\' with ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] in static model for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lfreemarker/ext/beans/StaticModel;->clazz:Ljava/lang/Class;

    .line 150
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 148
    invoke-virtual {v6, v5}, Lfreemarker/log/Logger;->info(Ljava/lang/String;)V

    .line 153
    :cond_ff
    iget-object v5, p0, Lfreemarker/ext/beans/StaticModel;->map:Ljava/util/Map;

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_104
    :goto_104
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6d

    .line 157
    :cond_108
    iget-object v0, p0, Lfreemarker/ext/beans/StaticModel;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_112
    :goto_112
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_148

    .line 158
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 159
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 160
    instance-of v3, v2, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_137

    .line 161
    check-cast v2, Ljava/lang/reflect/Method;

    .line 162
    new-instance v3, Lfreemarker/ext/beans/SimpleMethodModel;

    .line 163
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lfreemarker/ext/beans/StaticModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-direct {v3, v4, v2, v5, v6}, Lfreemarker/ext/beans/SimpleMethodModel;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Class;Lfreemarker/ext/beans/BeansWrapper;)V

    .line 162
    invoke-interface {v1, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_112

    .line 164
    :cond_137
    instance-of v3, v2, Lfreemarker/ext/beans/OverloadedMethods;

    if-eqz v3, :cond_112

    .line 165
    new-instance v3, Lfreemarker/ext/beans/OverloadedMethodsModel;

    check-cast v2, Lfreemarker/ext/beans/OverloadedMethods;

    iget-object v5, p0, Lfreemarker/ext/beans/StaticModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-direct {v3, v4, v2, v5}, Lfreemarker/ext/beans/OverloadedMethodsModel;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/OverloadedMethods;Lfreemarker/ext/beans/BeansWrapper;)V

    invoke-interface {v1, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_112

    :cond_148
    return-void

    .line 101
    :cond_149
    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t wrap the non-public class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lfreemarker/ext/beans/StaticModel;->clazz:Ljava/lang/Class;

    .line 102
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lfreemarker/ext/beans/StaticModel;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    instance-of v1, v0, Lfreemarker/template/TemplateModel;

    if-eqz v1, :cond_d

    .line 64
    check-cast v0, Lfreemarker/template/TemplateModel;

    return-object v0

    .line 66
    :cond_d
    instance-of v1, v0, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_48

    .line 68
    :try_start_11
    iget-object v1, p0, Lfreemarker/ext/beans/StaticModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v1}, Lfreemarker/ext/beans/BeansWrapper;->getOuterIdentity()Lfreemarker/template/ObjectWrapper;

    move-result-object v1

    check-cast v0, Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1
    :try_end_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_22} :catch_23

    return-object p1

    .line 70
    :catch_23
    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal access for field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " of class "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lfreemarker/ext/beans/StaticModel;->clazz:Ljava/lang/Class;

    .line 71
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_48
    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No such key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " in class "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lfreemarker/ext/beans/StaticModel;->clazz:Ljava/lang/Class;

    .line 76
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 84
    iget-object v0, p0, Lfreemarker/ext/beans/StaticModel;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keys()Lfreemarker/template/TemplateCollectionModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lfreemarker/ext/beans/StaticModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v0}, Lfreemarker/ext/beans/BeansWrapper;->getOuterIdentity()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/ext/beans/StaticModel;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateCollectionModel;

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 88
    iget-object v0, p0, Lfreemarker/ext/beans/StaticModel;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Lfreemarker/template/TemplateCollectionModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lfreemarker/ext/beans/StaticModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v0}, Lfreemarker/ext/beans/BeansWrapper;->getOuterIdentity()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/ext/beans/StaticModel;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateCollectionModel;

    return-object v0
.end method

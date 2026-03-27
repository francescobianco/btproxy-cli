.class public Lfreemarker/ext/beans/ResourceBundleModel;
.super Lfreemarker/ext/beans/BeanModel;
.source "ResourceBundleModel.java"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# static fields
.field static final FACTORY:Lfreemarker/ext/util/ModelFactory;


# instance fields
.field private formats:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Lfreemarker/ext/beans/ResourceBundleModel$1;

    invoke-direct {v0}, Lfreemarker/ext/beans/ResourceBundleModel$1;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/ResourceBundleModel;->FACTORY:Lfreemarker/ext/util/ModelFactory;

    return-void
.end method

.method public constructor <init>(Ljava/util/ResourceBundle;Lfreemarker/ext/beans/BeansWrapper;)V
    .registers 3

    .line 71
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/beans/BeanModel;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/BeansWrapper;)V

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lfreemarker/ext/beans/ResourceBundleModel;->formats:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 122
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_71

    .line 125
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/template/TemplateModel;

    invoke-virtual {p0, v2}, Lfreemarker/ext/beans/ResourceBundleModel;->unwrap(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    :try_start_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 129
    iget-object p1, p0, Lfreemarker/ext/beans/ResourceBundleModel;->object:Ljava/lang/Object;

    check-cast p1, Ljava/util/ResourceBundle;

    invoke-virtual {p1, v2}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/ext/beans/ResourceBundleModel;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 133
    :cond_2c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    .line 134
    new-array v1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_34
    if-ge v3, p1, :cond_45

    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfreemarker/template/TemplateModel;

    invoke-virtual {p0, v4}, Lfreemarker/ext/beans/ResourceBundleModel;->unwrap(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 139
    :cond_45
    new-instance p1, Lfreemarker/ext/beans/StringModel;

    invoke-virtual {p0, v2, v1}, Lfreemarker/ext/beans/ResourceBundleModel;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/ext/beans/ResourceBundleModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-direct {p1, v0, v1}, Lfreemarker/ext/beans/StringModel;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/BeansWrapper;)V
    :try_end_50
    .catch Ljava/util/MissingResourceException; {:try_start_19 .. :try_end_50} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_50} :catch_51

    return-object p1

    :catch_51
    move-exception p1

    .line 143
    new-instance v0, Lfreemarker/template/TemplateModelException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :catch_5c
    new-instance p1, Lfreemarker/template/TemplateModelException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No such key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_71
    new-instance p1, Lfreemarker/template/TemplateModelException;

    const-string v0, "No message key was specified"

    invoke-direct {p1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lfreemarker/ext/beans/ResourceBundleModel;->formats:Ljava/util/Hashtable;

    if-nez v0, :cond_b

    .line 160
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/beans/ResourceBundleModel;->formats:Ljava/util/Hashtable;

    .line 171
    :cond_b
    iget-object v0, p0, Lfreemarker/ext/beans/ResourceBundleModel;->formats:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/MessageFormat;

    if-nez v0, :cond_32

    .line 173
    new-instance v0, Ljava/text/MessageFormat;

    iget-object v1, p0, Lfreemarker/ext/beans/ResourceBundleModel;->object:Ljava/lang/Object;

    check-cast v1, Ljava/util/ResourceBundle;

    invoke-virtual {v1, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lfreemarker/ext/beans/ResourceBundleModel;->getBundle()Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->setLocale(Ljava/util/Locale;)V

    .line 175
    iget-object v1, p0, Lfreemarker/ext/beans/ResourceBundleModel;->formats:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_32
    monitor-enter v0

    .line 182
    :try_start_33
    invoke-virtual {v0, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_39
    move-exception p1

    .line 183
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public getBundle()Ljava/util/ResourceBundle;
    .registers 2

    .line 187
    iget-object v0, p0, Lfreemarker/ext/beans/ResourceBundleModel;->object:Ljava/lang/Object;

    check-cast v0, Ljava/util/ResourceBundle;

    return-object v0
.end method

.method protected invokeGenericGet(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 81
    :try_start_0
    iget-object p1, p0, Lfreemarker/ext/beans/ResourceBundleModel;->object:Ljava/lang/Object;

    check-cast p1, Ljava/util/ResourceBundle;

    invoke-virtual {p1, p3}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/ext/beans/ResourceBundleModel;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1
    :try_end_c
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 83
    new-instance p2, Lfreemarker/core/_TemplateModelException;

    new-instance v0, Lfreemarker/core/_DelayedJQuote;

    invoke-direct {v0, p3}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    const-string p3, " key in the ResourceBundle. Note that conforming to the ResourceBundle Java API, this is an error and not just a missing sub-variable (a null)."

    const-string v1, "No "

    filled-new-array {v1, v0, p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw p2
.end method

.method public isEmpty()Z
    .registers 2

    .line 95
    iget-object v0, p0, Lfreemarker/ext/beans/ResourceBundleModel;->object:Ljava/lang/Object;

    check-cast v0, Ljava/util/ResourceBundle;

    invoke-virtual {v0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_16

    .line 96
    invoke-super {p0}, Lfreemarker/ext/beans/BeanModel;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method protected keySet()Ljava/util/Set;
    .registers 4

    .line 106
    invoke-super {p0}, Lfreemarker/ext/beans/BeanModel;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lfreemarker/ext/beans/ResourceBundleModel;->object:Ljava/lang/Object;

    check-cast v1, Ljava/util/ResourceBundle;

    invoke-virtual {v1}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v1

    .line 108
    :goto_c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 109
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1a
    return-object v0
.end method

.method public size()I
    .registers 2

    .line 101
    invoke-virtual {p0}, Lfreemarker/ext/beans/ResourceBundleModel;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

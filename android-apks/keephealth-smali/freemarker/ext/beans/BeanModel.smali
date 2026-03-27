.class public Lfreemarker/ext/beans/BeanModel;
.super Ljava/lang/Object;
.source "BeanModel.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx;
.implements Lfreemarker/template/AdapterTemplateModel;
.implements Lfreemarker/ext/util/WrapperTemplateModel;
.implements Lfreemarker/template/TemplateModelWithAPISupport;


# static fields
.field static final FACTORY:Lfreemarker/ext/util/ModelFactory;

.field private static final LOG:Lfreemarker/log/Logger;

.field static final UNKNOWN:Lfreemarker/template/TemplateModel;


# instance fields
.field private memberCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lfreemarker/template/TemplateModel;",
            ">;"
        }
    .end annotation
.end field

.field protected final object:Ljava/lang/Object;

.field protected final wrapper:Lfreemarker/ext/beans/BeansWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 65
    const-string v0, "freemarker.beans"

    invoke-static {v0}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/BeanModel;->LOG:Lfreemarker/log/Logger;

    .line 70
    new-instance v0, Lfreemarker/template/SimpleScalar;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    sput-object v0, Lfreemarker/ext/beans/BeanModel;->UNKNOWN:Lfreemarker/template/TemplateModel;

    .line 72
    new-instance v0, Lfreemarker/ext/beans/BeanModel$1;

    invoke-direct {v0}, Lfreemarker/ext/beans/BeanModel$1;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/BeanModel;->FACTORY:Lfreemarker/ext/util/ModelFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lfreemarker/ext/beans/BeansWrapper;)V
    .registers 4

    const/4 v0, 0x1

    .line 101
    invoke-direct {p0, p1, p2, v0}, Lfreemarker/ext/beans/BeanModel;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/BeansWrapper;Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lfreemarker/ext/beans/BeansWrapper;Z)V
    .registers 4

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lfreemarker/ext/beans/BeanModel;->object:Ljava/lang/Object;

    .line 107
    iput-object p2, p0, Lfreemarker/ext/beans/BeanModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    if-eqz p3, :cond_16

    if-eqz p1, :cond_16

    .line 110
    invoke-virtual {p2}, Lfreemarker/ext/beans/BeansWrapper;->getClassIntrospector()Lfreemarker/ext/beans/ClassIntrospector;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Lfreemarker/ext/beans/ClassIntrospector;->get(Ljava/lang/Class;)Ljava/util/Map;

    :cond_16
    return-void
.end method

.method private invokeThroughDescriptor(Ljava/lang/Object;Ljava/util/Map;)Lfreemarker/template/TemplateModel;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lfreemarker/template/TemplateModel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 209
    monitor-enter p0

    .line 210
    :try_start_1
    iget-object v0, p0, Lfreemarker/ext/beans/BeanModel;->memberCache:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateModel;

    goto :goto_e

    :cond_d
    move-object v0, v1

    .line 211
    :goto_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_ad

    if-eqz v0, :cond_12

    return-object v0

    .line 217
    :cond_12
    sget-object v2, Lfreemarker/ext/beans/BeanModel;->UNKNOWN:Lfreemarker/template/TemplateModel;

    .line 218
    instance-of v3, p1, Lfreemarker/ext/beans/FastPropertyDescriptor;

    if-eqz v3, :cond_58

    .line 219
    move-object v2, p1

    check-cast v2, Lfreemarker/ext/beans/FastPropertyDescriptor;

    .line 220
    invoke-virtual {v2}, Lfreemarker/ext/beans/FastPropertyDescriptor;->getIndexedReadMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 222
    iget-object v4, p0, Lfreemarker/ext/beans/BeanModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v4}, Lfreemarker/ext/beans/BeansWrapper;->getPreferIndexedReadMethod()Z

    move-result v4

    if-nez v4, :cond_3c

    invoke-virtual {v2}, Lfreemarker/ext/beans/FastPropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_3c

    .line 223
    iget-object p2, p0, Lfreemarker/ext/beans/BeanModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    iget-object v3, p0, Lfreemarker/ext/beans/BeanModel;->object:Ljava/lang/Object;

    invoke-virtual {v2}, Lfreemarker/ext/beans/FastPropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p2, v3, v2, v1}, Lfreemarker/ext/beans/BeansWrapper;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p2

    goto :goto_56

    .line 226
    :cond_3c
    new-instance v0, Lfreemarker/ext/beans/SimpleMethodModel;

    iget-object v1, p0, Lfreemarker/ext/beans/BeanModel;->object:Ljava/lang/Object;

    .line 228
    invoke-static {p2, v3}, Lfreemarker/ext/beans/ClassIntrospector;->getArgTypes(Ljava/util/Map;Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object p2

    iget-object v2, p0, Lfreemarker/ext/beans/BeanModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-direct {v0, v1, v3, p2, v2}, Lfreemarker/ext/beans/SimpleMethodModel;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Class;Lfreemarker/ext/beans/BeansWrapper;)V

    goto :goto_81

    .line 231
    :cond_4a
    iget-object p2, p0, Lfreemarker/ext/beans/BeanModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    iget-object v3, p0, Lfreemarker/ext/beans/BeanModel;->object:Ljava/lang/Object;

    invoke-virtual {v2}, Lfreemarker/ext/beans/FastPropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p2, v3, v2, v1}, Lfreemarker/ext/beans/BeansWrapper;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p2

    :goto_56
    move-object v2, p2

    goto :goto_94

    .line 234
    :cond_58
    instance-of v1, p1, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_6c

    .line 235
    iget-object p2, p0, Lfreemarker/ext/beans/BeanModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    move-object v1, p1

    check-cast v1, Ljava/lang/reflect/Field;

    iget-object v2, p0, Lfreemarker/ext/beans/BeanModel;->object:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Lfreemarker/ext/beans/BeansWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    goto :goto_94

    .line 237
    :cond_6c
    instance-of v1, p1, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_83

    .line 238
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Method;

    .line 239
    new-instance v1, Lfreemarker/ext/beans/SimpleMethodModel;

    iget-object v2, p0, Lfreemarker/ext/beans/BeanModel;->object:Ljava/lang/Object;

    .line 240
    invoke-static {p2, v0}, Lfreemarker/ext/beans/ClassIntrospector;->getArgTypes(Ljava/util/Map;Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object p2

    iget-object v3, p0, Lfreemarker/ext/beans/BeanModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-direct {v1, v2, v0, p2, v3}, Lfreemarker/ext/beans/SimpleMethodModel;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Class;Lfreemarker/ext/beans/BeansWrapper;)V

    move-object v0, v1

    :goto_81
    move-object v2, v0

    goto :goto_94

    .line 241
    :cond_83
    instance-of p2, p1, Lfreemarker/ext/beans/OverloadedMethods;

    if-eqz p2, :cond_94

    .line 242
    new-instance v0, Lfreemarker/ext/beans/OverloadedMethodsModel;

    iget-object p2, p0, Lfreemarker/ext/beans/BeanModel;->object:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lfreemarker/ext/beans/OverloadedMethods;

    iget-object v2, p0, Lfreemarker/ext/beans/BeanModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-direct {v0, p2, v1, v2}, Lfreemarker/ext/beans/OverloadedMethodsModel;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/OverloadedMethods;Lfreemarker/ext/beans/BeansWrapper;)V

    goto :goto_81

    :cond_94
    :goto_94
    if-eqz v0, :cond_ac

    .line 248
    monitor-enter p0

    .line 249
    :try_start_97
    iget-object p2, p0, Lfreemarker/ext/beans/BeanModel;->memberCache:Ljava/util/HashMap;

    if-nez p2, :cond_a2

    .line 250
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lfreemarker/ext/beans/BeanModel;->memberCache:Ljava/util/HashMap;

    .line 252
    :cond_a2
    iget-object p2, p0, Lfreemarker/ext/beans/BeanModel;->memberCache:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    monitor-exit p0

    goto :goto_ac

    :catchall_a9
    move-exception p1

    monitor-exit p0
    :try_end_ab
    .catchall {:try_start_97 .. :try_end_ab} :catchall_a9

    throw p1

    :cond_ac
    :goto_ac
    return-object v2

    :catchall_ad
    move-exception p1

    .line 211
    :try_start_ae
    monitor-exit p0
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    throw p1
.end method

.method private logNoSuchKey(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 192
    sget-object v0, Lfreemarker/ext/beans/BeanModel;->LOG:Lfreemarker/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " was not found on instance of "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lfreemarker/ext/beans/BeanModel;->object:Ljava/lang/Object;

    .line 193
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ". Introspection information for the class is: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-virtual {v0, p1}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method clearMemberCache()V
    .registers 2

    .line 259
    monitor-enter p0

    const/4 v0, 0x0

    .line 260
    :try_start_2
    iput-object v0, p0, Lfreemarker/ext/beans/BeanModel;->memberCache:Ljava/util/HashMap;

    .line 261
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    const-string v0, "No such bean property: "

    .line 142
    iget-object v1, p0, Lfreemarker/ext/beans/BeanModel;->object:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 143
    iget-object v2, p0, Lfreemarker/ext/beans/BeanModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v2}, Lfreemarker/ext/beans/BeansWrapper;->getClassIntrospector()Lfreemarker/ext/beans/ClassIntrospector;

    move-result-object v2

    invoke-virtual {v2, v1}, Lfreemarker/ext/beans/ClassIntrospector;->get(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v2

    .line 147
    :try_start_12
    iget-object v3, p0, Lfreemarker/ext/beans/BeanModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v3}, Lfreemarker/ext/beans/BeansWrapper;->isMethodsShadowItems()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2b

    .line 148
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 150
    invoke-direct {p0, v3, v2}, Lfreemarker/ext/beans/BeanModel;->invokeThroughDescriptor(Ljava/lang/Object;Ljava/util/Map;)Lfreemarker/template/TemplateModel;

    move-result-object v1

    goto :goto_51

    .line 152
    :cond_26
    invoke-virtual {p0, v2, v1, p1}, Lfreemarker/ext/beans/BeanModel;->invokeGenericGet(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v1

    goto :goto_51

    .line 155
    :cond_2b
    invoke-virtual {p0, v2, v1, p1}, Lfreemarker/ext/beans/BeanModel;->invokeGenericGet(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v1

    .line 156
    iget-object v3, p0, Lfreemarker/ext/beans/BeanModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v3, v4}, Lfreemarker/ext/beans/BeansWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    if-eq v1, v3, :cond_3c

    .line 157
    sget-object v5, Lfreemarker/ext/beans/BeanModel;->UNKNOWN:Lfreemarker/template/TemplateModel;

    if-eq v1, v5, :cond_3c

    return-object v1

    .line 160
    :cond_3c
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_50

    .line 162
    invoke-direct {p0, v5, v2}, Lfreemarker/ext/beans/BeanModel;->invokeThroughDescriptor(Ljava/lang/Object;Ljava/util/Map;)Lfreemarker/template/TemplateModel;

    move-result-object v5

    .line 163
    sget-object v6, Lfreemarker/ext/beans/BeanModel;->UNKNOWN:Lfreemarker/template/TemplateModel;

    if-ne v5, v6, :cond_4e

    if-ne v1, v3, :cond_4e

    move-object v1, v3

    goto :goto_51

    :cond_4e
    move-object v1, v5

    goto :goto_51

    :cond_50
    move-object v1, v4

    .line 171
    :goto_51
    sget-object v3, Lfreemarker/ext/beans/BeanModel;->UNKNOWN:Lfreemarker/template/TemplateModel;

    if-ne v1, v3, :cond_82

    .line 172
    iget-object v1, p0, Lfreemarker/ext/beans/BeanModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v1}, Lfreemarker/ext/beans/BeansWrapper;->isStrict()Z

    move-result v1

    if-nez v1, :cond_6f

    .line 174
    sget-object v0, Lfreemarker/ext/beans/BeanModel;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v0}, Lfreemarker/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 175
    invoke-direct {p0, p1, v2}, Lfreemarker/ext/beans/BeanModel;->logNoSuchKey(Ljava/lang/String;Ljava/util/Map;)V

    .line 177
    :cond_68
    iget-object v0, p0, Lfreemarker/ext/beans/BeanModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v0, v4}, Lfreemarker/ext/beans/BeansWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v1

    goto :goto_82

    .line 173
    :cond_6f
    new-instance v1, Lfreemarker/ext/beans/InvalidPropertyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lfreemarker/ext/beans/InvalidPropertyException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_82
    .catch Lfreemarker/template/TemplateModelException; {:try_start_12 .. :try_end_82} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_82} :catch_83

    :cond_82
    :goto_82
    return-object v1

    :catch_83
    move-exception v0

    .line 183
    new-instance v1, Lfreemarker/core/_TemplateModelException;

    new-instance v2, Lfreemarker/core/_DelayedJQuote;

    invoke-direct {v2, p1}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lfreemarker/core/_DelayedFTLTypeDescription;

    invoke-direct {p1, p0}, Lfreemarker/core/_DelayedFTLTypeDescription;-><init>(Lfreemarker/template/TemplateModel;)V

    const-string v3, "An error has occurred when reading existing sub-variable "

    const-string v4, "; see cause exception! The type of the containing value was: "

    filled-new-array {v3, v2, v4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v1

    :catch_9c
    move-exception p1

    .line 181
    throw p1
.end method

.method public getAPI()Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lfreemarker/ext/beans/BeanModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    iget-object v1, p0, Lfreemarker/ext/beans/BeanModel;->object:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lfreemarker/ext/beans/BeansWrapper;->wrapAsAPI(Ljava/lang/Object;)Lfreemarker/template/TemplateHashModel;

    move-result-object v0

    return-object v0
.end method

.method public getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 310
    iget-object p1, p0, Lfreemarker/ext/beans/BeanModel;->object:Ljava/lang/Object;

    return-object p1
.end method

.method getAsClassicCompatibleString()Ljava/lang/String;
    .registers 3

    .line 344
    iget-object v0, p0, Lfreemarker/ext/beans/BeanModel;->object:Ljava/lang/Object;

    const-string v1, "null"

    if-nez v0, :cond_7

    return-object v1

    .line 347
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    move-object v1, v0

    :cond_e
    return-object v1
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .registers 2

    .line 314
    iget-object v0, p0, Lfreemarker/ext/beans/BeanModel;->object:Ljava/lang/Object;

    return-object v0
.end method

.method protected hasPlainGetMethod()Z
    .registers 3

    .line 202
    iget-object v0, p0, Lfreemarker/ext/beans/BeanModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v0}, Lfreemarker/ext/beans/BeansWrapper;->getClassIntrospector()Lfreemarker/ext/beans/ClassIntrospector;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/ext/beans/BeanModel;->object:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfreemarker/ext/beans/ClassIntrospector;->get(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lfreemarker/ext/beans/ClassIntrospector;->GENERIC_GET_KEY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method protected invokeGenericGet(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lfreemarker/template/TemplateModel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 267
    sget-object p2, Lfreemarker/ext/beans/ClassIntrospector;->GENERIC_GET_KEY:Ljava/lang/Object;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Method;

    if-nez p1, :cond_d

    .line 269
    sget-object p1, Lfreemarker/ext/beans/BeanModel;->UNKNOWN:Lfreemarker/template/TemplateModel;

    return-object p1

    .line 272
    :cond_d
    iget-object p2, p0, Lfreemarker/ext/beans/BeanModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    iget-object v0, p0, Lfreemarker/ext/beans/BeanModel;->object:Ljava/lang/Object;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, v0, p1, p3}, Lfreemarker/ext/beans/BeansWrapper;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .registers 5

    .line 290
    iget-object v0, p0, Lfreemarker/ext/beans/BeanModel;->object:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_12

    .line 291
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_11

    move v2, v3

    :cond_11
    return v2

    .line 293
    :cond_12
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_1d

    .line 294
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0

    .line 296
    :cond_1d
    instance-of v0, v0, Ljava/util/Iterator;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lfreemarker/ext/beans/BeanModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v0}, Lfreemarker/ext/beans/BeansWrapper;->is2324Bugfixed()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 297
    iget-object v0, p0, Lfreemarker/ext/beans/BeanModel;->object:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    xor-int/2addr v0, v3

    return v0

    .line 299
    :cond_33
    iget-object v0, p0, Lfreemarker/ext/beans/BeanModel;->object:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_40

    .line 300
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0

    :cond_40
    if-eqz v0, :cond_4c

    .line 302
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lfreemarker/ext/beans/BeanModel;->object:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    :cond_4c
    move v2, v3

    :cond_4d
    return v2
.end method

.method protected keySet()Ljava/util/Set;
    .registers 3

    .line 363
    iget-object v0, p0, Lfreemarker/ext/beans/BeanModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v0}, Lfreemarker/ext/beans/BeansWrapper;->getClassIntrospector()Lfreemarker/ext/beans/ClassIntrospector;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/ext/beans/BeanModel;->object:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfreemarker/ext/beans/ClassIntrospector;->keySet(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lfreemarker/template/TemplateCollectionModel;
    .registers 5

    .line 322
    new-instance v0, Lfreemarker/core/CollectionAndSequence;

    new-instance v1, Lfreemarker/template/SimpleSequence;

    invoke-virtual {p0}, Lfreemarker/ext/beans/BeanModel;->keySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lfreemarker/ext/beans/BeanModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-direct {v1, v2, v3}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;Lfreemarker/template/ObjectWrapper;)V

    invoke-direct {v0, v1}, Lfreemarker/core/CollectionAndSequence;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    return-object v0
.end method

.method public size()I
    .registers 3

    .line 318
    iget-object v0, p0, Lfreemarker/ext/beans/BeanModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v0}, Lfreemarker/ext/beans/BeansWrapper;->getClassIntrospector()Lfreemarker/ext/beans/ClassIntrospector;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/ext/beans/BeanModel;->object:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfreemarker/ext/beans/ClassIntrospector;->keyCount(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 353
    iget-object v0, p0, Lfreemarker/ext/beans/BeanModel;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected unwrap(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lfreemarker/ext/beans/BeanModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/BeansWrapper;->unwrap(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public values()Lfreemarker/template/TemplateCollectionModel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lfreemarker/ext/beans/BeanModel;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 327
    invoke-virtual {p0}, Lfreemarker/ext/beans/BeanModel;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v1

    invoke-interface {v1}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v1

    .line 328
    :goto_11
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 329
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v2

    check-cast v2, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v2}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-virtual {p0, v2}, Lfreemarker/ext/beans/BeanModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 332
    :cond_29
    new-instance v1, Lfreemarker/core/CollectionAndSequence;

    new-instance v2, Lfreemarker/template/SimpleSequence;

    iget-object v3, p0, Lfreemarker/ext/beans/BeanModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-direct {v2, v0, v3}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;Lfreemarker/template/ObjectWrapper;)V

    invoke-direct {v1, v2}, Lfreemarker/core/CollectionAndSequence;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    return-object v1
.end method

.method protected wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lfreemarker/ext/beans/BeanModel;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v0}, Lfreemarker/ext/beans/BeansWrapper;->getOuterIdentity()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    invoke-interface {v0, p1}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

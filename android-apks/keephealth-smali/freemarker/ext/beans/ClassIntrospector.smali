.class Lfreemarker/ext/beans/ClassIntrospector;
.super Ljava/lang/Object;
.source "ClassIntrospector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;,
        Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;
    }
.end annotation


# static fields
.field private static final ARG_TYPES_BY_METHOD_KEY:Ljava/lang/Object;

.field private static final CLASS_CHANGE_NOTIFIER:Lfreemarker/ext/beans/ClassChangeNotifier;

.field static final CONSTRUCTORS_KEY:Ljava/lang/Object;

.field static final DEVELOPMENT_MODE:Z

.field static final GENERIC_GET_KEY:Ljava/lang/Object;

.field private static final JREBEL_INTEGRATION_ERROR_MSG:Ljava/lang/String; = "Error initializing JRebel integration. JRebel integration disabled."

.field private static final JREBEL_SDK_CLASS_NAME:Ljava/lang/String; = "org.zeroturnaround.javarebel.ClassEventListener"

.field private static final LOG:Lfreemarker/log/Logger;


# instance fields
.field final bugfixed:Z

.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cacheClassNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final classIntrospectionsInProgress:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private clearingCounter:I

.field final exposeFields:Z

.field final exposureLevel:I

.field private final hasSharedInstanceRestrictons:Z

.field final methodAppearanceFineTuner:Lfreemarker/ext/beans/MethodAppearanceFineTuner;

.field final methodSorter:Lfreemarker/ext/beans/MethodSorter;

.field private final modelFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final modelFactoriesRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final shared:Z

.field private final sharedLock:Ljava/lang/Object;

.field final treatDefaultMethodsAsBeanMembers:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 74
    const-string v0, "Error initializing JRebel integration. JRebel integration disabled."

    const-string v1, "freemarker.beans"

    invoke-static {v1}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/ClassIntrospector;->LOG:Lfreemarker/log/Logger;

    .line 84
    const-string v1, "freemarker.development"

    const-string v2, "false"

    invoke-static {v1, v2}, Lfreemarker/template/utility/SecurityUtilities;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lfreemarker/ext/beans/ClassIntrospector;->DEVELOPMENT_MODE:Z

    const/4 v1, 0x0

    .line 91
    :try_start_1b
    const-string v2, "org.zeroturnaround.javarebel.ClassEventListener"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_35

    .line 107
    :try_start_20
    const-string v2, "freemarker.ext.beans.JRebelClassChangeNotifier"

    .line 108
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/ext/beans/ClassChangeNotifier;
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_2e

    move-object v1, v2

    goto :goto_3f

    :catchall_2e
    move-exception v2

    .line 112
    :try_start_2f
    sget-object v3, Lfreemarker/ext/beans/ClassIntrospector;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v3, v0, v2}, Lfreemarker/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3f

    :catchall_35
    move-exception v2

    .line 96
    instance-of v3, v2, Ljava/lang/ClassNotFoundException;

    if-nez v3, :cond_3f

    .line 97
    sget-object v3, Lfreemarker/ext/beans/ClassIntrospector;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v3, v0, v2}, Lfreemarker/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3f
    .catchall {:try_start_2f .. :try_end_3f} :catchall_3f

    .line 121
    :catchall_3f
    :cond_3f
    :goto_3f
    sput-object v1, Lfreemarker/ext/beans/ClassIntrospector;->CLASS_CHANGE_NOTIFIER:Lfreemarker/ext/beans/ClassChangeNotifier;

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/ClassIntrospector;->ARG_TYPES_BY_METHOD_KEY:Ljava/lang/Object;

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/ClassIntrospector;->CONSTRUCTORS_KEY:Ljava/lang/Object;

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/ClassIntrospector;->GENERIC_GET_KEY:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lfreemarker/ext/beans/ClassIntrospectorBuilder;Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    .line 177
    invoke-direct {p0, p1, p2, v0, v0}, Lfreemarker/ext/beans/ClassIntrospector;-><init>(Lfreemarker/ext/beans/ClassIntrospectorBuilder;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method constructor <init>(Lfreemarker/ext/beans/ClassIntrospectorBuilder;Ljava/lang/Object;ZZ)V
    .registers 9

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->cache:Ljava/util/Map;

    .line 158
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->cacheClassNames:Ljava/util/Set;

    .line 159
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->classIntrospectionsInProgress:Ljava/util/Set;

    .line 161
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->modelFactories:Ljava/util/List;

    .line 163
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->modelFactoriesRefQueue:Ljava/lang/ref/ReferenceQueue;

    .line 187
    const-string v0, "sharedLock"

    invoke-static {v0, p2}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    invoke-virtual {p1}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->getExposureLevel()I

    move-result v0

    iput v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->exposureLevel:I

    .line 190
    invoke-virtual {p1}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->getExposeFields()Z

    move-result v0

    iput-boolean v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->exposeFields:Z

    .line 191
    invoke-virtual {p1}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->getMethodAppearanceFineTuner()Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->methodAppearanceFineTuner:Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    .line 192
    invoke-virtual {p1}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->getMethodSorter()Lfreemarker/ext/beans/MethodSorter;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->methodSorter:Lfreemarker/ext/beans/MethodSorter;

    .line 193
    invoke-virtual {p1}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->getTreatDefaultMethodsAsBeanMembers()Z

    move-result v0

    iput-boolean v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->treatDefaultMethodsAsBeanMembers:Z

    .line 194
    invoke-virtual {p1}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->isBugfixed()Z

    move-result p1

    iput-boolean p1, p0, Lfreemarker/ext/beans/ClassIntrospector;->bugfixed:Z

    .line 196
    iput-object p2, p0, Lfreemarker/ext/beans/ClassIntrospector;->sharedLock:Ljava/lang/Object;

    .line 198
    iput-boolean p3, p0, Lfreemarker/ext/beans/ClassIntrospector;->hasSharedInstanceRestrictons:Z

    .line 199
    iput-boolean p4, p0, Lfreemarker/ext/beans/ClassIntrospector;->shared:Z

    .line 201
    sget-object p1, Lfreemarker/ext/beans/ClassIntrospector;->CLASS_CHANGE_NOTIFIER:Lfreemarker/ext/beans/ClassChangeNotifier;

    if-eqz p1, :cond_61

    .line 202
    invoke-interface {p1, p0}, Lfreemarker/ext/beans/ClassChangeNotifier;->subscribe(Lfreemarker/ext/beans/ClassIntrospector;)V

    :cond_61
    return-void
.end method

.method private addBeanInfoToClassIntrospectionData(Ljava/util/Map;Ljava/lang/Class;Ljava/util/Map;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    .line 320
    invoke-static {p2}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v0

    .line 321
    invoke-direct {p0, v0, p2}, Lfreemarker/ext/beans/ClassIntrospector;->getPropertyDescriptors(Ljava/beans/BeanInfo;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 322
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_e
    if-ltz v2, :cond_1c

    .line 326
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/beans/PropertyDescriptor;

    .line 325
    invoke-direct {p0, p1, v3, p2, p3}, Lfreemarker/ext/beans/ClassIntrospector;->addPropertyDescriptorToClassIntrospectionData(Ljava/util/Map;Ljava/beans/PropertyDescriptor;Ljava/lang/Class;Ljava/util/Map;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 330
    :cond_1c
    iget v1, p0, Lfreemarker/ext/beans/ClassIntrospector;->exposureLevel:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_e8

    .line 331
    new-instance v1, Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecision;

    invoke-direct {v1}, Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecision;-><init>()V

    .line 333
    invoke-direct {p0, v0, p2}, Lfreemarker/ext/beans/ClassIntrospector;->getMethodDescriptors(Ljava/beans/BeanInfo;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 334
    invoke-direct {p0, v0}, Lfreemarker/ext/beans/ClassIntrospector;->sortMethodDescriptors(Ljava/util/List;)V

    .line 335
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    :goto_36
    if-ltz v2, :cond_e8

    .line 338
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/beans/MethodDescriptor;

    invoke-virtual {v6}, Ljava/beans/MethodDescriptor;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-static {v6, p3}, Lfreemarker/ext/beans/ClassIntrospector;->getMatchingAccessibleMethod(Ljava/lang/reflect/Method;Ljava/util/Map;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_e4

    .line 339
    invoke-virtual {p0, v6}, Lfreemarker/ext/beans/ClassIntrospector;->isAllowedToExpose(Ljava/lang/reflect/Method;)Z

    move-result v7

    if-eqz v7, :cond_e4

    .line 340
    invoke-virtual {v1, v6}, Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecision;->setDefaults(Ljava/lang/reflect/Method;)V

    .line 341
    iget-object v7, p0, Lfreemarker/ext/beans/ClassIntrospector;->methodAppearanceFineTuner:Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    if-eqz v7, :cond_67

    if-nez v4, :cond_5c

    .line 343
    new-instance v4, Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecisionInput;

    invoke-direct {v4}, Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecisionInput;-><init>()V

    .line 345
    :cond_5c
    invoke-virtual {v4, p2}, Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecisionInput;->setContainingClass(Ljava/lang/Class;)V

    .line 346
    invoke-virtual {v4, v6}, Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecisionInput;->setMethod(Ljava/lang/reflect/Method;)V

    .line 348
    iget-object v7, p0, Lfreemarker/ext/beans/ClassIntrospector;->methodAppearanceFineTuner:Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    invoke-interface {v7, v4, v1}, Lfreemarker/ext/beans/MethodAppearanceFineTuner;->process(Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecisionInput;Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecision;)V

    .line 351
    :cond_67
    invoke-virtual {v1}, Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecision;->getExposeAsProperty()Ljava/beans/PropertyDescriptor;

    move-result-object v7

    if-eqz v7, :cond_82

    .line 353
    invoke-virtual {v1}, Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecision;->getReplaceExistingProperty()Z

    move-result v8

    if-nez v8, :cond_7f

    .line 354
    invoke-virtual {v7}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lfreemarker/ext/beans/FastPropertyDescriptor;

    if-nez v8, :cond_82

    .line 355
    :cond_7f
    invoke-direct {p0, p1, v7, p2, p3}, Lfreemarker/ext/beans/ClassIntrospector;->addPropertyDescriptorToClassIntrospectionData(Ljava/util/Map;Ljava/beans/PropertyDescriptor;Ljava/lang/Class;Ljava/util/Map;)V

    .line 359
    :cond_82
    invoke-virtual {v1}, Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecision;->getExposeMethodAs()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e4

    .line 361
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 362
    instance-of v9, v8, Ljava/lang/reflect/Method;

    if-eqz v9, :cond_b3

    .line 364
    new-instance v9, Lfreemarker/ext/beans/OverloadedMethods;

    iget-boolean v10, p0, Lfreemarker/ext/beans/ClassIntrospector;->bugfixed:Z

    invoke-direct {v9, v10}, Lfreemarker/ext/beans/OverloadedMethods;-><init>(Z)V

    .line 365
    move-object v10, v8

    check-cast v10, Ljava/lang/reflect/Method;

    invoke-virtual {v9, v10}, Lfreemarker/ext/beans/OverloadedMethods;->addMethod(Ljava/lang/reflect/Method;)V

    .line 366
    invoke-virtual {v9, v6}, Lfreemarker/ext/beans/OverloadedMethods;->addMethod(Ljava/lang/reflect/Method;)V

    .line 367
    invoke-interface {p1, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_ab

    .line 370
    invoke-virtual {v5, v8}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e4

    .line 371
    :cond_ab
    invoke-static {p1}, Lfreemarker/ext/beans/ClassIntrospector;->getArgTypesByMethod(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e4

    .line 373
    :cond_b3
    instance-of v9, v8, Lfreemarker/ext/beans/OverloadedMethods;

    if-eqz v9, :cond_bd

    .line 375
    check-cast v8, Lfreemarker/ext/beans/OverloadedMethods;

    invoke-virtual {v8, v6}, Lfreemarker/ext/beans/OverloadedMethods;->addMethod(Ljava/lang/reflect/Method;)V

    goto :goto_e4

    .line 376
    :cond_bd
    invoke-virtual {v1}, Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecision;->getMethodShadowsProperty()Z

    move-result v9

    if-nez v9, :cond_c7

    instance-of v8, v8, Lfreemarker/ext/beans/FastPropertyDescriptor;

    if-nez v8, :cond_e4

    .line 379
    :cond_c7
    invoke-interface {p1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    invoke-static {p1}, Lfreemarker/ext/beans/ClassIntrospector;->getArgTypesByMethod(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    .line 381
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 380
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Class;

    if-eqz v7, :cond_e4

    if-nez v5, :cond_e1

    .line 384
    new-instance v5, Ljava/util/IdentityHashMap;

    invoke-direct {v5}, Ljava/util/IdentityHashMap;-><init>()V

    .line 386
    :cond_e1
    invoke-virtual {v5, v6, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e4
    :goto_e4
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_36

    :cond_e8
    return-void
.end method

.method private addConstructorsToClassIntrospectionData(Ljava/util/Map;Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 706
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 707
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1a

    .line 708
    aget-object v0, v0, v2

    .line 709
    sget-object v1, Lfreemarker/ext/beans/ClassIntrospector;->CONSTRUCTORS_KEY:Ljava/lang/Object;

    new-instance v2, Lfreemarker/ext/beans/SimpleMethod;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lfreemarker/ext/beans/SimpleMethod;-><init>(Ljava/lang/reflect/Member;[Ljava/lang/Class;)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    .line 710
    :cond_1a
    array-length v1, v0

    if-le v1, v3, :cond_4e

    .line 711
    new-instance v1, Lfreemarker/ext/beans/OverloadedMethods;

    iget-boolean v3, p0, Lfreemarker/ext/beans/ClassIntrospector;->bugfixed:Z

    invoke-direct {v1, v3}, Lfreemarker/ext/beans/OverloadedMethods;-><init>(Z)V

    .line 712
    :goto_24
    array-length v3, v0

    if-ge v2, v3, :cond_2f

    .line 713
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Lfreemarker/ext/beans/OverloadedMethods;->addConstructor(Ljava/lang/reflect/Constructor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 715
    :cond_2f
    sget-object v0, Lfreemarker/ext/beans/ClassIntrospector;->CONSTRUCTORS_KEY:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_4e

    :catch_35
    move-exception p1

    .line 718
    sget-object v0, Lfreemarker/ext/beans/ClassIntrospector;->LOG:Lfreemarker/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t discover constructors for class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lfreemarker/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method private addFieldsToClassIntrospectionData(Ljava/util/Map;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 308
    invoke-virtual {p2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v0, 0x0

    .line 309
    :goto_5
    array-length v1, p2

    if-ge v0, v1, :cond_1c

    .line 310
    aget-object v1, p2, v0

    .line 311
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_19

    .line 312
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1c
    return-void
.end method

.method private addGenericGetToClassIntrospectionData(Ljava/util/Map;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;>;)V"
        }
    .end annotation

    .line 693
    # getter for: Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;->GET_STRING_SIGNATURE:Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;
    invoke-static {}, Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;->access$200()Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;

    move-result-object v0

    .line 692
    invoke-static {v0, p2}, Lfreemarker/ext/beans/ClassIntrospector;->getFirstAccessibleMethod(Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;Ljava/util/Map;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_12

    .line 696
    # getter for: Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;->GET_OBJECT_SIGNATURE:Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;
    invoke-static {}, Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;->access$300()Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;

    move-result-object v0

    .line 695
    invoke-static {v0, p2}, Lfreemarker/ext/beans/ClassIntrospector;->getFirstAccessibleMethod(Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;Ljava/util/Map;)Ljava/lang/reflect/Method;

    move-result-object v0

    :cond_12
    if-eqz v0, :cond_19

    .line 699
    sget-object p2, Lfreemarker/ext/beans/ClassIntrospector;->GENERIC_GET_KEY:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    return-void
.end method

.method private addPropertyDescriptorToClassIntrospectionData(Ljava/util/Map;Ljava/beans/PropertyDescriptor;Ljava/lang/Class;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/beans/PropertyDescriptor;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;>;)V"
        }
    .end annotation

    .line 665
    invoke-virtual {p2}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object p3

    invoke-static {p3, p4}, Lfreemarker/ext/beans/ClassIntrospector;->getMatchingAccessibleMethod(Ljava/lang/reflect/Method;Ljava/util/Map;)Ljava/lang/reflect/Method;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_12

    .line 666
    invoke-virtual {p0, p3}, Lfreemarker/ext/beans/ClassIntrospector;->isAllowedToExpose(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-nez v1, :cond_12

    move-object p3, v0

    .line 671
    :cond_12
    instance-of v1, p2, Ljava/beans/IndexedPropertyDescriptor;

    if-eqz v1, :cond_38

    .line 672
    move-object v1, p2

    check-cast v1, Ljava/beans/IndexedPropertyDescriptor;

    .line 673
    invoke-virtual {v1}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedReadMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 672
    invoke-static {v1, p4}, Lfreemarker/ext/beans/ClassIntrospector;->getMatchingAccessibleMethod(Ljava/lang/reflect/Method;Ljava/util/Map;)Ljava/lang/reflect/Method;

    move-result-object p4

    if-eqz p4, :cond_2a

    .line 674
    invoke-virtual {p0, p4}, Lfreemarker/ext/beans/ClassIntrospector;->isAllowedToExpose(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-nez v1, :cond_2a

    goto :goto_2b

    :cond_2a
    move-object v0, p4

    :goto_2b
    if-eqz v0, :cond_38

    .line 678
    invoke-static {p1}, Lfreemarker/ext/beans/ClassIntrospector;->getArgTypesByMethod(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p4

    .line 679
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 678
    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    if-nez p3, :cond_3c

    if-eqz v0, :cond_48

    .line 686
    :cond_3c
    invoke-virtual {p2}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Lfreemarker/ext/beans/FastPropertyDescriptor;

    invoke-direct {p4, p3, v0}, Lfreemarker/ext/beans/FastPropertyDescriptor;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    return-void
.end method

.method private containsMethodWithSameParameterTypes(Ljava/util/List;Ljava/lang/reflect/Method;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Ljava/lang/reflect/Method;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 654
    :cond_4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    .line 655
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 656
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_24
    return v0
.end method

.method private createClassIntrospectionData(Ljava/lang/Class;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 277
    iget-boolean v1, p0, Lfreemarker/ext/beans/ClassIntrospector;->exposeFields:Z

    if-eqz v1, :cond_c

    .line 278
    invoke-direct {p0, v0, p1}, Lfreemarker/ext/beans/ClassIntrospector;->addFieldsToClassIntrospectionData(Ljava/util/Map;Ljava/lang/Class;)V

    .line 281
    :cond_c
    invoke-static {p1}, Lfreemarker/ext/beans/ClassIntrospector;->discoverAccessibleMethods(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    .line 283
    invoke-direct {p0, v0, v1}, Lfreemarker/ext/beans/ClassIntrospector;->addGenericGetToClassIntrospectionData(Ljava/util/Map;Ljava/util/Map;)V

    .line 285
    iget v2, p0, Lfreemarker/ext/beans/ClassIntrospector;->exposureLevel:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_34

    .line 287
    :try_start_18
    invoke-direct {p0, v0, p1, v1}, Lfreemarker/ext/beans/ClassIntrospector;->addBeanInfoToClassIntrospectionData(Ljava/util/Map;Ljava/lang/Class;Ljava/util/Map;)V
    :try_end_1b
    .catch Ljava/beans/IntrospectionException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_34

    :catch_1c
    move-exception v1

    .line 289
    sget-object v2, Lfreemarker/ext/beans/ClassIntrospector;->LOG:Lfreemarker/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t properly perform introspection for class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lfreemarker/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 294
    :cond_34
    :goto_34
    invoke-direct {p0, v0, p1}, Lfreemarker/ext/beans/ClassIntrospector;->addConstructorsToClassIntrospectionData(Ljava/util/Map;Ljava/lang/Class;)V

    .line 296
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_3f

    return-object v0

    .line 298
    :cond_3f
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_4a

    .line 299
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 301
    :cond_4a
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 302
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private static discoverAccessibleMethods(Ljava/lang/Class;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation

    .line 728
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 729
    invoke-static {p0, v0}, Lfreemarker/ext/beans/ClassIntrospector;->discoverAccessibleMethods(Ljava/lang/Class;Ljava/util/Map;)V

    return-object v0
.end method

.method private static discoverAccessibleMethods(Ljava/lang/Class;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;>;)V"
        }
    .end annotation

    .line 734
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    .line 736
    :try_start_b
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    move v2, v1

    .line 737
    :goto_10
    array-length v3, v0

    if-ge v2, v3, :cond_30

    .line 738
    aget-object v3, v0, v2

    .line 739
    new-instance v4, Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;

    invoke-direct {v4, v3}, Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;-><init>(Ljava/lang/reflect/Method;)V

    .line 751
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_2a

    .line 754
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 755
    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    :cond_2a
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_2d} :catch_31

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_30
    return-void

    :catch_31
    move-exception v0

    .line 761
    sget-object v2, Lfreemarker/ext/beans/ClassIntrospector;->LOG:Lfreemarker/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not discover accessible methods of class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", attemping superclasses/interfaces."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 761
    invoke-virtual {v2, v3, v0}, Lfreemarker/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 768
    :cond_50
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 769
    :goto_54
    array-length v2, v0

    if-ge v1, v2, :cond_5f

    .line 770
    aget-object v2, v0, v1

    invoke-static {v2, p1}, Lfreemarker/ext/beans/ClassIntrospector;->discoverAccessibleMethods(Ljava/lang/Class;Ljava/util/Map;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    .line 772
    :cond_5f
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_68

    .line 774
    invoke-static {p0, p1}, Lfreemarker/ext/beans/ClassIntrospector;->discoverAccessibleMethods(Ljava/lang/Class;Ljava/util/Map;)V

    :cond_68
    return-void
.end method

.method private forcedClearCache()V
    .registers 5

    .line 877
    iget-object v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->sharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 878
    :try_start_3
    iget-object v1, p0, Lfreemarker/ext/beans/ClassIntrospector;->cache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 879
    iget-object v1, p0, Lfreemarker/ext/beans/ClassIntrospector;->cacheClassNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 880
    iget v1, p0, Lfreemarker/ext/beans/ClassIntrospector;->clearingCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfreemarker/ext/beans/ClassIntrospector;->clearingCounter:I

    .line 882
    iget-object v1, p0, Lfreemarker/ext/beans/ClassIntrospector;->modelFactories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 883
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 885
    instance-of v3, v2, Lfreemarker/ext/beans/ClassBasedModelFactory;

    if-eqz v3, :cond_35

    .line 886
    check-cast v2, Lfreemarker/ext/beans/ClassBasedModelFactory;

    invoke-virtual {v2}, Lfreemarker/ext/beans/ClassBasedModelFactory;->clearCache()V

    goto :goto_19

    .line 887
    :cond_35
    instance-of v3, v2, Lfreemarker/ext/util/ModelCache;

    if-eqz v3, :cond_3f

    .line 888
    check-cast v2, Lfreemarker/ext/util/ModelCache;

    invoke-virtual {v2}, Lfreemarker/ext/util/ModelCache;->clearCache()V

    goto :goto_19

    .line 890
    :cond_3f
    new-instance v1, Lfreemarker/core/BugException;

    invoke-direct {v1}, Lfreemarker/core/BugException;-><init>()V

    throw v1

    .line 895
    :cond_45
    invoke-direct {p0}, Lfreemarker/ext/beans/ClassIntrospector;->removeClearedModelFactoryReferences()V

    .line 896
    monitor-exit v0

    return-void

    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method static getArgTypes(Ljava/util/Map;Ljava/lang/reflect/Method;)[Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Method;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1008
    sget-object v0, Lfreemarker/ext/beans/ClassIntrospector;->ARG_TYPES_BY_METHOD_KEY:Ljava/lang/Object;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 1009
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Class;

    return-object p0
.end method

.method private static getArgTypesByMethod(Ljava/util/Map;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 818
    sget-object v0, Lfreemarker/ext/beans/ClassIntrospector;->ARG_TYPES_BY_METHOD_KEY:Ljava/lang/Object;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_12

    .line 820
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 821
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-object v1
.end method

.method private static getFirstAccessibleMethod(Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;Ljava/util/Map;)Ljava/lang/reflect/Method;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;",
            "Ljava/util/Map<",
            "Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 796
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_17

    .line 797
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_17

    :cond_f
    const/4 p1, 0x0

    .line 800
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;

    return-object p0

    :cond_17
    :goto_17
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMatchingAccessibleMethod(Ljava/lang/reflect/Method;Ljava/util/Map;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/Map<",
            "Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 782
    :cond_4
    new-instance v1, Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;

    invoke-direct {v1, p0}, Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;-><init>(Ljava/lang/reflect/Method;)V

    .line 783
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_12

    return-object v0

    .line 787
    :cond_12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 788
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_16

    return-object v1

    :cond_2d
    return-object v0
.end method

.method private getMethodDescriptors(Ljava/beans/BeanInfo;Ljava/lang/Class;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/beans/BeanInfo;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/beans/MethodDescriptor;",
            ">;"
        }
    .end annotation

    .line 593
    invoke-interface {p1}, Ljava/beans/BeanInfo;->getMethodDescriptors()[Ljava/beans/MethodDescriptor;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 594
    array-length v0, p1

    if-eqz v0, :cond_e

    .line 595
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_12

    :cond_e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 597
    :goto_12
    iget-boolean v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->treatDefaultMethodsAsBeanMembers:Z

    if-eqz v0, :cond_c5

    sget-object v0, Lfreemarker/core/_JavaVersions;->JAVA_8:Lfreemarker/core/_Java8;

    if-nez v0, :cond_1c

    goto/16 :goto_c5

    .line 603
    :cond_1c
    invoke-virtual {p2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_24
    if-ge v3, v0, :cond_5b

    aget-object v4, p2, v3

    .line 604
    sget-object v5, Lfreemarker/core/_JavaVersions;->JAVA_8:Lfreemarker/core/_Java8;

    invoke-interface {v5, v4}, Lfreemarker/core/_Java8;->isDefaultMethod(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v5

    if-nez v5, :cond_58

    if-nez v2, :cond_3d

    .line 606
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 608
    :cond_3d
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_55

    .line 610
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 611
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    :cond_55
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_5b
    if-nez v2, :cond_5e

    return-object p1

    .line 623
    :cond_5e
    new-instance p2, Ljava/util/ArrayList;

    .line 624
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 625
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6d
    :goto_6d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_91

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/beans/MethodDescriptor;

    .line 626
    invoke-virtual {v0}, Ljava/beans/MethodDescriptor;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 633
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 632
    invoke-direct {p0, v3, v1}, Lfreemarker/ext/beans/ClassIntrospector;->containsMethodWithSameParameterTypes(Ljava/util/List;Ljava/lang/reflect/Method;)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 634
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    .line 640
    :cond_91
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_99
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 641
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_af
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_99

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 642
    new-instance v2, Ljava/beans/MethodDescriptor;

    invoke-direct {v2, v1}, Ljava/beans/MethodDescriptor;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_af

    :cond_c4
    return-object p2

    :cond_c5
    :goto_c5
    return-object p1
.end method

.method private getPropertyDescriptors(Ljava/beans/BeanInfo;Ljava/lang/Class;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/beans/BeanInfo;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/beans/PropertyDescriptor;",
            ">;"
        }
    .end annotation

    .line 399
    invoke-interface {p1}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 400
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_f

    .line 401
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 403
    :goto_f
    iget-boolean v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->treatDefaultMethodsAsBeanMembers:Z

    if-eqz v0, :cond_12e

    sget-object v0, Lfreemarker/core/_JavaVersions;->JAVA_8:Lfreemarker/core/_Java8;

    if-nez v0, :cond_19

    goto/16 :goto_12e

    .line 423
    :cond_19
    invoke-virtual {p2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move-object v5, v3

    :goto_22
    if-ge v4, v1, :cond_74

    aget-object v6, v0, v4

    .line 424
    sget-object v7, Lfreemarker/core/_JavaVersions;->JAVA_8:Lfreemarker/core/_Java8;

    invoke-interface {v7, v6}, Lfreemarker/core/_Java8;->isDefaultMethod(Ljava/lang/reflect/Method;)Z

    move-result v7

    if-eqz v7, :cond_71

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v7, v8, :cond_71

    .line 425
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v7

    if-nez v7, :cond_71

    .line 426
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 427
    array-length v8, v7

    if-eqz v8, :cond_4d

    array-length v8, v7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_71

    aget-object v8, v7, v2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_71

    .line 430
    :cond_4d
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    .line 429
    invoke-static {v8, v9}, Lfreemarker/ext/beans/_MethodUtil;->getBeanPropertyNameFromReaderMethodName(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_71

    if-nez v5, :cond_62

    .line 434
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 436
    :cond_62
    array-length v7, v7

    if-nez v7, :cond_69

    .line 437
    invoke-direct {p0, v5, v8, v6}, Lfreemarker/ext/beans/ClassIntrospector;->mergeInPropertyReaderMethod(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    goto :goto_71

    .line 439
    :cond_69
    new-instance v7, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;

    invoke-direct {v7, v3, v6}, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    invoke-direct {p0, v5, v8, v7}, Lfreemarker/ext/beans/ClassIntrospector;->mergeInPropertyReaderMethodPair(Ljava/util/LinkedHashMap;Ljava/lang/String;Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;)V

    :cond_71
    :goto_71
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_74
    if-nez v5, :cond_77

    return-object p1

    .line 452
    :cond_77
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/beans/PropertyDescriptor;

    .line 453
    invoke-direct {p0, v5, v0}, Lfreemarker/ext/beans/ClassIntrospector;->mergeInPropertyDescriptor(Ljava/util/LinkedHashMap;Ljava/beans/PropertyDescriptor;)V

    goto :goto_7b

    .line 457
    :cond_8b
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 458
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9c
    :goto_9c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 459
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 460
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 461
    instance-of v4, v1, Ljava/beans/PropertyDescriptor;

    if-eqz v4, :cond_bc

    .line 462
    check-cast v1, Ljava/beans/PropertyDescriptor;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 466
    :cond_bc
    instance-of v4, v1, Ljava/lang/reflect/Method;

    if-eqz v4, :cond_c5

    .line 467
    check-cast v1, Ljava/lang/reflect/Method;

    move-object v6, v1

    move-object v8, v3

    goto :goto_e8

    .line 469
    :cond_c5
    instance-of v4, v1, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;

    if-eqz v4, :cond_128

    .line 470
    check-cast v1, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;

    .line 471
    # getter for: Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;->readMethod:Ljava/lang/reflect/Method;
    invoke-static {v1}, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;->access$000(Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 472
    # getter for: Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;->indexedReadMethod:Ljava/lang/reflect/Method;
    invoke-static {v1}, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;->access$100(Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v4, :cond_e6

    if-eqz v1, :cond_e6

    .line 474
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    if-eq v5, v6, :cond_e6

    move-object v1, v3

    :cond_e6
    move-object v8, v1

    move-object v6, v4

    :goto_e8
    if-eqz v8, :cond_f4

    .line 483
    :try_start_ea
    new-instance v1, Ljava/beans/IndexedPropertyDescriptor;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, v2

    invoke-direct/range {v4 .. v9}, Ljava/beans/IndexedPropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    goto :goto_f9

    :cond_f4
    new-instance v1, Ljava/beans/PropertyDescriptor;

    invoke-direct {v1, v2, v6, v3}, Ljava/beans/PropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    :goto_f9
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_fc
    .catch Ljava/beans/IntrospectionException; {:try_start_ea .. :try_end_fc} :catch_fd

    goto :goto_9c

    :catch_fd
    move-exception v1

    .line 489
    sget-object v4, Lfreemarker/ext/beans/ClassIntrospector;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v4}, Lfreemarker/log/Logger;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 490
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed creating property descriptor for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " property "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v1}, Lfreemarker/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9c

    .line 480
    :cond_128
    new-instance p1, Lfreemarker/core/BugException;

    invoke-direct {p1}, Lfreemarker/core/BugException;-><init>()V

    throw p1

    :cond_12e
    :goto_12e
    return-object p1
.end method

.method private mergeInPropertyDescriptor(Ljava/util/LinkedHashMap;Ljava/beans/PropertyDescriptor;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/beans/PropertyDescriptor;",
            ")V"
        }
    .end annotation

    .line 555
    invoke-virtual {p2}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    .line 556
    invoke-virtual {p1, v0, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 558
    new-instance v2, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;

    invoke-direct {v2, p2}, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;-><init>(Ljava/beans/PropertyDescriptor;)V

    .line 559
    invoke-direct {p0, p1, v0, v1, v2}, Lfreemarker/ext/beans/ClassIntrospector;->putIfMergedPropertyReaderMethodPairDiffers(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/Object;Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;)V

    :cond_12
    return-void
.end method

.method private mergeInPropertyReaderMethod(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .line 573
    invoke-virtual {p1, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 575
    new-instance v1, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;

    const/4 v2, 0x0

    invoke-direct {v1, p3, v2}, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lfreemarker/ext/beans/ClassIntrospector;->putIfMergedPropertyReaderMethodPairDiffers(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/Object;Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;)V

    :cond_f
    return-void
.end method

.method private mergeInPropertyReaderMethodPair(Ljava/util/LinkedHashMap;Ljava/lang/String;Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;",
            ")V"
        }
    .end annotation

    .line 565
    invoke-virtual {p1, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 567
    invoke-direct {p0, p1, p2, v0, p3}, Lfreemarker/ext/beans/ClassIntrospector;->putIfMergedPropertyReaderMethodPairDiffers(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/Object;Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;)V

    :cond_9
    return-void
.end method

.method private onSameNameClassesDetected(Ljava/lang/String;)V
    .registers 5

    .line 941
    sget-object v0, Lfreemarker/ext/beans/ClassIntrospector;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v0}, Lfreemarker/log/Logger;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 942
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Detected multiple classes with the same name, \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\". Assuming it was a class-reloading. Clearing class introspection caches to release old data."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfreemarker/log/Logger;->info(Ljava/lang/String;)V

    .line 947
    :cond_20
    invoke-direct {p0}, Lfreemarker/ext/beans/ClassIntrospector;->forcedClearCache()V

    return-void
.end method

.method private putIfMergedPropertyReaderMethodPairDiffers(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/Object;Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;",
            ")V"
        }
    .end annotation

    .line 582
    invoke-static {p3}, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;->from(Ljava/lang/Object;)Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;

    move-result-object p3

    .line 583
    invoke-static {p3, p4}, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;->merge(Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;)Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;

    move-result-object p3

    .line 584
    invoke-virtual {p3, p4}, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_11

    .line 585
    invoke-virtual {p1, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    return-void
.end method

.method private registerModelFactory(Ljava/lang/Object;)V
    .registers 6

    .line 963
    iget-object v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->sharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 964
    :try_start_3
    iget-object v1, p0, Lfreemarker/ext/beans/ClassIntrospector;->modelFactories:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lfreemarker/ext/beans/ClassIntrospector;->modelFactoriesRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 965
    invoke-direct {p0}, Lfreemarker/ext/beans/ClassIntrospector;->removeClearedModelFactoryReferences()V

    .line 966
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method private removeClearedModelFactoryReferences()V
    .registers 5

    .line 991
    :goto_0
    iget-object v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->modelFactoriesRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 992
    iget-object v1, p0, Lfreemarker/ext/beans/ClassIntrospector;->sharedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 993
    :try_start_b
    iget-object v2, p0, Lfreemarker/ext/beans/ClassIntrospector;->modelFactories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 994
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_11

    .line 995
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 999
    :cond_20
    monitor-exit v1

    goto :goto_0

    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_22

    throw v0

    :cond_25
    return-void
.end method

.method private sortMethodDescriptors(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/beans/MethodDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 807
    iget-object v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->methodSorter:Lfreemarker/ext/beans/MethodSorter;

    if-eqz v0, :cond_7

    .line 808
    invoke-interface {v0, p1}, Lfreemarker/ext/beans/MethodSorter;->sortMethodDescriptors(Ljava/util/List;)V

    :cond_7
    return-void
.end method


# virtual methods
.method clearCache()V
    .registers 4

    .line 868
    invoke-virtual {p0}, Lfreemarker/ext/beans/ClassIntrospector;->getHasSharedInstanceRestrictons()Z

    move-result v0

    if-nez v0, :cond_a

    .line 873
    invoke-direct {p0}, Lfreemarker/ext/beans/ClassIntrospector;->forcedClearCache()V

    return-void

    .line 869
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "It\'s not allowed to clear the whole cache in a read-only "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 870
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "instance. Use removeFromClassIntrospectionCache(String prefix) instead."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method createBuilder()Lfreemarker/ext/beans/ClassIntrospectorBuilder;
    .registers 2

    .line 211
    new-instance v0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    invoke-direct {v0, p0}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;-><init>(Lfreemarker/ext/beans/ClassIntrospector;)V

    return-object v0
.end method

.method get(Ljava/lang/Class;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_b

    return-object v0

    .line 231
    :cond_b
    iget-object v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->sharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_e
    iget-object v1, p0, Lfreemarker/ext/beans/ClassIntrospector;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1a

    .line 233
    monitor-exit v0

    return-object v1

    .line 235
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 236
    iget-object v3, p0, Lfreemarker/ext/beans/ClassIntrospector;->cacheClassNames:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 237
    invoke-direct {p0, v2}, Lfreemarker/ext/beans/ClassIntrospector;->onSameNameClassesDetected(Ljava/lang/String;)V

    :cond_29
    :goto_29
    if-nez v1, :cond_5b

    .line 240
    iget-object v3, p0, Lfreemarker/ext/beans/ClassIntrospector;->classIntrospectionsInProgress:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_31
    .catchall {:try_start_e .. :try_end_31} :catchall_9f

    if-eqz v3, :cond_5b

    .line 244
    :try_start_33
    iget-object v1, p0, Lfreemarker/ext/beans/ClassIntrospector;->sharedLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 245
    iget-object v1, p0, Lfreemarker/ext/beans/ClassIntrospector;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_40} :catch_41
    .catchall {:try_start_33 .. :try_end_40} :catchall_9f

    goto :goto_29

    :catch_41
    move-exception p1

    .line 247
    :try_start_42
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class inrospection data lookup aborded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5b
    if-eqz v1, :cond_5f

    .line 251
    monitor-exit v0

    return-object v1

    .line 254
    :cond_5f
    iget-object v1, p0, Lfreemarker/ext/beans/ClassIntrospector;->classIntrospectionsInProgress:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_42 .. :try_end_65} :catchall_9f

    .line 257
    :try_start_65
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/ClassIntrospector;->createClassIntrospectionData(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lfreemarker/ext/beans/ClassIntrospector;->sharedLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_8c

    .line 259
    :try_start_6c
    iget-object v3, p0, Lfreemarker/ext/beans/ClassIntrospector;->cache:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v3, p0, Lfreemarker/ext/beans/ClassIntrospector;->cacheClassNames:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 261
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_6c .. :try_end_77} :catchall_89

    .line 264
    iget-object v2, p0, Lfreemarker/ext/beans/ClassIntrospector;->sharedLock:Ljava/lang/Object;

    monitor-enter v2

    .line 265
    :try_start_7a
    iget-object v1, p0, Lfreemarker/ext/beans/ClassIntrospector;->classIntrospectionsInProgress:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 266
    iget-object p1, p0, Lfreemarker/ext/beans/ClassIntrospector;->sharedLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 267
    monitor-exit v2

    return-object v0

    :catchall_86
    move-exception p1

    monitor-exit v2
    :try_end_88
    .catchall {:try_start_7a .. :try_end_88} :catchall_86

    throw p1

    :catchall_89
    move-exception v0

    .line 261
    :try_start_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    :try_start_8b
    throw v0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8c

    :catchall_8c
    move-exception v0

    .line 264
    iget-object v1, p0, Lfreemarker/ext/beans/ClassIntrospector;->sharedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 265
    :try_start_90
    iget-object v2, p0, Lfreemarker/ext/beans/ClassIntrospector;->classIntrospectionsInProgress:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 266
    iget-object p1, p0, Lfreemarker/ext/beans/ClassIntrospector;->sharedLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 267
    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_90 .. :try_end_9b} :catchall_9c

    .line 268
    throw v0

    :catchall_9c
    move-exception p1

    .line 267
    :try_start_9d
    monitor-exit v1
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    throw p1

    :catchall_9f
    move-exception p1

    .line 255
    :try_start_a0
    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw p1
.end method

.method getClearingCounter()I
    .registers 3

    .line 931
    iget-object v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->sharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 932
    :try_start_3
    iget v1, p0, Lfreemarker/ext/beans/ClassIntrospector;->clearingCounter:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 933
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getExposeFields()Z
    .registers 2

    .line 1045
    iget-boolean v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->exposeFields:Z

    return v0
.end method

.method getExposureLevel()I
    .registers 2

    .line 1041
    iget v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->exposureLevel:I

    return v0
.end method

.method getHasSharedInstanceRestrictons()Z
    .registers 2

    .line 1065
    iget-boolean v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->hasSharedInstanceRestrictons:Z

    return v0
.end method

.method getMethodAppearanceFineTuner()Lfreemarker/ext/beans/MethodAppearanceFineTuner;
    .registers 2

    .line 1053
    iget-object v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->methodAppearanceFineTuner:Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    return-object v0
.end method

.method getMethodSorter()Lfreemarker/ext/beans/MethodSorter;
    .registers 2

    .line 1057
    iget-object v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->methodSorter:Lfreemarker/ext/beans/MethodSorter;

    return-object v0
.end method

.method getRegisteredModelFactoriesSnapshot()[Ljava/lang/Object;
    .registers 3

    .line 1090
    iget-object v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->sharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1091
    :try_start_3
    iget-object v1, p0, Lfreemarker/ext/beans/ClassIntrospector;->modelFactories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    .line 1092
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method getSharedLock()Ljava/lang/Object;
    .registers 2

    .line 1082
    iget-object v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->sharedLock:Ljava/lang/Object;

    return-object v0
.end method

.method getTreatDefaultMethodsAsBeanMembers()Z
    .registers 2

    .line 1049
    iget-boolean v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->treatDefaultMethodsAsBeanMembers:Z

    return v0
.end method

.method isAllowedToExpose(Ljava/lang/reflect/Method;)Z
    .registers 4

    .line 813
    iget v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->exposureLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_d

    invoke-static {p1}, Lfreemarker/ext/beans/UnsafeMethods;->isUnsafeMethod(Ljava/lang/reflect/Method;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_d
    return v1
.end method

.method isShared()Z
    .registers 2

    .line 1074
    iget-boolean v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->shared:Z

    return v0
.end method

.method keyCount(Ljava/lang/Class;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1017
    invoke-virtual {p0, p1}, Lfreemarker/ext/beans/ClassIntrospector;->get(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p1

    .line 1018
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 1019
    sget-object v1, Lfreemarker/ext/beans/ClassIntrospector;->CONSTRUCTORS_KEY:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    add-int/lit8 v0, v0, -0x1

    .line 1020
    :cond_12
    sget-object v1, Lfreemarker/ext/beans/ClassIntrospector;->GENERIC_GET_KEY:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    add-int/lit8 v0, v0, -0x1

    .line 1021
    :cond_1c
    sget-object v1, Lfreemarker/ext/beans/ClassIntrospector;->ARG_TYPES_BY_METHOD_KEY:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    add-int/lit8 v0, v0, -0x1

    :cond_26
    return v0
.end method

.method keySet(Ljava/lang/Class;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1030
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Lfreemarker/ext/beans/ClassIntrospector;->get(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1031
    sget-object p1, Lfreemarker/ext/beans/ClassIntrospector;->CONSTRUCTORS_KEY:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1032
    sget-object p1, Lfreemarker/ext/beans/ClassIntrospector;->GENERIC_GET_KEY:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1033
    sget-object p1, Lfreemarker/ext/beans/ClassIntrospector;->ARG_TYPES_BY_METHOD_KEY:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method registerModelFactory(Lfreemarker/ext/beans/ClassBasedModelFactory;)V
    .registers 2

    .line 954
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/ClassIntrospector;->registerModelFactory(Ljava/lang/Object;)V

    return-void
.end method

.method registerModelFactory(Lfreemarker/ext/util/ModelCache;)V
    .registers 2

    .line 958
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/ClassIntrospector;->registerModelFactory(Ljava/lang/Object;)V

    return-void
.end method

.method remove(Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 905
    iget-object v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->sharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 906
    :try_start_3
    iget-object v1, p0, Lfreemarker/ext/beans/ClassIntrospector;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    iget-object v1, p0, Lfreemarker/ext/beans/ClassIntrospector;->cacheClassNames:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 908
    iget v1, p0, Lfreemarker/ext/beans/ClassIntrospector;->clearingCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfreemarker/ext/beans/ClassIntrospector;->clearingCounter:I

    .line 910
    iget-object v1, p0, Lfreemarker/ext/beans/ClassIntrospector;->modelFactories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 911
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 913
    instance-of v3, v2, Lfreemarker/ext/beans/ClassBasedModelFactory;

    if-eqz v3, :cond_39

    .line 914
    check-cast v2, Lfreemarker/ext/beans/ClassBasedModelFactory;

    invoke-virtual {v2, p1}, Lfreemarker/ext/beans/ClassBasedModelFactory;->removeFromCache(Ljava/lang/Class;)V

    goto :goto_1d

    .line 915
    :cond_39
    instance-of v3, v2, Lfreemarker/ext/util/ModelCache;

    if-eqz v3, :cond_43

    .line 916
    check-cast v2, Lfreemarker/ext/util/ModelCache;

    invoke-virtual {v2}, Lfreemarker/ext/util/ModelCache;->clearCache()V

    goto :goto_1d

    .line 918
    :cond_43
    new-instance p1, Lfreemarker/core/BugException;

    invoke-direct {p1}, Lfreemarker/core/BugException;-><init>()V

    throw p1

    .line 923
    :cond_49
    invoke-direct {p0}, Lfreemarker/ext/beans/ClassIntrospector;->removeClearedModelFactoryReferences()V

    .line 924
    monitor-exit v0

    return-void

    :catchall_4e
    move-exception p1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw p1
.end method

.method unregisterModelFactory(Lfreemarker/ext/beans/ClassBasedModelFactory;)V
    .registers 2

    .line 970
    invoke-virtual {p0, p1}, Lfreemarker/ext/beans/ClassIntrospector;->unregisterModelFactory(Ljava/lang/Object;)V

    return-void
.end method

.method unregisterModelFactory(Lfreemarker/ext/util/ModelCache;)V
    .registers 2

    .line 974
    invoke-virtual {p0, p1}, Lfreemarker/ext/beans/ClassIntrospector;->unregisterModelFactory(Ljava/lang/Object;)V

    return-void
.end method

.method unregisterModelFactory(Ljava/lang/Object;)V
    .registers 5

    .line 978
    iget-object v0, p0, Lfreemarker/ext/beans/ClassIntrospector;->sharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 979
    :try_start_3
    iget-object v1, p0, Lfreemarker/ext/beans/ClassIntrospector;->modelFactories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 980
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_9

    .line 982
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 986
    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p1
.end method

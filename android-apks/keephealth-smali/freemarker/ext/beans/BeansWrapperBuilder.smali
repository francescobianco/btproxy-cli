.class public Lfreemarker/ext/beans/BeansWrapperBuilder;
.super Lfreemarker/ext/beans/BeansWrapperConfiguration;
.source "BeansWrapperBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/beans/BeansWrapperBuilder$BeansWrapperFactory;
    }
.end annotation


# static fields
.field private static final INSTANCE_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Lfreemarker/ext/beans/BeansWrapperConfiguration;",
            "Ljava/lang/ref/WeakReference<",
            "Lfreemarker/ext/beans/BeansWrapper;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final INSTANCE_CACHE_REF_QUEUE:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lfreemarker/ext/beans/BeansWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 114
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/BeansWrapperBuilder;->INSTANCE_CACHE:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/BeansWrapperBuilder;->INSTANCE_CACHE_REF_QUEUE:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/Version;)V
    .registers 2

    .line 133
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/BeansWrapperConfiguration;-><init>(Lfreemarker/template/Version;)V

    return-void
.end method

.method static clearInstanceCache()V
    .registers 2

    .line 138
    sget-object v0, Lfreemarker/ext/beans/BeansWrapperBuilder;->INSTANCE_CACHE:Ljava/util/Map;

    monitor-enter v0

    .line 139
    :try_start_3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 140
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method static getInstanceCache()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Lfreemarker/ext/beans/BeansWrapperConfiguration;",
            "Ljava/lang/ref/WeakReference<",
            "Lfreemarker/ext/beans/BeansWrapper;",
            ">;>;>;"
        }
    .end annotation

    .line 147
    sget-object v0, Lfreemarker/ext/beans/BeansWrapperBuilder;->INSTANCE_CACHE:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public build()Lfreemarker/ext/beans/BeansWrapper;
    .registers 4

    .line 155
    sget-object v0, Lfreemarker/ext/beans/BeansWrapperBuilder;->INSTANCE_CACHE:Ljava/util/Map;

    sget-object v1, Lfreemarker/ext/beans/BeansWrapperBuilder;->INSTANCE_CACHE_REF_QUEUE:Ljava/lang/ref/ReferenceQueue;

    .line 156
    # getter for: Lfreemarker/ext/beans/BeansWrapperBuilder$BeansWrapperFactory;->INSTANCE:Lfreemarker/ext/beans/BeansWrapperBuilder$BeansWrapperFactory;
    invoke-static {}, Lfreemarker/ext/beans/BeansWrapperBuilder$BeansWrapperFactory;->access$000()Lfreemarker/ext/beans/BeansWrapperBuilder$BeansWrapperFactory;

    move-result-object v2

    .line 155
    invoke-static {p0, v0, v1, v2}, Lfreemarker/ext/beans/_BeansAPI;->getBeansWrapperSubclassSingleton(Lfreemarker/ext/beans/BeansWrapperConfiguration;Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;Lfreemarker/ext/beans/_BeansAPI$_BeansWrapperSubclassFactory;)Lfreemarker/ext/beans/BeansWrapper;

    move-result-object v0

    return-object v0
.end method

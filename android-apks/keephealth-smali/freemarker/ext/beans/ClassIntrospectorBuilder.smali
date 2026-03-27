.class final Lfreemarker/ext/beans/ClassIntrospectorBuilder;
.super Ljava/lang/Object;
.source "ClassIntrospectorBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final INSTANCE_CACHE:Ljava/util/Map;

.field private static final INSTANCE_CACHE_REF_QUEUE:Ljava/lang/ref/ReferenceQueue;


# instance fields
.field private final bugfixed:Z

.field private exposeFields:Z

.field private exposureLevel:I

.field private methodAppearanceFineTuner:Lfreemarker/ext/beans/MethodAppearanceFineTuner;

.field private methodSorter:Lfreemarker/ext/beans/MethodSorter;

.field private treatDefaultMethodsAsBeanMembers:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->INSTANCE_CACHE:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->INSTANCE_CACHE_REF_QUEUE:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method constructor <init>(Lfreemarker/ext/beans/ClassIntrospector;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->exposureLevel:I

    .line 52
    iget-boolean v0, p1, Lfreemarker/ext/beans/ClassIntrospector;->bugfixed:Z

    iput-boolean v0, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->bugfixed:Z

    .line 53
    iget v0, p1, Lfreemarker/ext/beans/ClassIntrospector;->exposureLevel:I

    iput v0, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->exposureLevel:I

    .line 54
    iget-boolean v0, p1, Lfreemarker/ext/beans/ClassIntrospector;->exposeFields:Z

    iput-boolean v0, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->exposeFields:Z

    .line 55
    iget-boolean v0, p1, Lfreemarker/ext/beans/ClassIntrospector;->treatDefaultMethodsAsBeanMembers:Z

    iput-boolean v0, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->treatDefaultMethodsAsBeanMembers:Z

    .line 56
    iget-object v0, p1, Lfreemarker/ext/beans/ClassIntrospector;->methodAppearanceFineTuner:Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    iput-object v0, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->methodAppearanceFineTuner:Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    .line 57
    iget-object p1, p1, Lfreemarker/ext/beans/ClassIntrospector;->methodSorter:Lfreemarker/ext/beans/MethodSorter;

    iput-object p1, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->methodSorter:Lfreemarker/ext/beans/MethodSorter;

    return-void
.end method

.method constructor <init>(Lfreemarker/template/Version;)V
    .registers 4

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->exposureLevel:I

    .line 64
    invoke-static {p1}, Lfreemarker/ext/beans/BeansWrapper;->is2321Bugfixed(Lfreemarker/template/Version;)Z

    move-result v1

    iput-boolean v1, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->bugfixed:Z

    .line 66
    invoke-virtual {p1}, Lfreemarker/template/Version;->intValue()I

    move-result p1

    sget v1, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_26:I

    if-lt p1, v1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    iput-boolean v0, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->treatDefaultMethodsAsBeanMembers:Z

    return-void
.end method

.method static clearInstanceCache()V
    .registers 2

    .line 170
    sget-object v0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->INSTANCE_CACHE:Ljava/util/Map;

    monitor-enter v0

    .line 171
    :try_start_3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 172
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

    .line 177
    sget-object v0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->INSTANCE_CACHE:Ljava/util/Map;

    return-object v0
.end method

.method private static removeClearedReferencesFromInstanceCache()V
    .registers 4

    .line 156
    :goto_0
    sget-object v0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->INSTANCE_CACHE_REF_QUEUE:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 157
    sget-object v1, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->INSTANCE_CACHE:Ljava/util/Map;

    monitor-enter v1

    .line 158
    :try_start_b
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 159
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_13

    .line 160
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 164
    :cond_22
    monitor-exit v1

    goto :goto_0

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_24

    throw v0

    :cond_27
    return-void
.end method


# virtual methods
.method build()Lfreemarker/ext/beans/ClassIntrospector;
    .registers 6

    .line 185
    iget-object v0, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->methodAppearanceFineTuner:Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    instance-of v0, v0, Lfreemarker/ext/beans/SingletonCustomizer;

    if-eqz v0, :cond_12

    :cond_9
    iget-object v0, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->methodSorter:Lfreemarker/ext/beans/MethodSorter;

    if-eqz v0, :cond_1e

    instance-of v0, v0, Lfreemarker/ext/beans/SingletonCustomizer;

    if-eqz v0, :cond_12

    goto :goto_1e

    .line 206
    :cond_12
    new-instance v0, Lfreemarker/ext/beans/ClassIntrospector;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v1, v3}, Lfreemarker/ext/beans/ClassIntrospector;-><init>(Lfreemarker/ext/beans/ClassIntrospectorBuilder;Ljava/lang/Object;ZZ)V

    return-object v0

    .line 189
    :cond_1e
    :goto_1e
    sget-object v0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->INSTANCE_CACHE:Ljava/util/Map;

    monitor-enter v0

    .line 190
    :try_start_21
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    if-eqz v2, :cond_30

    .line 191
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/ext/beans/ClassIntrospector;

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    if-nez v2, :cond_4e

    .line 193
    invoke-virtual {p0}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    .line 194
    new-instance v3, Lfreemarker/ext/beans/ClassIntrospector;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-direct {v3, v2, v4, v1, v1}, Lfreemarker/ext/beans/ClassIntrospector;-><init>(Lfreemarker/ext/beans/ClassIntrospectorBuilder;Ljava/lang/Object;ZZ)V

    .line 195
    new-instance v1, Ljava/lang/ref/WeakReference;

    sget-object v4, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->INSTANCE_CACHE_REF_QUEUE:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    .line 197
    :cond_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_21 .. :try_end_4f} :catchall_53

    .line 199
    invoke-static {}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->removeClearedReferencesFromInstanceCache()V

    return-object v2

    :catchall_53
    move-exception v1

    .line 197
    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v1
.end method

.method protected clone()Ljava/lang/Object;
    .registers 4

    .line 72
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    .line 74
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to clone ClassIntrospectorBuilder"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 95
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 96
    :cond_13
    check-cast p1, Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    .line 98
    iget-boolean v2, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->bugfixed:Z

    iget-boolean v3, p1, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->bugfixed:Z

    if-eq v2, v3, :cond_1c

    return v1

    .line 99
    :cond_1c
    iget-boolean v2, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->exposeFields:Z

    iget-boolean v3, p1, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->exposeFields:Z

    if-eq v2, v3, :cond_23

    return v1

    .line 100
    :cond_23
    iget-boolean v2, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->treatDefaultMethodsAsBeanMembers:Z

    iget-boolean v3, p1, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->treatDefaultMethodsAsBeanMembers:Z

    if-eq v2, v3, :cond_2a

    return v1

    .line 101
    :cond_2a
    iget v2, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->exposureLevel:I

    iget v3, p1, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->exposureLevel:I

    if-eq v2, v3, :cond_31

    return v1

    .line 102
    :cond_31
    iget-object v2, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->methodAppearanceFineTuner:Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    iget-object v3, p1, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->methodAppearanceFineTuner:Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    if-eq v2, v3, :cond_38

    return v1

    .line 103
    :cond_38
    iget-object v2, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->methodSorter:Lfreemarker/ext/beans/MethodSorter;

    iget-object p1, p1, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->methodSorter:Lfreemarker/ext/beans/MethodSorter;

    if-eq v2, p1, :cond_3f

    return v1

    :cond_3f
    return v0
.end method

.method public getExposeFields()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->exposeFields:Z

    return v0
.end method

.method public getExposureLevel()I
    .registers 2

    .line 109
    iget v0, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->exposureLevel:I

    return v0
.end method

.method public getMethodAppearanceFineTuner()Lfreemarker/ext/beans/MethodAppearanceFineTuner;
    .registers 2

    .line 139
    iget-object v0, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->methodAppearanceFineTuner:Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    return-object v0
.end method

.method public getMethodSorter()Lfreemarker/ext/beans/MethodSorter;
    .registers 2

    .line 147
    iget-object v0, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->methodSorter:Lfreemarker/ext/beans/MethodSorter;

    return-object v0
.end method

.method public getTreatDefaultMethodsAsBeanMembers()Z
    .registers 2

    .line 131
    iget-boolean v0, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->treatDefaultMethodsAsBeanMembers:Z

    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 82
    iget-boolean v0, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->bugfixed:Z

    const/16 v1, 0x4cf

    const/16 v2, 0x4d5

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    const/16 v3, 0x1f

    add-int/2addr v0, v3

    mul-int/2addr v0, v3

    .line 83
    iget-boolean v4, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->exposeFields:Z

    if-eqz v4, :cond_15

    move v4, v1

    goto :goto_16

    :cond_15
    move v4, v2

    :goto_16
    add-int/2addr v0, v4

    mul-int/2addr v0, v3

    .line 84
    iget-boolean v4, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->treatDefaultMethodsAsBeanMembers:Z

    if-eqz v4, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    add-int/2addr v0, v1

    mul-int/2addr v0, v3

    .line 85
    iget v1, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->exposureLevel:I

    add-int/2addr v0, v1

    mul-int/2addr v0, v3

    .line 86
    iget-object v1, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->methodAppearanceFineTuner:Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/2addr v0, v3

    .line 87
    iget-object v1, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->methodSorter:Lfreemarker/ext/beans/MethodSorter;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isBugfixed()Z
    .registers 2

    .line 211
    iget-boolean v0, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->bugfixed:Z

    return v0
.end method

.method public setExposeFields(Z)V
    .registers 2

    .line 127
    iput-boolean p1, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->exposeFields:Z

    return-void
.end method

.method public setExposureLevel(I)V
    .registers 5

    if-ltz p1, :cond_8

    const/4 v0, 0x3

    if-gt p1, v0, :cond_8

    .line 118
    iput p1, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->exposureLevel:I

    return-void

    .line 115
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal exposure level: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMethodAppearanceFineTuner(Lfreemarker/ext/beans/MethodAppearanceFineTuner;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->methodAppearanceFineTuner:Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    return-void
.end method

.method public setMethodSorter(Lfreemarker/ext/beans/MethodSorter;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->methodSorter:Lfreemarker/ext/beans/MethodSorter;

    return-void
.end method

.method public setTreatDefaultMethodsAsBeanMembers(Z)V
    .registers 2

    .line 135
    iput-boolean p1, p0, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->treatDefaultMethodsAsBeanMembers:Z

    return-void
.end method

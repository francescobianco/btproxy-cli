.class Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActivityLifecycleImpl"
.end annotation


# instance fields
.field final mActivityList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigCount:I

.field final mDestroyedListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Ljava/util/Set<",
            "Lcom/keephealth/android/util/Utils$OnActivityDestroyedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mForegroundCount:I

.field private mIsBackground:Z

.field final mStatusListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/keephealth/android/util/Utils$OnAppStatusChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mStatusListenerMap:Ljava/util/Map;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mDestroyedListenerMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 191
    iput v0, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mForegroundCount:I

    .line 192
    iput v0, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mConfigCount:I

    .line 193
    iput-boolean v0, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mIsBackground:Z

    return-void
.end method

.method private consumeOnActivityDestroyedListener(Landroid/app/Activity;)V
    .registers 5

    .line 316
    iget-object v0, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mDestroyedListenerMap:Ljava/util/Map;

    .line 317
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 318
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 319
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 320
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_a

    .line 321
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 322
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/util/Utils$OnActivityDestroyedListener;

    .line 323
    invoke-interface {v2, p1}, Lcom/keephealth/android/util/Utils$OnActivityDestroyedListener;->onActivityDestroyed(Landroid/app/Activity;)V

    goto :goto_26

    .line 325
    :cond_36
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_3a
    return-void
.end method

.method private static fixSoftInputLeaks(Landroid/app/Activity;)V
    .registers 9

    if-nez p0, :cond_3

    return-void

    .line 366
    :cond_3
    invoke-static {}, Lcom/keephealth/android/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_12

    return-void

    :cond_12
    const/4 v1, 0x4

    .line 368
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "mLastSrvView"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "mCurRootView"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v6, "mServedView"

    aput-object v6, v2, v3

    const/4 v3, 0x3

    const-string v6, "mNextServedView"

    aput-object v6, v2, v3

    :goto_29
    if-ge v4, v1, :cond_63

    .line 369
    aget-object v3, v2, v4

    .line 371
    :try_start_2d
    const-class v6, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-nez v3, :cond_36

    goto :goto_60

    .line 373
    :cond_36
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v6

    if-nez v6, :cond_3f

    .line 374
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 376
    :cond_3f
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 377
    instance-of v7, v6, Landroid/view/View;

    if-nez v7, :cond_48

    goto :goto_60

    .line 378
    :cond_48
    check-cast v6, Landroid/view/View;

    .line 379
    invoke-virtual {v6}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    if-ne v6, v7, :cond_60

    const/4 v6, 0x0

    .line 380
    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_60
    .catchall {:try_start_2d .. :try_end_60} :catchall_60

    :catchall_60
    :cond_60
    :goto_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_63
    return-void
.end method

.method private getTopActivityByReflect()Landroid/app/Activity;
    .registers 7

    const/4 v0, 0x0

    .line 333
    :try_start_1
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 334
    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 335
    const-string v3, "mActivityList"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    .line 336
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 337
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_29

    return-object v0

    .line 339
    :cond_29
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 340
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 341
    const-string v5, "paused"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 342
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 343
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    .line 344
    const-string v1, "activity"

    invoke-virtual {v4, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 345
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 346
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;
    :try_end_5d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_5d} :catch_72
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_5d} :catch_6d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_5d} :catch_68
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_5d} :catch_63
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_5d} :catch_5e

    return-object v1

    :catch_5e
    move-exception v1

    .line 358
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_76

    :catch_63
    move-exception v1

    .line 356
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_76

    :catch_68
    move-exception v1

    .line 354
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_76

    :catch_6d
    move-exception v1

    .line 352
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_76

    :catch_72
    move-exception v1

    .line 350
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_76
    :goto_76
    return-object v0
.end method

.method private postStatus(Z)V
    .registers 4

    .line 292
    iget-object v0, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mStatusListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 293
    :cond_9
    iget-object v0, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mStatusListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/Utils$OnAppStatusChangedListener;

    if-nez v1, :cond_22

    return-void

    :cond_22
    if-eqz p1, :cond_28

    .line 296
    invoke-interface {v1}, Lcom/keephealth/android/util/Utils$OnAppStatusChangedListener;->onForeground()V

    goto :goto_13

    .line 298
    :cond_28
    invoke-interface {v1}, Lcom/keephealth/android/util/Utils$OnAppStatusChangedListener;->onBackground()V

    goto :goto_13

    :cond_2c
    return-void
.end method

.method private setTopActivity(Landroid/app/Activity;)V
    .registers 4

    .line 304
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.blankj.utilcode.util.PermissionUtils$PermissionActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 305
    :cond_11
    iget-object v0, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 306
    iget-object v0, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 307
    iget-object v0, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 308
    iget-object v0, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_37

    .line 311
    :cond_32
    iget-object v0, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_37
    :goto_37
    return-void
.end method


# virtual methods
.method addOnActivityDestroyedListener(Landroid/app/Activity;Lcom/keephealth/android/util/Utils$OnActivityDestroyedListener;)V
    .registers 5

    if-eqz p1, :cond_2b

    if-nez p2, :cond_5

    goto :goto_2b

    .line 281
    :cond_5
    iget-object v0, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mDestroyedListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 282
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 283
    iget-object v1, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mDestroyedListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    .line 285
    :cond_18
    iget-object v0, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mDestroyedListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    .line 286
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    return-void

    .line 288
    :cond_28
    :goto_28
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2b
    :goto_2b
    return-void
.end method

.method addOnAppStatusChangedListener(Ljava/lang/Object;Lcom/keephealth/android/util/Utils$OnAppStatusChangedListener;)V
    .registers 4

    .line 265
    iget-object v0, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mStatusListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method getTopActivity()Landroid/app/Activity;
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 251
    iget-object v0, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_13

    return-object v0

    .line 256
    :cond_13
    invoke-direct {p0}, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->getTopActivityByReflect()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 258
    invoke-direct {p0, v0}, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->setTopActivity(Landroid/app/Activity;)V

    :cond_1c
    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 197
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->setTopActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    .line 244
    iget-object v0, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 245
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->consumeOnActivityDestroyedListener(Landroid/app/Activity;)V

    .line 246
    invoke-static {p1}, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->fixSoftInputLeaks(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    .line 214
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->setTopActivity(Landroid/app/Activity;)V

    .line 215
    iget-boolean p1, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mIsBackground:Z

    if-eqz p1, :cond_e

    const/4 p1, 0x0

    .line 216
    iput-boolean p1, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mIsBackground:Z

    const/4 p1, 0x1

    .line 217
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->postStatus(Z)V

    :cond_e
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    .line 202
    iget-boolean v0, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mIsBackground:Z

    if-nez v0, :cond_7

    .line 203
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->setTopActivity(Landroid/app/Activity;)V

    .line 205
    :cond_7
    iget p1, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mConfigCount:I

    if-gez p1, :cond_10

    add-int/lit8 p1, p1, 0x1

    .line 206
    iput p1, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mConfigCount:I

    goto :goto_16

    .line 208
    :cond_10
    iget p1, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mForegroundCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mForegroundCount:I

    :goto_16
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    .line 228
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_d

    .line 229
    iget p1, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mConfigCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mConfigCount:I

    goto :goto_1a

    .line 231
    :cond_d
    iget p1, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mForegroundCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mForegroundCount:I

    if-gtz p1, :cond_1a

    .line 233
    iput-boolean v0, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mIsBackground:Z

    const/4 p1, 0x0

    .line 234
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->postStatus(Z)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method removeOnActivityDestroyedListener(Landroid/app/Activity;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 274
    :cond_3
    iget-object v0, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mDestroyedListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method removeOnAppStatusChangedListener(Ljava/lang/Object;)V
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mStatusListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

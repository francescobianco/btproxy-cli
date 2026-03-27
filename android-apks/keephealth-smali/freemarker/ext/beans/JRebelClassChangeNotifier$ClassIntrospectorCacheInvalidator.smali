.class Lfreemarker/ext/beans/JRebelClassChangeNotifier$ClassIntrospectorCacheInvalidator;
.super Ljava/lang/Object;
.source "JRebelClassChangeNotifier.java"

# interfaces
.implements Lorg/zeroturnaround/javarebel/ClassEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/JRebelClassChangeNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClassIntrospectorCacheInvalidator"
.end annotation


# instance fields
.field private final ref:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lfreemarker/ext/beans/ClassIntrospector;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lfreemarker/ext/beans/JRebelClassChangeNotifier$ClassIntrospectorCacheInvalidator;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onClassEvent(ILjava/lang/Class;)V
    .registers 5

    .line 47
    iget-object v0, p0, Lfreemarker/ext/beans/JRebelClassChangeNotifier$ClassIntrospectorCacheInvalidator;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/beans/ClassIntrospector;

    if-nez v0, :cond_12

    .line 49
    invoke-static {}, Lorg/zeroturnaround/javarebel/ReloaderFactory;->getInstance()Lorg/zeroturnaround/javarebel/Reloader;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/zeroturnaround/javarebel/Reloader;->removeClassReloadListener(Lorg/zeroturnaround/javarebel/ClassEventListener;)V

    goto :goto_18

    :cond_12
    const/4 v1, 0x1

    if-ne p1, v1, :cond_18

    .line 51
    invoke-virtual {v0, p2}, Lfreemarker/ext/beans/ClassIntrospector;->remove(Ljava/lang/Class;)V

    :cond_18
    :goto_18
    return-void
.end method

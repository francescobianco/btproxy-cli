.class public interface abstract Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnPullEventListener;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPullEventListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onPullEvent(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase<",
            "TV;>;",
            "Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;",
            "Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;",
            ")V"
        }
    .end annotation
.end method

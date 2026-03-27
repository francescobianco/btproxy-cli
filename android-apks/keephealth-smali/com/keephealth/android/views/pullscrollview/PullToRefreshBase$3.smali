.class Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$3;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnSmoothScrollFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->smoothScrollToAndBack(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;)V
    .registers 2

    .line 1236
    iput-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$3;->this$0:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmoothScrollFinished()V
    .registers 8

    .line 1240
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$3;->this$0:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;

    const-wide/16 v4, 0xe1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    # invokes: Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->smoothScrollTo(IJJLcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    invoke-static/range {v0 .. v6}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->access$100(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;IJJLcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    return-void
.end method

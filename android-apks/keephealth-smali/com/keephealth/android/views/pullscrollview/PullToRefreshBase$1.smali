.class Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$1;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnSmoothScrollFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->onRefreshing(Z)V
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

    .line 695
    iput-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$1;->this$0:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmoothScrollFinished()V
    .registers 2

    .line 698
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$1;->this$0:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;

    # invokes: Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->callRefreshListener()V
    invoke-static {v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->access$000(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;)V

    return-void
.end method

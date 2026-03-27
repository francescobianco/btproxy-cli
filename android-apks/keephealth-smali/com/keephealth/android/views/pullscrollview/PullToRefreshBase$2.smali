.class Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$2;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->onSizeChanged(IIII)V
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

    .line 817
    iput-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$2;->this$0:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 820
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$2;->this$0:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;

    invoke-virtual {v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->requestLayout()V

    return-void
.end method

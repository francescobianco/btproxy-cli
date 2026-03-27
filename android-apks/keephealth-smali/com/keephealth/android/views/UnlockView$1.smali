.class Lcom/keephealth/android/views/UnlockView$1;
.super Ljava/util/TimerTask;
.source "UnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/UnlockView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/UnlockView;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/UnlockView;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/keephealth/android/views/UnlockView$1;->this$0:Lcom/keephealth/android/views/UnlockView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/keephealth/android/views/UnlockView$1;->this$0:Lcom/keephealth/android/views/UnlockView;

    const/4 v1, 0x1

    # += operator for: Lcom/keephealth/android/views/UnlockView;->progress:I
    invoke-static {v0, v1}, Lcom/keephealth/android/views/UnlockView;->access$012(Lcom/keephealth/android/views/UnlockView;I)I

    .line 162
    iget-object v0, p0, Lcom/keephealth/android/views/UnlockView$1;->this$0:Lcom/keephealth/android/views/UnlockView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/UnlockView;->postInvalidate()V

    .line 163
    iget-object v0, p0, Lcom/keephealth/android/views/UnlockView$1;->this$0:Lcom/keephealth/android/views/UnlockView;

    # getter for: Lcom/keephealth/android/views/UnlockView;->lister:Lcom/keephealth/android/views/UnlockView$UnLockListener;
    invoke-static {v0}, Lcom/keephealth/android/views/UnlockView;->access$100(Lcom/keephealth/android/views/UnlockView;)Lcom/keephealth/android/views/UnlockView$UnLockListener;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/keephealth/android/views/UnlockView$1;->this$0:Lcom/keephealth/android/views/UnlockView;

    # getter for: Lcom/keephealth/android/views/UnlockView;->progress:I
    invoke-static {v0}, Lcom/keephealth/android/views/UnlockView;->access$000(Lcom/keephealth/android/views/UnlockView;)I

    move-result v0

    const/16 v1, 0x168

    if-ne v0, v1, :cond_30

    .line 164
    iget-object v0, p0, Lcom/keephealth/android/views/UnlockView$1;->this$0:Lcom/keephealth/android/views/UnlockView;

    # setter for: Lcom/keephealth/android/views/UnlockView;->progress:I
    invoke-static {v0, v1}, Lcom/keephealth/android/views/UnlockView;->access$002(Lcom/keephealth/android/views/UnlockView;I)I

    .line 165
    iget-object v0, p0, Lcom/keephealth/android/views/UnlockView$1;->this$0:Lcom/keephealth/android/views/UnlockView;

    # getter for: Lcom/keephealth/android/views/UnlockView;->lister:Lcom/keephealth/android/views/UnlockView$UnLockListener;
    invoke-static {v0}, Lcom/keephealth/android/views/UnlockView;->access$100(Lcom/keephealth/android/views/UnlockView;)Lcom/keephealth/android/views/UnlockView$UnLockListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/keephealth/android/views/UnlockView$UnLockListener;->lockSuccess()V

    .line 166
    iget-object v0, p0, Lcom/keephealth/android/views/UnlockView$1;->this$0:Lcom/keephealth/android/views/UnlockView;

    # invokes: Lcom/keephealth/android/views/UnlockView;->closeTimer()V
    invoke-static {v0}, Lcom/keephealth/android/views/UnlockView;->access$200(Lcom/keephealth/android/views/UnlockView;)V

    :cond_30
    return-void
.end method

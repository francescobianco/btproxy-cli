.class Lcom/keephealth/android/childmodule/fragment/TaskFragment$1;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "TaskFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/fragment/TaskFragment;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 6

    .line 157
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iget-wide v0, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->timestamp:J

    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iget-wide v2, v2, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->timeDay:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->timestamp:J

    .line 158
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    # invokes: Lcom/keephealth/android/childmodule/fragment/TaskFragment;->setNextData()V
    invoke-static {p1}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->access$000(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)V

    return-void
.end method

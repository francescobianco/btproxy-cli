.class Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$1;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "CustomTaskActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 2

    .line 134
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->finish()V

    return-void
.end method

.class Lcom/keephealth/android/childmodule/activity/AddRewardActivity$5;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "AddRewardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)V
    .registers 2

    .line 213
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$5;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 2

    .line 216
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$5;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->finish()V

    return-void
.end method

.class Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$10;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "RegisterNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)V
    .registers 2

    .line 478
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$10;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 2

    .line 481
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$10;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # invokes: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->showNoReceiveDialog()V
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$100(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)V

    return-void
.end method

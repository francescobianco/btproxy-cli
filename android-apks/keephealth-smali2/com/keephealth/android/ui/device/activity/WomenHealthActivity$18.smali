.class Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$18;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "WomenHealthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)V
    .registers 2

    .line 3155
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$18;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 3

    .line 3158
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$18;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->moodOnClick(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$2300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;Landroid/view/View;)V

    return-void
.end method

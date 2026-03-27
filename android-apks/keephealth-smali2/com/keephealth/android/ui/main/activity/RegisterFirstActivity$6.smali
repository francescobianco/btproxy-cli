.class Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$6;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "RegisterFirstActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;)V
    .registers 2

    .line 304
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 307
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    const-class v1, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 308
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->startActivity(Landroid/content/Intent;)V

    .line 309
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->overridePendingTransition(II)V

    return-void
.end method

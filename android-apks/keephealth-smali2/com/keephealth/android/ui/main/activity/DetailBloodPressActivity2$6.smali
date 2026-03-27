.class Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$6;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "DetailBloodPressActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;)V
    .registers 2

    .line 300
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$6;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 303
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$6;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    const-class v1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$6;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    const/16 v1, 0x64

    invoke-virtual {v0, p1, v1}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

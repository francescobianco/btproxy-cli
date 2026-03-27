.class Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$1;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "WomenHealthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->initView()V
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

    .line 153
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 2

    .line 156
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->finish()V

    return-void
.end method

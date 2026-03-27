.class Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$1;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "WomenHealthOldActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 2

    .line 158
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->finish()V

    return-void
.end method

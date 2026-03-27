.class Lcom/keephealth/android/ui/device/activity/CardActivity$2;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "CardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/CardActivity;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/CardActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/CardActivity;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/CardActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/CardActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 2

    .line 124
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/CardActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/CardActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/CardActivity;->finish()V

    return-void
.end method

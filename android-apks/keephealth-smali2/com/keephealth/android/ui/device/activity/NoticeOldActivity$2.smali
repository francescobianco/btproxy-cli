.class Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$2;
.super Ljava/lang/Object;
.source "NoticeOldActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V
    .registers 2

    .line 519
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 522
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;

    const-class v0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;

    invoke-static {p1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

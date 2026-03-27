.class Lcom/keephealth/android/ui/device/activity/NoticeOldActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "NoticeOldActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/NoticeOldActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V
    .registers 3

    .line 72
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity_ViewBinding$1;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity_ViewBinding$1;->val$target:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 75
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity_ViewBinding$1;->val$target:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->toSetNoti()V

    return-void
.end method

.class Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$2;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "WeightDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)V
    .registers 2

    .line 199
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 3

    .line 202
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    const/4 v0, 0x1

    # invokes: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->safeShowCustomCyclePicker(I)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$000(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;I)V

    return-void
.end method

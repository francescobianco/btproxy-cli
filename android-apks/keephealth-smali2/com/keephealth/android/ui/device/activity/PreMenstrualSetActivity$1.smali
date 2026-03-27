.class Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$1;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "PreMenstrualSetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 2

    .line 214
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->saveData()V

    return-void
.end method

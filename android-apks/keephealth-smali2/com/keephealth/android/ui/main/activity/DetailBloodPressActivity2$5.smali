.class Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$5;
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

    .line 293
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$5;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 3

    .line 296
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$5;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    # invokes: Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->access$000(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;Lcom/keephealth/android/model/bean/DetailTimeType;)V

    .line 297
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$5;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    const/4 v0, 0x3

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->type:I
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->access$102(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;I)I

    return-void
.end method

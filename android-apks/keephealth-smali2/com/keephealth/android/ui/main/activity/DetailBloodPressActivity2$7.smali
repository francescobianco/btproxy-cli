.class Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$7;
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

    .line 307
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$7;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 3

    .line 310
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$7;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    const-class v0, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;

    invoke-static {p1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.class Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "InputBloodPressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 9

    .line 119
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    new-instance v6, Lcom/keephealth/android/childmodule/DialogView;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v0, v2, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->stringTime:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->stringTime:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2$1;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2$1;-><init>(Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2;)V

    const/4 v1, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/childmodule/DialogView;-><init>(ZLandroid/content/Context;IILcom/keephealth/android/childmodule/DialogView$OnSelectTime;)V

    iput-object v6, p1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->dialogViewTime:Lcom/keephealth/android/childmodule/DialogView;

    return-void
.end method

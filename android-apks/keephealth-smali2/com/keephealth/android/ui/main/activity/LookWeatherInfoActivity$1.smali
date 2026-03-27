.class Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity$1;
.super Ljava/lang/Object;
.source "LookWeatherInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 87
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;

    const-class v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {p1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    const-class p1, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    const-string p1, "MainActivityNew"

    sput-object p1, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    .line 89
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;

    sget-object v0, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    const-string v1, "class"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "classStr"

    invoke-static {p1, v1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getCurrentStep()V

    const/4 p1, 0x1

    .line 91
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    .line 92
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isLookWeatherBack:Z

    return-void
.end method

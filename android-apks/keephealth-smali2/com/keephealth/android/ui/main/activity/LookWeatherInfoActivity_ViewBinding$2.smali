.class Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "LookWeatherInfoActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;)V
    .registers 3

    .line 45
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity_ViewBinding$2;->this$0:Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity_ViewBinding$2;->val$target:Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity_ViewBinding$2;->val$target:Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->onClick(Landroid/view/View;)V

    return-void
.end method

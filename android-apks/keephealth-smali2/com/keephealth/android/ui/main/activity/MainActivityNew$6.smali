.class Lcom/keephealth/android/ui/main/activity/MainActivityNew$6;
.super Ljava/lang/Object;
.source "MainActivityNew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/MainActivityNew;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V
    .registers 2

    .line 422
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$6;->this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 425
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$6;->this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/MainActivityNew;->currentIndex:I
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->access$200(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_12

    .line 426
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$6;->this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    const-string v1, "a10"

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->showFragment(ILjava/lang/String;)V

    .line 427
    sput v0, Lcom/keephealth/android/app/AppApplication;->currentTab:I

    :cond_12
    return-void
.end method

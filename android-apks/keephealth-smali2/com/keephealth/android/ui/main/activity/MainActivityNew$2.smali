.class Lcom/keephealth/android/ui/main/activity/MainActivityNew$2;
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

    .line 385
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$2;->this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 388
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$2;->this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/MainActivityNew;->currentIndex:I
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->access$200(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)I

    move-result p1

    if-eqz p1, :cond_12

    .line 389
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$2;->this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    const-string v0, "a6"

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->showFragment(ILjava/lang/String;)V

    .line 390
    sput v1, Lcom/keephealth/android/app/AppApplication;->currentTab:I

    :cond_12
    return-void
.end method

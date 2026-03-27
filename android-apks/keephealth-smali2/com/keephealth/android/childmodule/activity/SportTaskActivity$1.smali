.class Lcom/keephealth/android/childmodule/activity/SportTaskActivity$1;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "SportTaskActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 2

    .line 156
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->finish()V

    return-void
.end method

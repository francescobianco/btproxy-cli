.class Lcom/keephealth/android/views/dialog/RewardRecordDialog$1;
.super Ljava/lang/Object;
.source "RewardRecordDialog.java"

# interfaces
.implements Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/dialog/RewardRecordDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/dialog/RewardRecordDialog;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/dialog/RewardRecordDialog;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/keephealth/android/views/dialog/RewardRecordDialog$1;->this$0:Lcom/keephealth/android/views/dialog/RewardRecordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Ljava/lang/String;)V
    .registers 4

    .line 77
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/RewardRecordDialog$1;->this$0:Lcom/keephealth/android/views/dialog/RewardRecordDialog;

    # getter for: Lcom/keephealth/android/views/dialog/RewardRecordDialog;->onSelectClick:Lcom/keephealth/android/views/dialog/RewardRecordDialog$OnSelectClick;
    invoke-static {v0}, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->access$000(Lcom/keephealth/android/views/dialog/RewardRecordDialog;)Lcom/keephealth/android/views/dialog/RewardRecordDialog$OnSelectClick;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "title22:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GG314"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/RewardRecordDialog$1;->this$0:Lcom/keephealth/android/views/dialog/RewardRecordDialog;

    # getter for: Lcom/keephealth/android/views/dialog/RewardRecordDialog;->onSelectClick:Lcom/keephealth/android/views/dialog/RewardRecordDialog$OnSelectClick;
    invoke-static {v0}, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->access$000(Lcom/keephealth/android/views/dialog/RewardRecordDialog;)Lcom/keephealth/android/views/dialog/RewardRecordDialog$OnSelectClick;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keephealth/android/views/dialog/RewardRecordDialog$OnSelectClick;->onSelect(Ljava/lang/String;)V

    .line 81
    :cond_25
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/RewardRecordDialog$1;->this$0:Lcom/keephealth/android/views/dialog/RewardRecordDialog;

    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->dismiss()V

    return-void
.end method

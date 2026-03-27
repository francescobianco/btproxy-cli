.class public Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "TaskTargetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/keephealth/android/childmodule/bean/FamilyTaskList;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public isFuture:Z


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/FamilyTaskList;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->isFuture:Z

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/keephealth/android/childmodule/bean/FamilyTaskList;)V
    .registers 9

    .line 35
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTaskType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const v4, 0x7f0905f4

    if-ne v1, v2, :cond_3e

    .line 37
    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalType()I

    move-result v0

    if-ne v0, v3, :cond_2f

    .line 38
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1005c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_47

    .line 40
    :cond_2f
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1006e9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_47

    .line 43
    :cond_3e
    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getWorkoutType()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v4, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 45
    :goto_47
    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCoin()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090746

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 46
    iget-boolean v0, p0, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->isFuture:Z

    const v1, 0x7f10069b

    const v2, 0x7f09077d

    if-eqz v0, :cond_6b

    .line 47
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_8b

    .line 49
    :cond_6b
    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getStatus()I

    move-result v0

    if-ne v0, v3, :cond_80

    .line 50
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1001c0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_8b

    .line 52
    :cond_80
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 56
    :goto_8b
    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTaskStatus()I

    move-result v0

    const v1, 0x7f0903ca

    if-nez v0, :cond_9b

    const v0, 0x7f080072

    .line 57
    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setBackgroundResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_a1

    :cond_9b
    const v0, 0x7f080083

    .line 59
    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setBackgroundResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 61
    :goto_a1
    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalType()I

    move-result v0

    const v1, 0x7f10076d

    const/16 v2, 0x3c

    const v3, 0x7f090129

    packed-switch v0, :pswitch_data_208

    goto/16 :goto_206

    .line 86
    :pswitch_b2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result p2

    div-int/2addr p2, v2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto/16 :goto_206

    .line 83
    :pswitch_d5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1005c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto/16 :goto_206

    .line 72
    :pswitch_fa
    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v0

    const v4, 0x7f100387

    if-lt v0, v2, :cond_165

    .line 73
    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v0

    rem-int/2addr v0, v2

    if-nez v0, :cond_12d

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result p2

    div-int/2addr p2, v2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto/16 :goto_206

    .line 76
    :cond_12d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v5

    div-int/2addr v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result p2

    rem-int/2addr p2, v2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto/16 :goto_206

    .line 79
    :cond_165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto/16 :goto_206

    .line 69
    :pswitch_187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result p2

    div-int/lit16 p2, p2, 0x3e8

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v0

    if-eqz v0, :cond_1a8

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100771

    goto :goto_1af

    :cond_1a8
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100774

    :goto_1af
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_206

    .line 66
    :pswitch_1bf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100769

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_206

    .line 63
    :pswitch_1e3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10077a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :goto_206
    return-void

    nop

    :pswitch_data_208
    .packed-switch 0x1
        :pswitch_1e3
        :pswitch_1bf
        :pswitch_187
        :pswitch_fa
        :pswitch_d5
        :pswitch_b2
    .end packed-switch
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .registers 3

    .line 20
    check-cast p2, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/keephealth/android/childmodule/bean/FamilyTaskList;)V

    return-void
.end method

.method public setFuture(Z)V
    .registers 2

    .line 30
    iput-boolean p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->isFuture:Z

    return-void
.end method

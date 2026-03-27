.class public Lcom/keephealth/android/views/dialog/TimePickerDialog;
.super Lcom/keephealth/android/views/dialog/BaseDialog;
.source "TimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;
    }
.end annotation


# instance fields
.field private amOrPm:[Ljava/lang/String;

.field private callback:Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;

.field private cancel:Landroid/widget/TextView;

.field public ok:Landroid/widget/TextView;

.field public wheelPoint:Lcom/keephealth/android/views/wheel/WheelView;

.field public wheel_amOrpm:Lcom/keephealth/android/views/wheel/WheelView;

.field public wheel_h:Lcom/keephealth/android/views/wheel/WheelView;

.field public wheel_mi:Lcom/keephealth/android/views/wheel/WheelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    .line 31
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 32
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0c00f1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 34
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0900d5

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->cancel:Landroid/widget/TextView;

    .line 36
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dialog:Landroid/app/Dialog;

    const v1, 0x7f090562

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->ok:Landroid/widget/TextView;

    .line 37
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->cancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->ok:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x2

    .line 39
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "AM"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "PM"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->amOrPm:[Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dialog:Landroid/app/Dialog;

    const v2, 0x7f09005f

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/wheel/WheelView;

    iput-object v1, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->wheel_amOrpm:Lcom/keephealth/android/views/wheel/WheelView;

    .line 41
    iget-object v1, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dialog:Landroid/app/Dialog;

    const v2, 0x7f0901b8

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/wheel/WheelView;

    iput-object v1, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->wheel_h:Lcom/keephealth/android/views/wheel/WheelView;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f030001

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 43
    iget-object v1, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dialog:Landroid/app/Dialog;

    const v2, 0x7f090468

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/wheel/WheelView;

    iput-object v1, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->wheelPoint:Lcom/keephealth/android/views/wheel/WheelView;

    .line 44
    new-instance v2, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, ":"

    aput-object v6, v5, v3

    invoke-direct {v2, v5, v4}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/WheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 45
    iget-object v1, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->wheelPoint:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v1, v3}, Lcom/keephealth/android/views/wheel/WheelView;->setClickable(Z)V

    .line 46
    iget-object v1, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->wheelPoint:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v1, v3}, Lcom/keephealth/android/views/wheel/WheelView;->setEnabled(Z)V

    .line 47
    iget-object v1, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->wheelPoint:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v1, v3}, Lcom/keephealth/android/views/wheel/WheelView;->setCyclic(Z)V

    .line 49
    invoke-static {}, Lcom/keephealth/android/util/TimeUtil;->is24Hour()Z

    move-result v1

    const-string v2, "%02d"

    if-eqz v1, :cond_a9

    .line 50
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->wheel_h:Lcom/keephealth/android/views/wheel/WheelView;

    new-instance v0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    const/16 v1, 0x17

    invoke-direct {v0, v3, v1, v2}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/wheel/WheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 51
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->wheel_amOrpm:Lcom/keephealth/android/views/wheel/WheelView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/wheel/WheelView;->setVisibility(I)V

    goto :goto_c9

    .line 53
    :cond_a9
    iget-object v1, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->wheel_amOrpm:Lcom/keephealth/android/views/wheel/WheelView;

    new-instance v5, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    invoke-direct {v5, p1, v0}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {v1, v5}, Lcom/keephealth/android/views/wheel/WheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 54
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->wheel_amOrpm:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {p1, v3}, Lcom/keephealth/android/views/wheel/WheelView;->setCyclic(Z)V

    .line 55
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->wheel_amOrpm:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {p1, v3}, Lcom/keephealth/android/views/wheel/WheelView;->setVisibility(I)V

    .line 56
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->wheel_h:Lcom/keephealth/android/views/wheel/WheelView;

    new-instance v0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    const/16 v1, 0xc

    invoke-direct {v0, v4, v1, v2}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/wheel/WheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 58
    :goto_c9
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->wheel_h:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {p1, v4}, Lcom/keephealth/android/views/wheel/WheelView;->setCyclic(Z)V

    .line 60
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dialog:Landroid/app/Dialog;

    const v0, 0x7f09040a

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/wheel/WheelView;

    iput-object p1, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->wheel_mi:Lcom/keephealth/android/views/wheel/WheelView;

    .line 61
    new-instance v0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    const/16 v1, 0x3b

    invoke-direct {v0, v3, v1, v2}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/wheel/WheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 62
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->wheel_mi:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {p1, v4}, Lcom/keephealth/android/views/wheel/WheelView;->setCyclic(Z)V

    .line 64
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setDialogLocation(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public getTime()Ljava/lang/String;
    .registers 6

    .line 79
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->wheel_h:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/wheel/WheelView;->getCurrentItem()I

    move-result v0

    .line 80
    iget-object v1, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->wheel_mi:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v1}, Lcom/keephealth/android/views/wheel/WheelView;->getCurrentItem()I

    move-result v1

    .line 84
    invoke-static {}, Lcom/keephealth/android/util/TimeUtil;->is24Hour()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 87
    invoke-static {}, Lcom/keephealth/android/util/TimeUtil;->is24Hour()Z

    move-result v2

    iget-object v3, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->amOrPm:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/keephealth/android/util/TimeUtil;->timeFormatter(IIZ[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_38

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    .line 91
    iget-object v2, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->wheel_amOrpm:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v2}, Lcom/keephealth/android/views/wheel/WheelView;->getCurrentItem()I

    move-result v2

    if-nez v2, :cond_29

    const/4 v2, 0x1

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    :goto_2a
    invoke-static {v0, v2}, Lcom/keephealth/android/util/TimeUtil;->format12To24(IZ)I

    move-result v0

    .line 93
    invoke-static {}, Lcom/keephealth/android/util/TimeUtil;->is24Hour()Z

    move-result v2

    iget-object v3, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->amOrPm:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/keephealth/android/util/TimeUtil;->timeFormatter(IIZ[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    :goto_38
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "timeMode="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Hour="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  Min="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    return-object v2
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 101
    invoke-super {p0, p1}, Lcom/keephealth/android/views/dialog/BaseDialog;->onClick(Landroid/view/View;)V

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900d5

    if-eq p1, v0, :cond_7a

    const v0, 0x7f090562

    if-eq p1, v0, :cond_12

    goto :goto_81

    .line 104
    :cond_12
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->callback:Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;

    if-eqz p1, :cond_81

    .line 105
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->wheel_h:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/wheel/WheelView;->getCurrentItem()I

    move-result p1

    .line 106
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->wheel_mi:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/wheel/WheelView;->getCurrentItem()I

    move-result v0

    .line 110
    invoke-static {}, Lcom/keephealth/android/util/TimeUtil;->is24Hour()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 113
    invoke-static {}, Lcom/keephealth/android/util/TimeUtil;->is24Hour()Z

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->amOrPm:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/keephealth/android/util/TimeUtil;->timeFormatter(IIZ[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4e

    :cond_33
    add-int/lit8 p1, p1, 0x1

    .line 117
    iget-object v1, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->wheel_amOrpm:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v1}, Lcom/keephealth/android/views/wheel/WheelView;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_3f

    const/4 v1, 0x1

    goto :goto_40

    :cond_3f
    const/4 v1, 0x0

    :goto_40
    invoke-static {p1, v1}, Lcom/keephealth/android/util/TimeUtil;->format12To24(IZ)I

    move-result p1

    .line 119
    invoke-static {}, Lcom/keephealth/android/util/TimeUtil;->is24Hour()Z

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->amOrPm:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/keephealth/android/util/TimeUtil;->timeFormatter(IIZ[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    :goto_4e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "timeMode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hour="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  Min="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->callback:Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;

    invoke-interface {v2, v1, p1, v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;->onSure(Ljava/lang/String;II)V

    goto :goto_81

    .line 126
    :cond_7a
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->callback:Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;

    if-eqz p1, :cond_81

    .line 127
    invoke-interface {p1}, Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;->onCancel()V

    :cond_81
    :goto_81
    return-void
.end method

.method public setCallback(Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->callback:Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;

    return-void
.end method

.method public setTime(II)V
    .registers 5

    .line 71
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->wheel_amOrpm:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-static {p1}, Lcom/keephealth/android/util/TimeUtil;->isAM(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/wheel/WheelView;->setCurrentItem(I)V

    .line 74
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->wheel_h:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-static {}, Lcom/keephealth/android/util/TimeUtil;->is24Hour()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_1a

    :cond_14
    invoke-static {p1}, Lcom/keephealth/android/util/TimeUtil;->format24To12(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1a
    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/wheel/WheelView;->setCurrentItem(I)V

    .line 75
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/TimePickerDialog;->wheel_mi:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/wheel/WheelView;->setCurrentItem(I)V

    return-void
.end method

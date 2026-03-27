.class public abstract Lcom/keephealth/android/base/BaseCalendarActivity;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "BaseCalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/keephealth/android/base/BasePersenter;",
        ">",
        "Lcom/keephealth/android/base/BaseMvpActivity<",
        "TP;>;"
    }
.end annotation


# instance fields
.field protected clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

.field protected isToday:Z

.field protected onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

.field protected selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

.field protected selectedDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/keephealth/android/base/BaseCalendarActivity;->isToday:Z

    .line 28
    new-instance v0, Lcom/keephealth/android/base/BaseCalendarActivity$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/base/BaseCalendarActivity$1;-><init>(Lcom/keephealth/android/base/BaseCalendarActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/base/BaseCalendarActivity;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 23
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    new-instance p1, Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-direct {p1, p0}, Lcom/keephealth/android/views/calendar/CalendarDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/keephealth/android/base/BaseCalendarActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    .line 25
    iget-object v0, p0, Lcom/keephealth/android/base/BaseCalendarActivity;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    iput-object v0, p1, Lcom/keephealth/android/views/calendar/CalendarDialog;->mOnSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    return-void
.end method

.method protected updateBySelected(Ljava/util/Date;Lcom/ldf/calendar/model/CalendarDate;)V
    .registers 3

    return-void
.end method

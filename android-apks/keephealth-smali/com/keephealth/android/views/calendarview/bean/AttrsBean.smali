.class public Lcom/keephealth/android/views/calendarview/bean/AttrsBean;
.super Ljava/lang/Object;
.source "AttrsBean.java"


# instance fields
.field private chooseType:I

.field private colorChoose:I

.field private colorHoliday:I

.field private colorLunar:I

.field private colorSolar:I

.field private dayBg:I

.field private disableEndDate:[I

.field private disableStartDate:[I

.field private endDate:[I

.field private multiDates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field private multiDates2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field private showClick:Z

.field private showHoliday:Z

.field private showLastNext:Z

.field private showLunar:Z

.field private showTerm:Z

.field private singleDate:[I

.field private sizeLunar:I

.field private sizeSolar:I

.field private specifyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private startDate:[I

.field private switchChoose:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->showLastNext:Z

    .line 19
    iput-boolean v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->showLunar:Z

    .line 20
    iput-boolean v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->showHoliday:Z

    .line 21
    iput-boolean v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->showTerm:Z

    .line 22
    iput-boolean v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->switchChoose:Z

    const/high16 v0, -0x1000000

    .line 23
    iput v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->colorSolar:I

    .line 24
    const-string v0, "#999999"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->colorLunar:I

    .line 25
    const-string v0, "#EC9729"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->colorHoliday:I

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->colorChoose:I

    const/16 v0, 0xe

    .line 27
    iput v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->sizeSolar:I

    const/16 v0, 0x8

    .line 28
    iput v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->sizeLunar:I

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->chooseType:I

    return-void
.end method


# virtual methods
.method public getChooseType()I
    .registers 2

    .line 203
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->chooseType:I

    return v0
.end method

.method public getColorChoose()I
    .registers 2

    .line 163
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->colorChoose:I

    return v0
.end method

.method public getColorHoliday()I
    .registers 2

    .line 155
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->colorHoliday:I

    return v0
.end method

.method public getColorLunar()I
    .registers 2

    .line 147
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->colorLunar:I

    return v0
.end method

.method public getColorSolar()I
    .registers 2

    .line 139
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->colorSolar:I

    return v0
.end method

.method public getDayBg()I
    .registers 2

    .line 187
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->dayBg:I

    return v0
.end method

.method public getDisableEndDate()[I
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->disableEndDate:[I

    return-object v0
.end method

.method public getDisableStartDate()[I
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->disableStartDate:[I

    return-object v0
.end method

.method public getEndDate()[I
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->endDate:[I

    return-object v0
.end method

.method public getMultiDates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->multiDates:Ljava/util/List;

    return-object v0
.end method

.method public getMultiDates2()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->multiDates2:Ljava/util/List;

    return-object v0
.end method

.method public getSingleDate()[I
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->singleDate:[I

    return-object v0
.end method

.method public getSizeLunar()I
    .registers 2

    .line 179
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->sizeLunar:I

    return v0
.end method

.method public getSizeSolar()I
    .registers 2

    .line 171
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->sizeSolar:I

    return v0
.end method

.method public getSpecifyMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->specifyMap:Ljava/util/Map;

    return-object v0
.end method

.method public getStartDate()[I
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->startDate:[I

    return-object v0
.end method

.method public isShowClick()Z
    .registers 2

    .line 35
    iget-boolean v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->showClick:Z

    return v0
.end method

.method public isShowHoliday()Z
    .registers 2

    .line 115
    iget-boolean v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->showHoliday:Z

    return v0
.end method

.method public isShowLastNext()Z
    .registers 2

    .line 99
    iget-boolean v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->showLastNext:Z

    return v0
.end method

.method public isShowLunar()Z
    .registers 2

    .line 107
    iget-boolean v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->showLunar:Z

    return v0
.end method

.method public isShowTerm()Z
    .registers 2

    .line 123
    iget-boolean v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->showTerm:Z

    return v0
.end method

.method public isSwitchChoose()Z
    .registers 2

    .line 131
    iget-boolean v0, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->switchChoose:Z

    return v0
.end method

.method public setChooseType(I)V
    .registers 2

    .line 207
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->chooseType:I

    return-void
.end method

.method public setColorChoose(I)V
    .registers 2

    .line 167
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->colorChoose:I

    return-void
.end method

.method public setColorHoliday(I)V
    .registers 2

    .line 159
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->colorHoliday:I

    return-void
.end method

.method public setColorLunar(I)V
    .registers 2

    .line 151
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->colorLunar:I

    return-void
.end method

.method public setColorSolar(I)V
    .registers 2

    .line 143
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->colorSolar:I

    return-void
.end method

.method public setDayBg(I)V
    .registers 2

    .line 191
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->dayBg:I

    return-void
.end method

.method public setDisableEndDate([I)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->disableEndDate:[I

    return-void
.end method

.method public setDisableStartDate([I)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->disableStartDate:[I

    return-void
.end method

.method public setEndDate([I)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->endDate:[I

    return-void
.end method

.method public setMultiDates(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[I>;)V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->multiDates:Ljava/util/List;

    return-void
.end method

.method public setMultiDates2(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[I>;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->multiDates2:Ljava/util/List;

    return-void
.end method

.method public setShowClick(Z)V
    .registers 2

    .line 39
    iput-boolean p1, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->showClick:Z

    return-void
.end method

.method public setShowHoliday(Z)V
    .registers 2

    .line 119
    iput-boolean p1, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->showHoliday:Z

    return-void
.end method

.method public setShowLastNext(Z)V
    .registers 2

    .line 103
    iput-boolean p1, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->showLastNext:Z

    return-void
.end method

.method public setShowLunar(Z)V
    .registers 2

    .line 111
    iput-boolean p1, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->showLunar:Z

    return-void
.end method

.method public setShowTerm(Z)V
    .registers 2

    .line 127
    iput-boolean p1, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->showTerm:Z

    return-void
.end method

.method public setSingleDate([I)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->singleDate:[I

    return-void
.end method

.method public setSizeLunar(I)V
    .registers 2

    .line 183
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->sizeLunar:I

    return-void
.end method

.method public setSizeSolar(I)V
    .registers 2

    .line 175
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->sizeSolar:I

    return-void
.end method

.method public setSpecifyMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 199
    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->specifyMap:Ljava/util/Map;

    return-void
.end method

.method public setStartDate([I)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->startDate:[I

    return-void
.end method

.method public setSwitchChoose(Z)V
    .registers 2

    .line 135
    iput-boolean p1, p0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->switchChoose:Z

    return-void
.end method

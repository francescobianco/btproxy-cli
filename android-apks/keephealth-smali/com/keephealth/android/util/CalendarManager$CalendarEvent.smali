.class public Lcom/keephealth/android/util/CalendarManager$CalendarEvent;
.super Ljava/lang/Object;
.source "CalendarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/CalendarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarEvent"
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field public endDay:I

.field public endHour:I

.field public endMinute:I

.field public endMonth:I

.field public endTime:Ljava/lang/String;

.field public endTimeL:J

.field public endYear:I

.field public id:J

.field public location:Ljava/lang/String;

.field public startDay:I

.field public startHour:I

.field public startMinute:I

.field public startMonth:I

.field public startTime:Ljava/lang/String;

.field public startTimeL:J

.field public startYear:I

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIIIIIIIIII)V
    .registers 26

    move-object v0, p0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 264
    iput-wide v1, v0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->id:J

    move-object v1, p3

    .line 265
    iput-object v1, v0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->title:Ljava/lang/String;

    move-object v1, p4

    .line 266
    iput-object v1, v0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->startTime:Ljava/lang/String;

    move-object v1, p5

    .line 267
    iput-object v1, v0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->endTime:Ljava/lang/String;

    move-object v1, p6

    .line 268
    iput-object v1, v0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->description:Ljava/lang/String;

    move-object v1, p7

    .line 269
    iput-object v1, v0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->location:Ljava/lang/String;

    move-object v1, p8

    .line 270
    iput-object v1, v0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->type:Ljava/lang/String;

    move-wide v1, p9

    .line 271
    iput-wide v1, v0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->startTimeL:J

    move-wide v1, p11

    .line 272
    iput-wide v1, v0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->endTimeL:J

    move/from16 v1, p13

    .line 273
    iput v1, v0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->startYear:I

    move/from16 v1, p14

    .line 274
    iput v1, v0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->startMonth:I

    move/from16 v1, p15

    .line 275
    iput v1, v0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->startDay:I

    move/from16 v1, p16

    .line 276
    iput v1, v0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->startHour:I

    move/from16 v1, p17

    .line 277
    iput v1, v0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->startMinute:I

    move/from16 v1, p18

    .line 278
    iput v1, v0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->endYear:I

    move/from16 v1, p19

    .line 279
    iput v1, v0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->endMonth:I

    move/from16 v1, p20

    .line 280
    iput v1, v0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->endDay:I

    move/from16 v1, p21

    .line 281
    iput v1, v0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->endHour:I

    move/from16 v1, p22

    .line 282
    iput v1, v0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->endMinute:I

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 318
    iget-object v0, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDay()I
    .registers 2

    .line 414
    iget v0, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->endDay:I

    return v0
.end method

.method public getEndHour()I
    .registers 2

    .line 422
    iget v0, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->endHour:I

    return v0
.end method

.method public getEndMinute()I
    .registers 2

    .line 430
    iget v0, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->endMinute:I

    return v0
.end method

.method public getEndMonth()I
    .registers 2

    .line 406
    iget v0, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->endMonth:I

    return v0
.end method

.method public getEndTime()Ljava/lang/String;
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTimeL()J
    .registers 3

    .line 350
    iget-wide v0, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->endTimeL:J

    return-wide v0
.end method

.method public getEndYear()I
    .registers 2

    .line 398
    iget v0, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->endYear:I

    return v0
.end method

.method public getId()J
    .registers 3

    .line 286
    iget-wide v0, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->id:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .line 326
    iget-object v0, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDay()I
    .registers 2

    .line 374
    iget v0, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->startDay:I

    return v0
.end method

.method public getStartHour()I
    .registers 2

    .line 382
    iget v0, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->startHour:I

    return v0
.end method

.method public getStartMinute()I
    .registers 2

    .line 390
    iget v0, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->startMinute:I

    return v0
.end method

.method public getStartMonth()I
    .registers 2

    .line 366
    iget v0, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->startMonth:I

    return v0
.end method

.method public getStartTime()Ljava/lang/String;
    .registers 2

    .line 302
    iget-object v0, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTimeL()J
    .registers 3

    .line 342
    iget-wide v0, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->startTimeL:J

    return-wide v0
.end method

.method public getStartYear()I
    .registers 2

    .line 358
    iget v0, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->startYear:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 294
    iget-object v0, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 334
    iget-object v0, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 322
    iput-object p1, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->description:Ljava/lang/String;

    return-void
.end method

.method public setEndDay(I)V
    .registers 2

    .line 418
    iput p1, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->endDay:I

    return-void
.end method

.method public setEndHour(I)V
    .registers 2

    .line 426
    iput p1, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->endHour:I

    return-void
.end method

.method public setEndMinute(I)V
    .registers 2

    .line 434
    iput p1, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->endMinute:I

    return-void
.end method

.method public setEndMonth(I)V
    .registers 2

    .line 410
    iput p1, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->endMonth:I

    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .registers 2

    .line 314
    iput-object p1, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->endTime:Ljava/lang/String;

    return-void
.end method

.method public setEndTimeL(J)V
    .registers 3

    .line 354
    iput-wide p1, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->endTimeL:J

    return-void
.end method

.method public setEndYear(I)V
    .registers 2

    .line 402
    iput p1, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->endYear:I

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 290
    iput-wide p1, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->id:J

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .registers 2

    .line 330
    iput-object p1, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->location:Ljava/lang/String;

    return-void
.end method

.method public setStartDay(I)V
    .registers 2

    .line 378
    iput p1, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->startDay:I

    return-void
.end method

.method public setStartHour(I)V
    .registers 2

    .line 386
    iput p1, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->startHour:I

    return-void
.end method

.method public setStartMinute(I)V
    .registers 2

    .line 394
    iput p1, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->startMinute:I

    return-void
.end method

.method public setStartMonth(I)V
    .registers 2

    .line 370
    iput p1, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->startMonth:I

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .registers 2

    .line 306
    iput-object p1, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->startTime:Ljava/lang/String;

    return-void
.end method

.method public setStartTimeL(J)V
    .registers 3

    .line 346
    iput-wide p1, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->startTimeL:J

    return-void
.end method

.method public setStartYear(I)V
    .registers 2

    .line 362
    iput p1, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->startYear:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 298
    iput-object p1, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 338
    iput-object p1, p0, Lcom/keephealth/android/util/CalendarManager$CalendarEvent;->type:Ljava/lang/String;

    return-void
.end method

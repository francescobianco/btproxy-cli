.class public Lcom/keephealth/android/model/CalenderDataStruct;
.super Ljava/lang/Object;
.source "CalenderDataStruct.java"


# instance fields
.field public description:Ljava/lang/String;

.field public endTime:Ljava/lang/String;

.field public eventTitle:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field public startTime:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/keephealth/android/model/CalenderDataStruct;->eventTitle:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/keephealth/android/model/CalenderDataStruct;->startTime:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/keephealth/android/model/CalenderDataStruct;->endTime:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/keephealth/android/model/CalenderDataStruct;->description:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/keephealth/android/model/CalenderDataStruct;->location:Ljava/lang/String;

    .line 10
    iput-object p6, p0, Lcom/keephealth/android/model/CalenderDataStruct;->type:Ljava/lang/String;

    return-void
.end method

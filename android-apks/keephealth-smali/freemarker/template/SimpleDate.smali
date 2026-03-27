.class public Lfreemarker/template/SimpleDate;
.super Ljava/lang/Object;
.source "SimpleDate.java"

# interfaces
.implements Lfreemarker/template/TemplateDateModel;


# instance fields
.field private final date:Ljava/util/Date;

.field private final type:I


# direct methods
.method public constructor <init>(Ljava/sql/Date;)V
    .registers 3

    const/4 v0, 0x2

    .line 36
    invoke-direct {p0, p1, v0}, Lfreemarker/template/SimpleDate;-><init>(Ljava/util/Date;I)V

    return-void
.end method

.method public constructor <init>(Ljava/sql/Time;)V
    .registers 3

    const/4 v0, 0x1

    .line 44
    invoke-direct {p0, p1, v0}, Lfreemarker/template/SimpleDate;-><init>(Ljava/util/Date;I)V

    return-void
.end method

.method public constructor <init>(Ljava/sql/Timestamp;)V
    .registers 3

    const/4 v0, 0x3

    .line 52
    invoke-direct {p0, p1, v0}, Lfreemarker/template/SimpleDate;-><init>(Ljava/util/Date;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;I)V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_a

    .line 63
    iput-object p1, p0, Lfreemarker/template/SimpleDate;->date:Ljava/util/Date;

    .line 64
    iput p2, p0, Lfreemarker/template/SimpleDate;->type:I

    return-void

    .line 61
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "date == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAsDate()Ljava/util/Date;
    .registers 2

    .line 68
    iget-object v0, p0, Lfreemarker/template/SimpleDate;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getDateType()I
    .registers 2

    .line 72
    iget v0, p0, Lfreemarker/template/SimpleDate;->type:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lfreemarker/template/SimpleDate;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

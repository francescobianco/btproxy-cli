.class Lfreemarker/core/BuiltInsForNumbers$number_to_dateBI;
.super Lfreemarker/core/BuiltInForNumber;
.source "BuiltInsForNumbers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForNumbers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "number_to_dateBI"
.end annotation


# instance fields
.field private final dateType:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 242
    invoke-direct {p0}, Lfreemarker/core/BuiltInForNumber;-><init>()V

    .line 243
    iput p1, p0, Lfreemarker/core/BuiltInsForNumbers$number_to_dateBI;->dateType:I

    return-void
.end method


# virtual methods
.method calculateResult(Ljava/lang/Number;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 249
    new-instance p2, Lfreemarker/template/SimpleDate;

    new-instance v0, Ljava/util/Date;

    # invokes: Lfreemarker/core/BuiltInsForNumbers;->safeToLong(Ljava/lang/Number;)J
    invoke-static {p1}, Lfreemarker/core/BuiltInsForNumbers;->access$200(Ljava/lang/Number;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iget p1, p0, Lfreemarker/core/BuiltInsForNumbers$number_to_dateBI;->dateType:I

    invoke-direct {p2, v0, p1}, Lfreemarker/template/SimpleDate;-><init>(Ljava/util/Date;I)V

    return-object p2
.end method

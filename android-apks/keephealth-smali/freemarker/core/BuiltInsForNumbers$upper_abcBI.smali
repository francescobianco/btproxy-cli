.class Lfreemarker/core/BuiltInsForNumbers$upper_abcBI;
.super Lfreemarker/core/BuiltInsForNumbers$abcBI;
.source "BuiltInsForNumbers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForNumbers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "upper_abcBI"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, v0}, Lfreemarker/core/BuiltInsForNumbers$abcBI;-><init>(Lfreemarker/core/BuiltInsForNumbers$1;)V

    return-void
.end method


# virtual methods
.method protected toABC(I)Ljava/lang/String;
    .registers 2

    .line 79
    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->toUpperABC(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

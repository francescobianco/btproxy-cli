.class Lfreemarker/core/BuiltInsForSequences$reverseBI;
.super Lfreemarker/core/BuiltInForSequence;
.source "BuiltInsForSequences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "reverseBI"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/BuiltInsForSequences$reverseBI$ReverseSequence;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 272
    invoke-direct {p0}, Lfreemarker/core/BuiltInForSequence;-><init>()V

    return-void
.end method


# virtual methods
.method calculateResult(Lfreemarker/template/TemplateSequenceModel;)Lfreemarker/template/TemplateModel;
    .registers 3

    .line 291
    instance-of v0, p1, Lfreemarker/core/BuiltInsForSequences$reverseBI$ReverseSequence;

    if-eqz v0, :cond_b

    .line 292
    check-cast p1, Lfreemarker/core/BuiltInsForSequences$reverseBI$ReverseSequence;

    # getter for: Lfreemarker/core/BuiltInsForSequences$reverseBI$ReverseSequence;->seq:Lfreemarker/template/TemplateSequenceModel;
    invoke-static {p1}, Lfreemarker/core/BuiltInsForSequences$reverseBI$ReverseSequence;->access$900(Lfreemarker/core/BuiltInsForSequences$reverseBI$ReverseSequence;)Lfreemarker/template/TemplateSequenceModel;

    move-result-object p1

    return-object p1

    .line 294
    :cond_b
    new-instance v0, Lfreemarker/core/BuiltInsForSequences$reverseBI$ReverseSequence;

    invoke-direct {v0, p1}, Lfreemarker/core/BuiltInsForSequences$reverseBI$ReverseSequence;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    return-object v0
.end method

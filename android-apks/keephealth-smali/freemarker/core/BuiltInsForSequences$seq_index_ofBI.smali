.class Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;
.super Lfreemarker/core/BuiltInWithDirectCallOptimization;
.source "BuiltInsForSequences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "seq_index_ofBI"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;
    }
.end annotation


# instance fields
.field private findFirst:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    .line 525
    invoke-direct {p0}, Lfreemarker/core/BuiltInWithDirectCallOptimization;-><init>()V

    .line 526
    iput-boolean p1, p0, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;->findFirst:Z

    return-void
.end method

.method static synthetic access$1300(Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;)Z
    .registers 1

    .line 371
    iget-boolean p0, p0, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;->findFirst:Z

    return p0
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 532
    new-instance v0, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;-><init>(Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;Lfreemarker/core/Environment;Lfreemarker/core/BuiltInsForSequences$1;)V

    return-object v0
.end method

.method protected setDirectlyCalled()V
    .registers 2

    .line 375
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0}, Lfreemarker/core/Expression;->enableLazilyGeneratedResult()V

    return-void
.end method

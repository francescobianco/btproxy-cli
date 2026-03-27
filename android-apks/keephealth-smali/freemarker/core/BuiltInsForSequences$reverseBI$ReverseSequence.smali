.class Lfreemarker/core/BuiltInsForSequences$reverseBI$ReverseSequence;
.super Ljava/lang/Object;
.source "BuiltInsForSequences.java"

# interfaces
.implements Lfreemarker/template/TemplateSequenceModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences$reverseBI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReverseSequence"
.end annotation


# instance fields
.field private final seq:Lfreemarker/template/TemplateSequenceModel;


# direct methods
.method constructor <init>(Lfreemarker/template/TemplateSequenceModel;)V
    .registers 2

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p1, p0, Lfreemarker/core/BuiltInsForSequences$reverseBI$ReverseSequence;->seq:Lfreemarker/template/TemplateSequenceModel;

    return-void
.end method

.method static synthetic access$900(Lfreemarker/core/BuiltInsForSequences$reverseBI$ReverseSequence;)Lfreemarker/template/TemplateSequenceModel;
    .registers 1

    .line 273
    iget-object p0, p0, Lfreemarker/core/BuiltInsForSequences$reverseBI$ReverseSequence;->seq:Lfreemarker/template/TemplateSequenceModel;

    return-object p0
.end method


# virtual methods
.method public get(I)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$reverseBI$ReverseSequence;->seq:Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    invoke-interface {v0, v1}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$reverseBI$ReverseSequence;->seq:Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v0

    return v0
.end method

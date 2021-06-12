.class final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StszSampleSizeBox"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/google/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V
    .locals 1

    .line 1316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1317
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1318
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 1319
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->a:I

    .line 1320
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1325
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 1330
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->a:I

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 1

    .line 1335
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

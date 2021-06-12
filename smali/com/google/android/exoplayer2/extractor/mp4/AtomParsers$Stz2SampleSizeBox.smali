.class final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;
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
    name = "Stz2SampleSizeBox"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V
    .locals 1

    .line 1353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1354
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->a:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1355
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->a:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 1356
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->a:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->c:I

    .line 1357
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->a:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1362
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->b:I

    return v0
.end method

.method public b()I
    .locals 2

    .line 1367
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->a:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->g()I

    move-result v0

    return v0

    .line 1369
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->c:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 1370
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->a:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->h()I

    move-result v0

    return v0

    .line 1373
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 1375
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->a:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->g()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->e:I

    .line 1377
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->e:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0

    .line 1380
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->e:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

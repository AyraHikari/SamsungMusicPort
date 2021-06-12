.class final Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
.super Lcom/google/android/exoplayer2/extractor/mp4/Atom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/Atom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LeafAtom"
.end annotation


# instance fields
.field public final aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;-><init>(I)V

    .line 172
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method

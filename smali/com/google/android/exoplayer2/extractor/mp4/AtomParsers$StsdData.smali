.class final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StsdData"
.end annotation


# instance fields
.field public final a:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

.field public b:Lcom/google/android/exoplayer2/Format;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1279
    new-array p1, p1, [Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->a:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    const/4 p1, 0x0

    .line 1280
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->d:I

    return-void
.end method

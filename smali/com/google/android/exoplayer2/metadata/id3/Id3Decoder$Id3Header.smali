.class final Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Id3Header"
.end annotation


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:I


# direct methods
.method public constructor <init>(IZI)V
    .locals 0

    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    iput p1, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->a:I

    .line 784
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->b:Z

    .line 785
    iput p3, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->c:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I
    .locals 0

    .line 776
    iget p0, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->a:I

    return p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I
    .locals 0

    .line 776
    iget p0, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->c:I

    return p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)Z
    .locals 0

    .line 776
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->b:Z

    return p0
.end method

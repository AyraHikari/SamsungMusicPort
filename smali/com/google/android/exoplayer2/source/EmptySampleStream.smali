.class public final Lcom/google/android/exoplayer2/source/EmptySampleStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 0

    const/4 p1, 0x4

    .line 41
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->a_(I)V

    const/4 p1, -0x4

    return p1
.end method

.method public a_(J)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

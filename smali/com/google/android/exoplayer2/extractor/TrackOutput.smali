.class public interface abstract Lcom/google/android/exoplayer2/extractor/TrackOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract a(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
.end method

.method public abstract a(Lcom/google/android/exoplayer2/Format;)V
.end method

.method public abstract a(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
.end method

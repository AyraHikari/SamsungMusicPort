.class public interface abstract Lcom/google/android/exoplayer2/extractor/Extractor;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract a(JJ)V
.end method

.method public abstract a(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
.end method

.method public abstract a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract c()V
.end method

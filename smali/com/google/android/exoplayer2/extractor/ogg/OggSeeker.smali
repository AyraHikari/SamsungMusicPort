.class interface abstract Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(J)J
.end method

.method public abstract a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract c()Lcom/google/android/exoplayer2/extractor/SeekMap;
.end method

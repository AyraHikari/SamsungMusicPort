.class public interface abstract Lcom/google/android/exoplayer2/source/chunk/ChunkSource;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(JLjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract a(JLcom/google/android/exoplayer2/SeekParameters;)J
.end method

.method public abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V
.end method

.method public abstract a(Lcom/google/android/exoplayer2/source/chunk/MediaChunk;JJLcom/google/android/exoplayer2/source/chunk/ChunkHolder;)V
.end method

.method public abstract a(Lcom/google/android/exoplayer2/source/chunk/Chunk;ZLjava/lang/Exception;)Z
.end method

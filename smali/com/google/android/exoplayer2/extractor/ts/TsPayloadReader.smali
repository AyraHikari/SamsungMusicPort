.class public interface abstract Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;,
        Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;,
        Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;,
        Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;
    }
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
.end method

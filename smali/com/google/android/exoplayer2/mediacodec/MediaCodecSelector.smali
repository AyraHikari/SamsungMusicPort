.class public interface abstract Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->a:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

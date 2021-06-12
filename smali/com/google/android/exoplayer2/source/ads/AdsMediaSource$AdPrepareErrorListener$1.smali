.class Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/IOException;

.field final synthetic b:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;Ljava/io/IOException;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener$1;->b:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener$1;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 595
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener$1;->b:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;->a:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->b(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener$1;->b:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;->a(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener$1;->b:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;->b(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener$1;->a:Ljava/io/IOException;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/ads/AdsLoader;->a(IILjava/io/IOException;)V

    return-void
.end method

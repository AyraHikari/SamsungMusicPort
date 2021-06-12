.class final Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

.field private final b:Landroid/os/Handler;

.field private volatile c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->a:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 482
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->c:Z

    .line 483
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

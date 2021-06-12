.class Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

.field final synthetic b:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->b:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->a:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 354
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->a:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->b:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v1, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->b:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;->b(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

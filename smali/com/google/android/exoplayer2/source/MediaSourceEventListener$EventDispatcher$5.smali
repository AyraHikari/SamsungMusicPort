.class Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->c(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

.field final synthetic b:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;

.field final synthetic c:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

.field final synthetic d:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$5;->d:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$5;->a:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$5;->b:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$5;->c:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 530
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$5;->a:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$5;->d:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v1, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$5;->d:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$5;->b:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$5;->c:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;->c(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    return-void
.end method

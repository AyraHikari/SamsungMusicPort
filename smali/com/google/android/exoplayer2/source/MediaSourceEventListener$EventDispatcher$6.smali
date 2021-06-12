.class Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

.field final synthetic b:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;

.field final synthetic c:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

.field final synthetic d:Ljava/io/IOException;

.field final synthetic e:Z

.field final synthetic f:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;->f:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;->a:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;->b:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;->c:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;->d:Ljava/io/IOException;

    iput-boolean p6, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 612
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;->a:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;->f:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v1, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;->f:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;->b:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;->c:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;->d:Ljava/io/IOException;

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;->e:Z

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;->a(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

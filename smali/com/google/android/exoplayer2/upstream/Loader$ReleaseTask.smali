.class final Lcom/google/android/exoplayer2/upstream/Loader$ReleaseTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReleaseTask"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)V
    .locals 0

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$ReleaseTask;->a:Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$ReleaseTask;->a:Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;->g()V

    return-void
.end method

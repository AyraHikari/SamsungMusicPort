.class Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$1;->a:Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$1;->a:Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->a(Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;)V

    return-void
.end method

.class Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;[Lcom/google/android/exoplayer2/extractor/Extractor;ILcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;Lcom/google/android/exoplayer2/upstream/Allocator;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$2;->a:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$2;->a:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->b(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$2;->a:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->c(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$2;->a:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->a(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    :cond_0
    return-void
.end method

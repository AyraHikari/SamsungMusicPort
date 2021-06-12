.class Lcom/google/android/exoplayer2/source/dash/DashMediaSource$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;IJLjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$2;->a:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$2;->a:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Z)V

    return-void
.end method

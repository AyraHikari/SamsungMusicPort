.class public final Lcom/google/android/exoplayer2/source/hls/DefaultHlsDataSourceFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsDataSourceFactory;->a:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsDataSourceFactory;->a:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->a()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object p1

    return-object p1
.end method

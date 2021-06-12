.class public final Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;->a:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;->b:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 60
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;->c:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;->b()Lcom/google/android/exoplayer2/upstream/DefaultDataSource;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/android/exoplayer2/upstream/DefaultDataSource;
    .locals 4

    .line 65
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;->b:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;->c:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->a()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource;)V

    return-object v0
.end method

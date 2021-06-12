.class public final Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;
.super Lcom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

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

.field private final c:I

.field private final d:I

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;)V"
        }
    .end annotation

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 54
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;IIZ)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;->a:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;->b:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 73
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;->c:I

    .line 74
    iput p4, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;->d:I

    .line 75
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;->e:Z

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;
    .locals 9

    .line 81
    new-instance v8, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;->b:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;->c:I

    iget v5, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;->d:I

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;->e:Z

    const/4 v2, 0x0

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    return-object v8
.end method

.method protected synthetic b(Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lcom/google/android/exoplayer2/upstream/HttpDataSource;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;->a(Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;

    move-result-object p1

    return-object p1
.end method

.class public abstract Lcom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseFactory"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;->a:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 1

    .line 166
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;->b()Lcom/google/android/exoplayer2/upstream/HttpDataSource;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/android/exoplayer2/upstream/HttpDataSource;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;->a:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;->b(Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lcom/google/android/exoplayer2/upstream/HttpDataSource;

    move-result-object v0

    return-object v0
.end method

.method protected abstract b(Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lcom/google/android/exoplayer2/upstream/HttpDataSource;
.end method

.class public final Lcom/google/android/exoplayer2/upstream/ParsingLoadable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Loadable;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field public final b:I

.field private final c:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final d:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private volatile e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile f:Z

.field private volatile g:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Landroid/net/Uri;",
            "I",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+TT;>;)V"
        }
    .end annotation

    .line 91
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 v1, 0x3

    invoke-direct {v0, p2, v1}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;I)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;",
            "I",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+TT;>;)V"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->c:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 107
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->a:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 108
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->b:I

    .line 109
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->d:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->f:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->f:Z

    return v0
.end method

.method public final c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->c:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->a:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 145
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->b()V

    .line 146
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->d:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->c:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/DataSource;->b()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;->b(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->e:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->a()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->g:J

    .line 149
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v1

    .line 148
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->g:J

    .line 149
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method public final d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public e()J
    .locals 2

    .line 126
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->g:J

    return-wide v0
.end method

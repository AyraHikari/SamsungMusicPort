.class public final Lcom/google/android/exoplayer2/upstream/DefaultDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


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

.field private final c:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private d:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private e:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private f:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private g:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private h:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private i:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private j:Lcom/google/android/exoplayer2/upstream/DataSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ")V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->a:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->b:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 119
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/DataSource;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->c:Lcom/google/android/exoplayer2/upstream/DataSource;

    return-void
.end method

.method private c()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->d:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->b:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->d:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->d:Lcom/google/android/exoplayer2/upstream/DataSource;

    return-object v0
.end method

.method private d()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->e:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->b:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/AssetDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->e:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->e:Lcom/google/android/exoplayer2/upstream/DataSource;

    return-object v0
.end method

.method private e()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->f:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->b:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->f:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->f:Lcom/google/android/exoplayer2/upstream/DataSource;

    return-object v0
.end method

.method private f()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->g:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.google.android.exoplayer2.ext.rtmp.RtmpDataSource"

    .line 196
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 197
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/DataSource;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->g:Lcom/google/android/exoplayer2/upstream/DataSource;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 204
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating RTMP extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    .line 201
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->g:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->c:Lcom/google/android/exoplayer2/upstream/DataSource;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->g:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->g:Lcom/google/android/exoplayer2/upstream/DataSource;

    return-object v0
.end method

.method private g()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->h:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->h:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->h:Lcom/google/android/exoplayer2/upstream/DataSource;

    return-object v0
.end method

.method private h()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->i:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->b:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->i:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->i:Lcom/google/android/exoplayer2/upstream/DataSource;

    return-object v0
.end method


# virtual methods
.method public a([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->j:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/DataSource;->a([BII)I

    move-result p1

    return p1
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->j:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 126
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->a:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 128
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->d()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->j:Lcom/google/android/exoplayer2/upstream/DataSource;

    goto :goto_1

    .line 131
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->c()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->j:Lcom/google/android/exoplayer2/upstream/DataSource;

    goto :goto_1

    :cond_2
    const-string v1, "asset"

    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->d()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->j:Lcom/google/android/exoplayer2/upstream/DataSource;

    goto :goto_1

    :cond_3
    const-string v1, "content"

    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 136
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->e()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->j:Lcom/google/android/exoplayer2/upstream/DataSource;

    goto :goto_1

    :cond_4
    const-string v1, "rtmp"

    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 138
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->f()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->j:Lcom/google/android/exoplayer2/upstream/DataSource;

    goto :goto_1

    :cond_5
    const-string v1, "data"

    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 140
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->g()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->j:Lcom/google/android/exoplayer2/upstream/DataSource;

    goto :goto_1

    :cond_6
    const-string v1, "rawresource"

    .line 141
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 142
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->h()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->j:Lcom/google/android/exoplayer2/upstream/DataSource;

    goto :goto_1

    .line 144
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->c:Lcom/google/android/exoplayer2/upstream/DataSource;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->j:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 147
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->j:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/DataSource;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->j:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->j:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/DataSource;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->j:Lcom/google/android/exoplayer2/upstream/DataSource;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->j:Lcom/google/android/exoplayer2/upstream/DataSource;

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->j:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->j:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->b()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

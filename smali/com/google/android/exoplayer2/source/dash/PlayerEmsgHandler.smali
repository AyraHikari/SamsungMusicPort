.class public final Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;,
        Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;,
        Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private final b:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

.field private final c:Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private g:Z

.field private h:J

.field private i:J

.field private j:J

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;Lcom/google/android/exoplayer2/upstream/Allocator;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->f:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 107
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->b:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

    .line 108
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->a:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 110
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->e:Ljava/util/TreeMap;

    .line 111
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->d:Landroid/os/Handler;

    .line 112
    new-instance p1, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->c:Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 113
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->i:J

    .line 114
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->j:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)J
    .locals 2

    .line 60
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->c(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;)Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->c:Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;

    return-object p0
.end method

.method private a(JJ)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->e:Ljava/util/TreeMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->e:Ljava/util/TreeMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->e:Ljava/util/TreeMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "urn:mpeg:dash:event:2012"

    .line 203
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "1"

    .line 204
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "2"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "3"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;)Landroid/os/Handler;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->d:Landroid/os/Handler;

    return-object p0
.end method

.method private b(J)Ljava/util/Map$Entry;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->e:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)Z
    .locals 0

    .line 60
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->d(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)Z

    move-result p0

    return p0
.end method

.method private static c(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)J
    .locals 2

    .line 294
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->f:[B

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->g(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x1

    .line 252
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->g:Z

    .line 253
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->f()V

    return-void
.end method

.method private d()V
    .locals 5

    .line 261
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->e:Ljava/util/TreeMap;

    .line 262
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 263
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 265
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 266
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->f:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->h:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 267
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static d(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)Z
    .locals 4

    .line 304
    iget-wide v0, p0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->c:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private e()V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->b:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->h:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;->a(J)V

    return-void
.end method

.method private f()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->b:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;->b()V

    return-void
.end method

.method private g()V
    .locals 4

    .line 282
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->j:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->j:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->i:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->k:Z

    .line 288
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->i:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->j:J

    .line 289
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->b:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;->a()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;
    .locals 3

    .line 209
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    new-instance v1, Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->a:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;-><init>(Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;Lcom/google/android/exoplayer2/source/SampleQueue;)V

    return-object v0
.end method

.method public a(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;)V
    .locals 2

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->k:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 124
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->h:J

    .line 125
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->f:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 126
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->d()V

    return-void
.end method

.method a(J)Z
    .locals 5

    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->f:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 133
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->k:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 137
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->g:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->f:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->h:J

    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->b(J)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 146
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p1, v3, p1

    if-gez p1, :cond_3

    .line 148
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->h:J

    .line 149
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->e()V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 155
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->g()V

    :cond_4
    return v2
.end method

.method a(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z
    .locals 7

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->f:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 172
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->k:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 175
    :cond_1
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->i:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->i:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->g:J

    cmp-long p1, v3, v5

    if-gez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 181
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->g()V

    return v2

    :cond_3
    return v1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->l:Z

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method b(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V
    .locals 4

    .line 193
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->i:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->h:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->i:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 194
    :cond_0
    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->h:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->i:J

    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 220
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->l:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 223
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 228
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;

    .line 229
    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;->a:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;->b:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->a(JJ)V

    return v1

    .line 225
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->c()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

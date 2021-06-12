.class public final Lcom/google/android/exoplayer2/text/TextRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/android/exoplayer2/text/TextOutput;

.field private final c:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

.field private final d:Lcom/google/android/exoplayer2/FormatHolder;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Lcom/google/android/exoplayer2/Format;

.field private i:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

.field private j:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

.field private k:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

.field private l:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

.field private m:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/text/TextOutput;Landroid/os/Looper;)V
    .locals 1

    .line 97
    sget-object v0, Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;->a:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/text/TextRenderer;-><init>(Lcom/google/android/exoplayer2/text/TextOutput;Landroid/os/Looper;Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/text/TextOutput;Landroid/os/Looper;Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;)V
    .locals 1

    const/4 v0, 0x3

    .line 111
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 112
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/text/TextOutput;

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->b:Lcom/google/android/exoplayer2/text/TextOutput;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 113
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->a:Landroid/os/Handler;

    .line 114
    iput-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->c:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

    .line 115
    new-instance p1, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/FormatHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->d:Lcom/google/android/exoplayer2/FormatHolder;

    return-void
.end method

.method private A()V
    .locals 1

    .line 308
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/TextRenderer;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 303
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/TextRenderer;->b(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->b:Lcom/google/android/exoplayer2/text/TextOutput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/text/TextOutput;->a(Ljava/util/List;)V

    return-void
.end method

.method private w()V
    .locals 2

    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->j:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    const/4 v1, -0x1

    .line 270
    iput v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->m:I

    .line 271
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->k:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->k:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->e()V

    .line 273
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->k:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->l:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->l:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->e()V

    .line 277
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->l:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    :cond_1
    return-void
.end method

.method private x()V
    .locals 1

    .line 282
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->w()V

    .line 283
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->i:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->d()V

    const/4 v0, 0x0

    .line 284
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->i:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    const/4 v0, 0x0

    .line 285
    iput v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->g:I

    return-void
.end method

.method private y()V
    .locals 2

    .line 289
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->x()V

    .line 290
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->c:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->h:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;->b(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->i:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    return-void
.end method

.method private z()J
    .locals 2

    .line 294
    iget v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->m:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->k:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 295
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->b()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->k:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    iget v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->m:I

    .line 296
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->a(I)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_1
    return-wide v0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/Format;)I
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->c:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 121
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/text/TextRenderer;->a(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmInitData;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1

    .line 122
    :cond_1
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public a(JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 154
    iget-boolean p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->f:Z

    if-eqz p3, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->l:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    if-nez p3, :cond_1

    .line 159
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->i:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {p3, p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->a(J)V

    .line 161
    :try_start_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->i:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->b()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    iput-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->l:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 163
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->s()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 167
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->a_()I

    move-result p3

    const/4 p4, 0x2

    if-eq p3, p4, :cond_2

    return-void

    .line 172
    :cond_2
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->k:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    .line 175
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->z()J

    move-result-wide v2

    const/4 p3, 0x0

    :goto_1
    cmp-long v2, v2, p1

    if-gtz v2, :cond_4

    .line 177
    iget p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->m:I

    add-int/2addr p3, v1

    iput p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->m:I

    .line 178
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->z()J

    move-result-wide v2

    const/4 p3, 0x1

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    .line 183
    :cond_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->l:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 184
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->l:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez p3, :cond_8

    .line 185
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->z()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-nez v2, :cond_8

    .line 186
    iget v2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->g:I

    if-ne v2, p4, :cond_5

    .line 187
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->y()V

    goto :goto_2

    .line 189
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->w()V

    .line 190
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->f:Z

    goto :goto_2

    .line 193
    :cond_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->l:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    iget-wide v4, v2, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->a:J

    cmp-long v2, v4, p1

    if-gtz v2, :cond_8

    .line 195
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->k:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz p3, :cond_7

    .line 196
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->k:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->e()V

    .line 198
    :cond_7
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->l:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    iput-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->k:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 199
    iput-object v3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->l:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 200
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->k:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->a(J)I

    move-result p3

    iput p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->m:I

    const/4 p3, 0x1

    :cond_8
    :goto_2
    if-eqz p3, :cond_9

    .line 207
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->k:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->b(J)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/TextRenderer;->a(Ljava/util/List;)V

    .line 210
    :cond_9
    iget p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->g:I

    if-ne p1, p4, :cond_a

    return-void

    .line 215
    :cond_a
    :goto_3
    :try_start_1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->e:Z

    if-nez p1, :cond_f

    .line 216
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->j:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    if-nez p1, :cond_b

    .line 217
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->i:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->j:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    .line 218
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->j:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    if-nez p1, :cond_b

    return-void

    .line 222
    :cond_b
    iget p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->g:I

    if-ne p1, v1, :cond_c

    .line 223
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->j:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->a_(I)V

    .line 224
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->i:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    iget-object p2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->j:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->a(Ljava/lang/Object;)V

    .line 225
    iput-object v3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->j:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    .line 226
    iput p4, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->g:I

    return-void

    .line 230
    :cond_c
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->d:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object p2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->j:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/text/TextRenderer;->a(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p1

    const/4 p2, -0x4

    if-ne p1, p2, :cond_e

    .line 232
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->j:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->c()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 233
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->e:Z

    goto :goto_4

    .line 235
    :cond_d
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->j:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    iget-object p2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->d:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object p2, p2, Lcom/google/android/exoplayer2/FormatHolder;->a:Lcom/google/android/exoplayer2/Format;

    iget-wide p2, p2, Lcom/google/android/exoplayer2/Format;->w:J

    iput-wide p2, p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->d:J

    .line 236
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->j:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->h()V

    .line 238
    :goto_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->i:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    iget-object p2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->j:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->a(Ljava/lang/Object;)V

    .line 239
    iput-object v3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->j:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
    :try_end_1
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_e
    const/4 p2, -0x3

    if-ne p1, p2, :cond_a

    return-void

    :cond_f
    return-void

    :catch_1
    move-exception p1

    .line 245
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->s()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method protected a(JZ)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->A()V

    const/4 p1, 0x0

    .line 142
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->e:Z

    .line 143
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->f:Z

    .line 144
    iget p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->g:I

    if-eqz p1, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->y()V

    goto :goto_0

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->w()V

    .line 148
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->i:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->c()V

    :goto_0
    return-void
.end method

.method protected a([Lcom/google/android/exoplayer2/Format;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 p2, 0x0

    .line 131
    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->h:Lcom/google/android/exoplayer2/Format;

    .line 132
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->i:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 133
    iput p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->g:I

    goto :goto_0

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->c:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

    iget-object p2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->h:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;->b(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->i:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 314
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 316
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/TextRenderer;->b(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    .line 319
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method protected p()V
    .locals 1

    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->h:Lcom/google/android/exoplayer2/Format;

    .line 252
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->A()V

    .line 253
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->x()V

    return-void
.end method

.method public u()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public v()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->f:Z

    return v0
.end method

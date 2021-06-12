.class public Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

.field private b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

.field private c:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->UNDEFINED:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    .line 231
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->TRACK:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    .line 233
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->UNDEFINED_KEYWORD:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    const-string v0, ""

    .line 239
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->ARTIST_NAME:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne v0, v1, :cond_0

    .line 301
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_TITLE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne p1, v0, :cond_2

    .line 302
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_PLUS_ARTIST:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_TITLE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne v0, v1, :cond_1

    .line 305
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->ARTIST_NAME:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne p1, v0, :cond_2

    .line 306
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_PLUS_ARTIST:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    goto :goto_0

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->UNDEFINED_KEYWORD:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne v0, v1, :cond_2

    .line 309
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$1;->a:[I

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 330
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 327
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 324
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 321
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->g:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;)Ljava/lang/String;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;)Ljava/lang/String;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;)Ljava/lang/String;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;)Ljava/lang/String;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    return-object p0
.end method

.method static synthetic h(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;)Z
    .locals 0

    .line 225
    iget-boolean p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->h:Z

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;
    .locals 0

    .line 246
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->match(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    return-object p0
.end method

.method public a(Z)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;
    .locals 0

    .line 283
    iput-boolean p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->h:Z

    return-object p0
.end method

.method public a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;
    .locals 2

    .line 288
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->b()V

    .line 289
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;
    .locals 0

    .line 251
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->access$1000(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;
    .locals 1

    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 259
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->d:Ljava/lang/String;

    .line 260
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->ARTIST_NAME:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;)V

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;
    .locals 1

    .line 265
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 268
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->e:Ljava/lang/String;

    .line 269
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_TITLE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;)V

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;
    .locals 1

    .line 274
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 277
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->f:Ljava/lang/String;

    .line 278
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->UNDEFINED_KEYWORD:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;)V

    return-object p0
.end method

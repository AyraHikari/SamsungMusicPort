.class public Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

.field private b:Lcom/samsung/android/app/music/model/milksearch/SearchList;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/StationData;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)V
    .locals 1

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->c:Ljava/util/List;

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->d:Ljava/util/List;

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->e:Ljava/util/List;

    const/4 v0, 0x0

    .line 233
    iput v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->g:I

    .line 239
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;)I
    .locals 0

    .line 220
    iget p0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->g:I

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;)Ljava/lang/String;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object v0

    .line 274
    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$1;->a:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 282
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->f:I

    goto :goto_0

    .line 279
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->f:I

    goto :goto_0

    .line 276
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->f:I

    .line 285
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->b()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;)Lcom/samsung/android/app/music/model/milksearch/SearchList;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->b:Lcom/samsung/android/app/music/model/milksearch/SearchList;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;)Ljava/util/List;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;)Ljava/util/List;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;)Ljava/util/List;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;)I
    .locals 0

    .line 220
    iget p0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->f:I

    return p0
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    return-object p0
.end method

.method public a(Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;)Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Lcom/samsung/android/app/music/bixby/v2/result/data/StationData;)Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;)Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Lcom/samsung/android/app/music/model/milksearch/SearchList;)Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->b:Lcom/samsung/android/app/music/model/milksearch/SearchList;

    return-object p0
.end method

.method public a()Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;
    .locals 1

    .line 268
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->c()V

    .line 269
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;-><init>(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;)V

    return-object v0
.end method

.method protected b()V
    .locals 4

    .line 289
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    move-result-object v0

    .line 290
    iget v1, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->f:I

    if-nez v1, :cond_2

    .line 291
    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->LOCAL:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    if-ne v0, v1, :cond_0

    const-string v0, "Music_8_5"

    .line 292
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->h:Ljava/lang/String;

    goto/16 :goto_1

    .line 293
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->STORE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    if-ne v0, v1, :cond_17

    .line 294
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Music_8_6"

    .line 295
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->h:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1
    const-string v0, "Music_8_11"

    .line 297
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->h:Ljava/lang/String;

    goto/16 :goto_1

    .line 301
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object v1

    .line 302
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->d()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    move-result-object v2

    .line 303
    sget-object v3, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->LOCAL:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    if-eq v0, v3, :cond_f

    sget-object v3, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->UNDEFINED:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    if-ne v0, v3, :cond_3

    goto/16 :goto_0

    .line 325
    :cond_3
    sget-object v3, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->STORE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    if-ne v0, v3, :cond_17

    .line 326
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->TRACK:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne v1, v0, :cond_7

    .line 327
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_TITLE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne v2, v0, :cond_4

    const-string v0, "Music_8_17"

    .line 328
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->h:Ljava/lang/String;

    goto/16 :goto_1

    .line 329
    :cond_4
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_PLUS_ARTIST:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne v2, v0, :cond_5

    const-string v0, "Music_8_18"

    .line 330
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->h:Ljava/lang/String;

    goto/16 :goto_1

    .line 331
    :cond_5
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->ARTIST_NAME:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne v2, v0, :cond_6

    const-string v0, "Music_8_19"

    .line 332
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->h:Ljava/lang/String;

    goto/16 :goto_1

    .line 333
    :cond_6
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->UNDEFINED_KEYWORD:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne v2, v0, :cond_17

    const-string v0, "Music_8_17"

    .line 334
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->h:Ljava/lang/String;

    goto/16 :goto_1

    .line 336
    :cond_7
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->ALBUM:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne v1, v0, :cond_b

    .line 337
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_TITLE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne v2, v0, :cond_8

    const-string v0, "Music_8_29"

    .line 338
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->h:Ljava/lang/String;

    goto/16 :goto_1

    .line 339
    :cond_8
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_PLUS_ARTIST:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne v2, v0, :cond_9

    const-string v0, "Music_8_30"

    .line 340
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->h:Ljava/lang/String;

    goto/16 :goto_1

    .line 341
    :cond_9
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->ARTIST_NAME:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne v2, v0, :cond_a

    const-string v0, "Music_8_31"

    .line 342
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->h:Ljava/lang/String;

    goto/16 :goto_1

    .line 343
    :cond_a
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->UNDEFINED_KEYWORD:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne v2, v0, :cond_17

    const-string v0, "Music_8_29"

    .line 344
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->h:Ljava/lang/String;

    goto/16 :goto_1

    .line 346
    :cond_b
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->STATION:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne v1, v0, :cond_17

    .line 347
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_TITLE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne v2, v0, :cond_c

    const-string v0, "Music_8_37"

    .line 348
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->h:Ljava/lang/String;

    goto/16 :goto_1

    .line 349
    :cond_c
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_PLUS_ARTIST:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne v2, v0, :cond_d

    const-string v0, "Music_8_37"

    .line 350
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->h:Ljava/lang/String;

    goto/16 :goto_1

    .line 351
    :cond_d
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->ARTIST_NAME:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne v2, v0, :cond_e

    const-string v0, "Music_8_37"

    .line 352
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->h:Ljava/lang/String;

    goto :goto_1

    .line 353
    :cond_e
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->UNDEFINED_KEYWORD:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne v2, v0, :cond_17

    const-string v0, "Music_8_37"

    .line 354
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->h:Ljava/lang/String;

    goto :goto_1

    .line 304
    :cond_f
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->TRACK:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne v1, v0, :cond_13

    .line 305
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_TITLE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne v2, v0, :cond_10

    const-string v0, "Music_8_12"

    .line 306
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->h:Ljava/lang/String;

    goto :goto_1

    .line 307
    :cond_10
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_PLUS_ARTIST:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne v2, v0, :cond_11

    const-string v0, "Music_8_13"

    .line 308
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->h:Ljava/lang/String;

    goto :goto_1

    .line 309
    :cond_11
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->ARTIST_NAME:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne v2, v0, :cond_12

    const-string v0, "Music_8_14"

    .line 310
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->h:Ljava/lang/String;

    goto :goto_1

    .line 311
    :cond_12
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->UNDEFINED_KEYWORD:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne v2, v0, :cond_17

    const-string v0, "Music_8_12"

    .line 312
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->h:Ljava/lang/String;

    goto :goto_1

    .line 314
    :cond_13
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->ALBUM:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne v1, v0, :cond_17

    .line 315
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_TITLE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne v2, v0, :cond_14

    const-string v0, "Music_8_20"

    .line 316
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->h:Ljava/lang/String;

    goto :goto_1

    .line 317
    :cond_14
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_PLUS_ARTIST:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne v2, v0, :cond_15

    const-string v0, "Music_8_22"

    .line 318
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->h:Ljava/lang/String;

    goto :goto_1

    .line 319
    :cond_15
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->ARTIST_NAME:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne v2, v0, :cond_16

    const-string v0, "Music_8_23"

    .line 320
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->h:Ljava/lang/String;

    goto :goto_1

    .line 321
    :cond_16
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->UNDEFINED_KEYWORD:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne v2, v0, :cond_17

    const-string v0, "Music_8_20"

    .line 322
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->h:Ljava/lang/String;

    :cond_17
    :goto_1
    return-void
.end method

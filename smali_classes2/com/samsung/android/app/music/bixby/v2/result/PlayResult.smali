.class public final Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;
.super Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;
.source "SourceFile"


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

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->g:Z

    .line 44
    iput-boolean p1, p0, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->h:Z

    .line 46
    iput p1, p0, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->i:I

    .line 50
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    const-string p1, "actionType"

    const-string p2, "Play"

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "inputData"

    .line 52
    invoke-static {p3}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->i()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;)Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 245
    invoke-virtual {p0}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->g()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object v0

    const-string v1, "resultCount"

    .line 246
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 247
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 248
    :goto_0
    new-instance v3, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;

    .line 249
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v1, v0}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;-><init>(ILjava/lang/String;Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)V

    const-string v1, "searchType"

    .line 250
    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    invoke-virtual {p0}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->a()Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->a(Lcom/samsung/android/app/music/model/milksearch/SearchList;)V

    .line 252
    invoke-virtual {p0}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->a(Ljava/util/List;)V

    .line 253
    invoke-virtual {p0}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->b(Ljava/util/List;)V

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->d()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->c(Ljava/util/List;)V

    return-object v3
.end method

.method public static a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;Z)Ljava/lang/String;
    .locals 3

    const-string v0, "Music_0_0"

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    move-result-object v1

    if-nez p1, :cond_3

    .line 172
    sget-object p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->LOCAL:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    if-eq v1, p0, :cond_2

    sget-object p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->UNDEFINED:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    if-ne v1, p0, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    sget-object p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->STORE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    if-ne v1, p0, :cond_18

    .line 175
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string v0, "Music_1_7"

    goto/16 :goto_2

    :cond_1
    const-string v0, "Music_1_12"

    goto/16 :goto_2

    :cond_2
    :goto_0
    const-string v0, "Music_1_6"

    goto/16 :goto_2

    .line 182
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object p1

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->d()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    move-result-object p0

    .line 184
    sget-object v2, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->LOCAL:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    if-eq v1, v2, :cond_10

    sget-object v2, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->UNDEFINED:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    if-ne v1, v2, :cond_4

    goto/16 :goto_1

    .line 206
    :cond_4
    sget-object v2, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->STORE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    if-ne v1, v2, :cond_18

    .line 207
    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->TRACK:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne p1, v1, :cond_8

    .line 208
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_TITLE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne p0, p1, :cond_5

    const-string v0, "Music_1_19"

    goto/16 :goto_2

    .line 210
    :cond_5
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_PLUS_ARTIST:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne p0, p1, :cond_6

    const-string v0, "Music_1_19"

    goto/16 :goto_2

    .line 212
    :cond_6
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->ARTIST_NAME:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne p0, p1, :cond_7

    const-string v0, "Music_1_20"

    goto/16 :goto_2

    .line 214
    :cond_7
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->UNDEFINED_KEYWORD:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne p0, p1, :cond_18

    const-string v0, "Music_1_22"

    goto/16 :goto_2

    .line 217
    :cond_8
    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->ALBUM:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne p1, v1, :cond_c

    .line 218
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_TITLE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne p0, p1, :cond_9

    const-string v0, "Music_1_9"

    goto/16 :goto_2

    .line 220
    :cond_9
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_PLUS_ARTIST:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne p0, p1, :cond_a

    const-string v0, "Music_1_9"

    goto/16 :goto_2

    .line 222
    :cond_a
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->ARTIST_NAME:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne p0, p1, :cond_b

    const-string v0, "Music_1_9"

    goto/16 :goto_2

    .line 224
    :cond_b
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->UNDEFINED_KEYWORD:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne p0, p1, :cond_18

    const-string v0, "Music_1_9"

    goto/16 :goto_2

    .line 227
    :cond_c
    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->STATION:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne p1, v1, :cond_18

    .line 228
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_TITLE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne p0, p1, :cond_d

    const-string v0, "Music_1_11"

    goto :goto_2

    .line 230
    :cond_d
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_PLUS_ARTIST:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne p0, p1, :cond_e

    const-string v0, "Music_1_11"

    goto :goto_2

    .line 232
    :cond_e
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->ARTIST_NAME:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne p0, p1, :cond_f

    const-string v0, "Music_1_11"

    goto :goto_2

    .line 234
    :cond_f
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->UNDEFINED_KEYWORD:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne p0, p1, :cond_18

    const-string v0, "Music_1_11"

    goto :goto_2

    .line 185
    :cond_10
    :goto_1
    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->TRACK:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne p1, v1, :cond_14

    .line 186
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_TITLE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne p0, p1, :cond_11

    const-string v0, "Music_1_15"

    goto :goto_2

    .line 188
    :cond_11
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_PLUS_ARTIST:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne p0, p1, :cond_12

    const-string v0, "Music_1_15"

    goto :goto_2

    .line 190
    :cond_12
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->ARTIST_NAME:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne p0, p1, :cond_13

    const-string v0, "Music_1_16"

    goto :goto_2

    .line 192
    :cond_13
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->UNDEFINED_KEYWORD:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne p0, p1, :cond_18

    const-string v0, "Music_1_18"

    goto :goto_2

    .line 195
    :cond_14
    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->ALBUM:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne p1, v1, :cond_18

    .line 196
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_TITLE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne p0, p1, :cond_15

    const-string v0, "Music_1_4"

    goto :goto_2

    .line 198
    :cond_15
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_PLUS_ARTIST:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne p0, p1, :cond_16

    const-string v0, "Music_1_4"

    goto :goto_2

    .line 200
    :cond_16
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->ARTIST_NAME:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne p0, p1, :cond_17

    const-string v0, "Music_1_4"

    goto :goto_2

    .line 202
    :cond_17
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->UNDEFINED_KEYWORD:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne p0, p1, :cond_18

    const-string v0, "Music_1_4"

    :cond_18
    :goto_2
    return-object v0
.end method

.method private b()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object v0

    .line 155
    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult$1;->a:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "resultCount"

    .line 163
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->e:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "resultCount"

    .line 160
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->d:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "resultCount"

    .line 157
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->c:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->f:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->f:Ljava/util/List;

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/model/milksearch/SearchList;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->b:Lcom/samsung/android/app/music/model/milksearch/SearchList;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->c:Ljava/util/List;

    const-string v0, "trackData"

    .line 69
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->addResultData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->b()V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->d:Ljava/util/List;

    const-string v0, "albumData"

    .line 82
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->addResultData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->b()V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/StationData;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->e:Ljava/util/List;

    const-string v0, "stationData"

    .line 95
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->addResultData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->b()V

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;",
            ">;)V"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->f:Ljava/util/List;

    return-void
.end method

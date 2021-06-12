.class public final Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;
.super Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;
    }
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

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Z

.field private i:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->h:Z

    .line 49
    iput p1, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->i:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;)V
    .locals 2

    .line 56
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->a(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;)I

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->b(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;-><init>(ILjava/lang/String;)V

    .line 57
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->c(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    .line 58
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->d(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;)Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->b:Lcom/samsung/android/app/music/model/milksearch/SearchList;

    .line 59
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->e(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->c:Ljava/util/List;

    .line 60
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->f(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->d:Ljava/util/List;

    .line 61
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->g(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->e:Ljava/util/List;

    .line 62
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->h(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->g:I

    const-string p1, "resultCount"

    .line 64
    iget v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "actionType"

    const-string v0, "Find"

    .line 65
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "searchType"

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "inputData"

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->i()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "trackData"

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->addResultData(Ljava/lang/String;Lorg/json/JSONArray;)V

    const-string p1, "albumData"

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->addResultData(Ljava/lang/String;Lorg/json/JSONArray;)V

    const-string p1, "stationData"

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->addResultData(Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 153
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 154
    new-instance v2, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    invoke-direct {v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;-><init>()V

    .line 155
    sget-object v3, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->TRACK:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const-string p0, "trackData"

    .line 156
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 157
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_6

    .line 158
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v4, p1, :cond_6

    .line 162
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;

    move-result-object v3

    .line 163
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v4, :cond_0

    .line 165
    sget-object v5, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->TRACK:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    .line 166
    iget-object v3, v3, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    .line 167
    new-instance v3, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->a()Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    move-result-object v3

    move-object v0, v3

    .line 169
    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->a(Ljava/util/List;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 172
    :cond_1
    sget-object v3, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->ALBUM:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p0, "albumData"

    .line 173
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 174
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_6

    .line 175
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-ge v4, p1, :cond_6

    .line 179
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;

    move-result-object v3

    .line 180
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v4, :cond_2

    .line 182
    sget-object v5, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->ALBUM:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    .line 183
    iget-object v3, v3, Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    .line 184
    new-instance v3, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->a()Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    move-result-object v3

    move-object v0, v3

    .line 186
    :cond_2
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->b(Ljava/util/List;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 189
    :cond_3
    sget-object v3, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->STATION:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string p0, "stationData"

    .line 190
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 191
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_6

    .line 192
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    if-ge v4, p1, :cond_6

    .line 196
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/v2/result/data/StationData;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/result/data/StationData;

    move-result-object v3

    .line 197
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v4, :cond_4

    .line 199
    sget-object v3, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->STATION:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    .line 200
    invoke-virtual {v3}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    .line 201
    sget-object v3, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->STORE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    .line 202
    invoke-virtual {v3}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    .line 203
    new-instance v3, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->a()Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    move-result-object v3

    move-object v0, v3

    .line 205
    :cond_4
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->c(Ljava/util/List;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 208
    :cond_5
    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->PLAYLIST:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 209
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->PLAYLIST:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    .line 210
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->LOCAL:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    .line 211
    new-instance p1, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->a()Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 212
    :try_start_1
    invoke-static {p0}, Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->d(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, p1

    goto :goto_4

    :catch_0
    move-exception p0

    move-object v0, p1

    goto :goto_3

    :catch_1
    move-exception p0

    :goto_3
    const-string p1, "MusicSearch"

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromJson() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-object v0
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/music/model/milksearch/SearchList;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->b:Lcom/samsung/android/app/music/model/milksearch/SearchList;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->i:I

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/model/milksearch/SearchList;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->b:Lcom/samsung/android/app/music/model/milksearch/SearchList;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;",
            ">;)V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->c:Ljava/util/List;

    .line 88
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->g:I

    const-string v0, "trackData"

    .line 89
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->addResultData(Ljava/lang/String;Lorg/json/JSONArray;)V

    const-string v0, "resultCount"

    .line 90
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 146
    iput-boolean p1, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->h:Z

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->c:Ljava/util/List;

    return-object v0
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;",
            ">;)V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->d:Ljava/util/List;

    .line 99
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->g:I

    const-string v0, "albumData"

    .line 100
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->addResultData(Ljava/lang/String;Lorg/json/JSONArray;)V

    const-string v0, "resultCount"

    .line 101
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->d:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/StationData;",
            ">;)V"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->e:Ljava/util/List;

    .line 110
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->g:I

    const-string v0, "stationData"

    .line 111
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->addResultData(Ljava/lang/String;Lorg/json/JSONArray;)V

    const-string v0, "resultCount"

    .line 112
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/StationData;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->e:Ljava/util/List;

    return-object v0
.end method

.method public d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData;",
            ">;)V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->f:Ljava/util/List;

    .line 121
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->g:I

    const-string v0, "resultCount"

    .line 122
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->f:Ljava/util/List;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->g:I

    return v0
.end method

.method public g()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->i:I

    return v0
.end method

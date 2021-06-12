.class public Lcom/samsung/android/app/music/search/SearchConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;,
        Lcom/samsung/android/app/music/search/SearchConstants$SearchType;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;

.field public static final g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "_id"

    const-string v1, "track_count"

    const-string v2, "mime_type"

    const-string v3, "title"

    const-string v4, "artist"

    const-string v5, "album"

    const-string v6, "image_url"

    const-string v7, "milk_track_id"

    const-string v8, "album_id"

    .line 127
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/search/SearchConstants;->b:[Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "artist_count"

    const-string v2, "mime_type"

    const-string v3, "artist"

    const-string v4, "image_url"

    .line 133
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/search/SearchConstants;->c:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "album_count"

    const-string v3, "mime_type"

    const-string v4, "album"

    const-string v5, "artist"

    const-string v6, "image_url"

    .line 137
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/search/SearchConstants;->d:[Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "playlist_count"

    const-string v2, "spotify_playlist_count"

    const-string v3, "mime_type"

    const-string v4, "title"

    .line 141
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/search/SearchConstants;->e:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "music_video_count"

    const-string v3, "mime_type"

    const-string v4, "title"

    const-string v5, "artist"

    const-string v6, "album"

    const-string v7, "image_url"

    .line 145
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/search/SearchConstants;->f:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "lyric_count"

    const-string v3, "mime_type"

    const-string v4, "title"

    const-string v5, "artist"

    const-string v6, "album"

    const-string v7, "lyrics"

    const-string v8, "image_url"

    .line 150
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/search/SearchConstants;->g:[Ljava/lang/String;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_id"

    .line 159
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "total_count"

    .line 160
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants;->b:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/search/SearchConstants;->a(Ljava/util/List;Ljava/util/List;)V

    .line 163
    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants;->c:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/search/SearchConstants;->a(Ljava/util/List;Ljava/util/List;)V

    .line 164
    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants;->d:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/search/SearchConstants;->a(Ljava/util/List;Ljava/util/List;)V

    .line 165
    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants;->e:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/search/SearchConstants;->a(Ljava/util/List;Ljava/util/List;)V

    .line 166
    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants;->f:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/search/SearchConstants;->a(Ljava/util/List;Ljava/util/List;)V

    .line 167
    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants;->g:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/search/SearchConstants;->a(Ljava/util/List;Ljava/util/List;)V

    .line 168
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/search/SearchConstants;->a:[Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 172
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

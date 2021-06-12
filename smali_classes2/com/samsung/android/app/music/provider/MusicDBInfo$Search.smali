.class public final Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicDBInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Search"
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 905
    new-instance v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;

    .line 911
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->l_:Z

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "||\' \'||artist_pinyin"

    :goto_0
    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->b:Ljava/lang/String;

    .line 913
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->l_:Z

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    const-string v0, "||\' \'||artist_pinyin||\' \'||album_pinyin"

    :goto_1
    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->c:Ljava/lang/String;

    .line 918
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->l_:Z

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_2

    :cond_2
    const-string v0, "||\' \'||artist_pinyin||\' \'||album_pinyin||\' \'||title_pinyin"

    :goto_2
    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->d:Ljava/lang/String;

    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT _id, \'artist\' AS mime_type, artist, album_id, NULL AS duration, NULL AS album, NULL AS title, artist AS text1, NULL AS text2, number_of_albums AS data1, number_of_tracks AS data2, artist_cp_attrs AS cp_attrs, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "artist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AS match, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'content://content://com.sec.android.app.music/audio/artists/\'||_id AS suggest_intent_data,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1 AS grouporder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FROM music_artist_info WHERE (artist!=\'<unknown>\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->e:Ljava/lang/String;

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT _id, \'album\' AS mime_type, artist, _id AS album_id,  NULL AS duration, album, NULL AS title, album AS text1, artist AS text2, numsongs AS data1, NULL AS data2, album_cp_attrs AS cp_attrs, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "artist||\' \'||album"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AS match, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'content://content://com.sec.android.app.music/audio/albums/\'||_id AS suggest_intent_data, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2 AS grouporder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FROM music_album_info WHERE (album!=\'<unknown>\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->f:Ljava/lang/String;

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT search_helper_title._id AS _id, mime_type, artist, album_id, duration, album, title, title AS text1, artist AS text2, NULL AS data1,NULL AS data2, cp_attrs, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "artist||\' \'||album||\' \'||title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AS match, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'content://content://com.sec.android.app.music/external/audio/media/\'||search_helper_title._id AS suggest_intent_data, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "3 AS grouporder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FROM search_helper_title WHERE (title != \'\') AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 980
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->g:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 926
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 945
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 964
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->g:Ljava/lang/String;

    return-object v0
.end method

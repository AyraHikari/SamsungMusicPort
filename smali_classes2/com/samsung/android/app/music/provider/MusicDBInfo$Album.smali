.class public final Lcom/samsung/android/app/music/provider/MusicDBInfo$Album;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicDBInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Album"
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/MusicDBInfo$Album;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 529
    new-instance v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Album;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/MusicDBInfo$Album;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Album;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$Album;

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT audio.album_id AS _id, album, album_pinyin, album_unique_key, album_key, album_cp_attrs, MIN(year) AS minyear, MAX(year) AS maxyear, MAX(CASE WHEN year_name IS \'<unknown>\' THEN null ELSE year_name END) AS year_name, artist, album_artist, music_album_artist, artist_id, artist_key, artist_pinyin, count(distinct(artist)) as artist_count, count(*) AS numsongs, album_art._data AS album_art, MAX(date_modified) AS recently_added FROM audio LEFT OUTER JOIN album_art ON audio.album_id=album_art.album_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 569
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "GROUP BY audio.album_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Album;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 560
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Album;->b:Ljava/lang/String;

    return-object v0
.end method

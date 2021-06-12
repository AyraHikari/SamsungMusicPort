.class public final Lcom/samsung/android/app/music/provider/MusicDBInfo$Artist;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicDBInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Artist"
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/MusicDBInfo$Artist;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 602
    new-instance v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Artist;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/MusicDBInfo$Artist;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Artist;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$Artist;

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT artist_id AS _id, artist, artist_pinyin, artist_key, artist_unique_key, artist_cp_attrs, COUNT(DISTINCT album_id) AS number_of_albums, is_multple_artist, COUNT(*) AS number_of_tracks, album_id, max(most_played) AS total_most_played, max(date_modified) AS recently_added, min(album COLLATE LOCALIZED) AS dummy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FROM audio WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 640
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "GROUP BY artist_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Artist;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 633
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Artist;->b:Ljava/lang/String;

    return-object v0
.end method

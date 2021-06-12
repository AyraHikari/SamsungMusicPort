.class public final Lcom/samsung/android/app/music/provider/MusicDBInfo$AlbumArtist;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicDBInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlbumArtist"
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/MusicDBInfo$AlbumArtist;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 653
    new-instance v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$AlbumArtist;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/MusicDBInfo$AlbumArtist;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$AlbumArtist;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$AlbumArtist;

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT _id, music_album_artist AS artist, music_album_artist_pinyin AS artist_pinyin, music_album_artist_key AS artist_key, COUNT(DISTINCT album_id) AS number_of_albums, COUNT(*) AS number_of_tracks, max(date_modified) AS recently_added, album_id, min(album COLLATE LOCALIZED) AS dummy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FROM audio WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 663
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "GROUP BY music_album_artist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$AlbumArtist;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 657
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$AlbumArtist;->b:Ljava/lang/String;

    return-object v0
.end method

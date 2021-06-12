.class public final Lcom/samsung/android/app/music/provider/MusicDBInfo$BixBySearch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicDBInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BixBySearch"
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/MusicDBInfo$BixBySearch;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 987
    new-instance v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$BixBySearch;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/MusicDBInfo$BixBySearch;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$BixBySearch;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$BixBySearch;

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT audio._id AS _id, title, album, artist, genre_name, bucket_display_name, album_id, artist_id, composer, IFNULL(composer, \'\')||\' \'||IFNULL(bucket_display_name, \'\')||\' \'||IFNULL(genre_name, \'\')||\' \'||IFNULL(artist, \'\')||\' \'||IFNULL(album, \'\')||\' \'||IFNULL(title, \'\') AS match FROM audio WHERE (title != \'\') AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 994
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$BixBySearch;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 990
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$BixBySearch;->b:Ljava/lang/String;

    return-object v0
.end method

.class public final Lcom/samsung/android/app/music/provider/MusicDBInfo$Audio;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicDBInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Audio"
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/MusicDBInfo$Audio;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Audio;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/MusicDBInfo$Audio;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Audio;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$Audio;

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM audio_meta LEFT OUTER JOIN artists ON audio_meta.artist_id=artists.artist_id LEFT OUTER JOIN albums ON audio_meta.album_id=albums.album_id  WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 127
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Audio;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 126
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Audio;->b:Ljava/lang/String;

    return-object v0
.end method

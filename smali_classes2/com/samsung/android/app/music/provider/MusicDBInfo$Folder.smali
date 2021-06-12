.class public final Lcom/samsung/android/app/music/provider/MusicDBInfo$Folder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicDBInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Folder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/MusicDBInfo$Folder$Trees;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/MusicDBInfo$Folder;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 812
    new-instance v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Folder;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/MusicDBInfo$Folder;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Folder;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$Folder;

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT _id, bucket_id, bucket_display_name, bucket_display_name_pinyin, bucket_display_name_key, album_id, _data, count(_id) AS number_of_tracks, is_secretbox, max(date_modified) AS recently_added, min(_display_name COLLATE LOCALIZED) AS dummy FROM audio_meta "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 821
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 822
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GROUP BY bucket_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Folder;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 816
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Folder;->b:Ljava/lang/String;

    return-object v0
.end method

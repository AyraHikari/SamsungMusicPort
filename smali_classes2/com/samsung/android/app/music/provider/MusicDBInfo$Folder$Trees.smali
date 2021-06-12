.class public final Lcom/samsung/android/app/music/provider/MusicDBInfo$Folder$Trees;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicDBInfo$Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Trees"
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/MusicDBInfo$Folder$Trees;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 826
    new-instance v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Folder$Trees;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/MusicDBInfo$Folder$Trees;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Folder$Trees;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$Folder$Trees;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "displayed_title COLLATE LOCALIZED"

    .line 859
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM (SELECT folder_bucket_id AS _id, 0 AS file_type, folder_bucket_id, bucket_id, bucket_display_name AS displayed_title, NULL AS artist, parent_path, path, album_id, number_of_tracks, number_of_sub_folders, number_of_total_sub_folders, hide, 0 AS drm_type, 0 AS sampling_rate, 0 AS bit_depth, null AS mime_type FROM folders ORDER BY displayed_title COLLATE LOCALIZED ) UNION ALL SELECT * FROM ( SELECT _id, 1 AS file_type, NULL AS folder_bucket_id, bucket_id, _display_name AS displayed_title, artist, null AS parent_path, _data AS path, album_id, 0 AS number_of_tracks, 0 AS number_of_sub_folders, 0 AS number_of_total_sub_folders, folder_hide AS hide, drm_type, sampling_rate, bit_depth, mime_type FROM audio WHERE cp_attrs & 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

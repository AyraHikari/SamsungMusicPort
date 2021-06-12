.class public final Lcom/samsung/android/app/music/provider/sync/MusicSyncInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x1d

    .line 37
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "_data"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "_size"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "mime_type"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "title"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "_display_name"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "duration"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "track"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "artist"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "artist_id"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "album"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "album_id"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "album_artist"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "album"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "composer"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "year"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "bucket_id"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "bucket_display_name"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "duration"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "is_drm"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->f:Z

    if-eqz v1, :cond_0

    const-string v1, "is_secretbox"

    goto :goto_0

    :cond_0
    const-string v1, "0 AS is_secretbox"

    :goto_0
    const/16 v2, 0x14

    aput-object v1, v0, v2

    const/16 v1, 0x15

    const-string v2, "is_music"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "is_drm"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "is_drm"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "is_drm"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "is_drm"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "is_drm"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/MusicSyncInfo;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/ContentValues;
    .locals 9

    .line 52
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 53
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 54
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    const/4 v6, -0x1

    .line 55
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x171ba

    if-eq v7, v8, :cond_2

    const v8, 0x223e7913

    if-eq v7, v8, :cond_1

    const v8, 0x5b51a8eb

    if-eq v7, v8, :cond_0

    goto :goto_1

    :cond_0
    const-string v7, "album_id"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const-string v7, "artist_id"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x2

    goto :goto_1

    :cond_2
    const-string v7, "_id"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x0

    :cond_3
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 69
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    const-string v5, "source_artist_id"

    const-string v6, "artist_id"

    .line 66
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 65
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    :pswitch_1
    const-string v5, "source_album_id"

    const-string v6, "album_id"

    .line 62
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 61
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    :pswitch_2
    const-string v5, "source_id"

    const-string v6, "_id"

    .line 58
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 57
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    const-string p0, "cp_attrs"

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "album_art_location"

    .line 73
    invoke-virtual {v0, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "drm_type"

    .line 74
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

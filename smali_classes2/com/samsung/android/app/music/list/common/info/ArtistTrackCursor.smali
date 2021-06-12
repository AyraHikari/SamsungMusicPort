.class public Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor;
.super Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ArtistTrackCursor"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor;->a(Landroid/database/Cursor;)[Landroid/database/Cursor;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;-><init>([Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/database/Cursor;)[Landroid/database/Cursor;
    .locals 15

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p0, :cond_2

    .line 35
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "album_id"

    .line 36
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 37
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 41
    :cond_0
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    cmp-long v12, v6, v10

    if-eqz v12, :cond_1

    .line 43
    new-instance v6, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;

    add-int/lit8 v7, v9, -0x1

    invoke-direct {v6, p0, v8, v7}, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;-><init>(Landroid/database/Cursor;II)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v12, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor;->a:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "splitCursor() -> cursor("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "), "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 45
    invoke-static {v12, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    move-wide v6, v10

    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 52
    invoke-interface {p0, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 53
    new-instance v5, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;

    sub-int/2addr v9, v4

    invoke-direct {v5, p0, v8, v9}, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;-><init>(Landroid/database/Cursor;II)V

    .line 54
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v6, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "splitCursor() -> cursor("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "), "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-static {v6, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_2
    sget-object v5, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "splitCursor() size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", process time : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v5, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 63
    new-array v0, v4, [Landroid/database/Cursor;

    aput-object p0, v0, v3

    return-object v0

    .line 65
    :cond_3
    new-array p0, v0, [Landroid/database/Cursor;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/database/Cursor;

    return-object p0
.end method

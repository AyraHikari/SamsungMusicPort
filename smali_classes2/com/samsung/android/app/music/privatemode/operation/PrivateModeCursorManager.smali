.class public Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;[JZ)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;->a:Landroid/content/Context;

    .line 29
    iput-boolean p3, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;->b:Z

    .line 30
    iput-object p2, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;->c:[J

    return-void
.end method

.method private a(Z)[Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_id"

    .line 120
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "_data"

    .line 121
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "_display_name"

    .line 122
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    const-string p1, "bucket_id"

    .line 125
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "bucket_display_name"

    .line 126
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)J
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    const-string v0, "_id"

    .line 82
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public a()Landroid/database/Cursor;
    .locals 10

    .line 34
    iget-boolean v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;->b:Z

    if-eqz v0, :cond_7

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 40
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;->a:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v5, "bucket_id"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "_id"

    iget-object v7, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;->c:[J

    .line 42
    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 40
    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_4

    .line 44
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "bucket_id"

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " IN ("

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v2, 0x0

    .line 50
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    .line 59
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 62
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;->a:Landroid/content/Context;

    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;->b:Z

    .line 63
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;->a(Z)[Ljava/lang/String;

    move-result-object v6

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " COLLATE LOCALIZED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 63
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_4
    :goto_0
    if-eqz v3, :cond_5

    .line 59
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v2

    :catchall_1
    move-exception v0

    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    const-string v0, "_id"

    .line 67
    iget-object v1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;->c:[J

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v5

    .line 68
    iget-object v2, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;->a:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;->b:Z

    .line 69
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;->a(Z)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "title_key"

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "_data"

    .line 86
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public b()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;->c:[J

    invoke-static {v0}, Lcom/samsung/android/app/music/privatemode/PrivateUtils;->a([J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;->c:[J

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->removeQueueAudioIds([J)I

    :cond_0
    return-void
.end method

.method public c(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "_display_name"

    .line 90
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public d(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "bucket_id"

    .line 94
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public e(Landroid/database/Cursor;)V
    .locals 4

    .line 103
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 105
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 113
    new-array v0, v0, [J

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;->a(Landroid/database/Cursor;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->removeQueueAudioIds([J)I

    .line 114
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_0
    return-void
.end method

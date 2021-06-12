.class public final Lcom/samsung/android/app/music/list/playlist/ConflictDetectKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic access$dateModified(Landroid/database/Cursor;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/samsung/android/app/music/list/playlist/ConflictDetectKt;->dateModified(Landroid/database/Cursor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$id(Landroid/database/Cursor;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/samsung/android/app/music/list/playlist/ConflictDetectKt;->id(Landroid/database/Cursor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$modifiedState(Landroid/database/Cursor;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/app/music/list/playlist/ConflictDetectKt;->modifiedState(Landroid/database/Cursor;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$name(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/app/music/list/playlist/ConflictDetectKt;->name(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final dateAdded(Landroid/database/Cursor;)J
    .locals 2

    const-string v0, "date_added"

    .line 146
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final dateModified(Landroid/database/Cursor;)J
    .locals 2

    const-string v0, "date_modified"

    .line 147
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final dateSynced(Landroid/database/Cursor;)J
    .locals 2

    const-string v0, "date_synced"

    .line 148
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final id(Landroid/database/Cursor;)J
    .locals 2

    const-string v0, "_id"

    .line 145
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final isModified(Landroid/database/Cursor;)Z
    .locals 1

    const-string v0, "modified_state"

    .line 152
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final makeConflictValues(JLjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)Landroid/content/ContentValues;
    .locals 2

    const-string v0, "localPlaylistName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "local_playlist_id"

    .line 123
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p0, "local_playlist_name"

    .line 124
    invoke-virtual {v0, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "local_device_name"

    .line 125
    invoke-virtual {v0, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "local_date_modified"

    .line 126
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p0, "local_modified_state"

    .line 127
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "server_playlist_id"

    .line 128
    invoke-virtual {v0, p0, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "server_playlist_name"

    .line 129
    invoke-virtual {v0, p0, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "server_device_name"

    .line 130
    invoke-virtual {v0, p0, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "server_date_modified"

    .line 131
    invoke-static {p10, p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p0, "server_modified_state"

    .line 132
    invoke-static {p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static synthetic makeConflictValues$default(JLjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Object;)Landroid/content/ContentValues;
    .locals 16

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    move/from16 v9, p6

    :goto_0
    and-int/lit8 v1, v0, 0x20

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 116
    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    move-object v10, v1

    goto :goto_1

    :cond_1
    move-object/from16 v10, p7

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    .line 117
    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    move-object v11, v1

    goto :goto_2

    :cond_2
    move-object/from16 v11, p8

    :goto_2
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    .line 118
    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    move-object v12, v1

    goto :goto_3

    :cond_3
    move-object/from16 v12, p9

    :goto_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    const-wide/16 v3, -0x1

    move-wide v13, v3

    goto :goto_4

    :cond_4
    move-wide/from16 v13, p10

    :goto_4
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_5

    const/4 v15, 0x1

    goto :goto_5

    :cond_5
    move/from16 v15, p12

    :goto_5
    move-wide/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    .line 120
    invoke-static/range {v3 .. v15}, Lcom/samsung/android/app/music/list/playlist/ConflictDetectKt;->makeConflictValues(JLjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method private static final modifiedState(Landroid/database/Cursor;)I
    .locals 1

    const-string v0, "modified_state"

    .line 151
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    return p0
.end method

.method private static final name(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    .line 150
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final sourceId(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    const-string v0, "source_playlist_id"

    .line 149
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.class public final Lcom/samsung/android/app/music/provider/BackupRestoreProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/BackupRestoreProvider$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/BackupRestoreProvider$Companion;

.field private static final e:Z


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/database/sqlite/SQLiteDatabase;

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/provider/BackupRestoreProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a:Lcom/samsung/android/app/music/provider/BackupRestoreProvider$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "musicProviderHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p3, p0, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->d:Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;

    return-void
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;J[Landroid/content/ContentValues;)I
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p4

    .line 617
    sget-boolean v2, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->e:Z

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 622
    :goto_0
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 623
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 624
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 625
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1838
    array-length v5, v10

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_5

    aget-object v7, v10, v6

    const-string v9, "audio_source_id"

    .line 631
    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v15, "cp_attrs"

    .line 632
    invoke-virtual {v7, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "title"

    .line 633
    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v8, "album"

    .line 634
    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move/from16 v20, v5

    const-string v5, "artist"

    .line 635
    invoke-virtual {v7, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v15, :cond_2

    :cond_1
    move-object/from16 v21, v12

    goto/16 :goto_2

    .line 638
    :cond_2
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const v0, 0x80002

    if-ne v10, v0, :cond_1

    .line 639
    move-object v0, v12

    check-cast v0, Ljava/util/Map;

    const-string v10, "audioSourceId"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v15, "source_id"

    .line 640
    invoke-virtual {v10, v15, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "title"

    .line 641
    invoke-virtual {v10, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "explicit"

    const-string v15, "explicit"

    .line 644
    invoke-virtual {v7, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    .line 642
    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v14, "duration"

    move-object/from16 v21, v12

    const/4 v15, 0x0

    .line 646
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v12, "album"

    .line 647
    invoke-virtual {v10, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "album_id"

    const-string v12, "source_album_id"

    .line 650
    invoke-virtual {v7, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 648
    invoke-virtual {v10, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "album_artist"

    .line 652
    invoke-virtual {v10, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "artist"

    .line 653
    invoke-virtual {v10, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "artist_id"

    const-string v8, "source_artist_id"

    .line 656
    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 654
    invoke-virtual {v10, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 639
    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\',"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 662
    :goto_2
    move-object v0, v11

    check-cast v0, Ljava/util/Map;

    const-string v7, "audioSourceId"

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "source_id"

    .line 664
    invoke-virtual {v7, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "cp_attrs"

    .line 665
    invoke-virtual {v7, v10, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "title"

    .line 666
    invoke-virtual {v7, v10, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "artist"

    .line 667
    invoke-virtual {v7, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "album"

    .line 668
    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "drm_type"

    if-nez v15, :cond_3

    goto :goto_3

    .line 671
    :cond_3
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const v10, 0x80001

    if-ne v8, v10, :cond_4

    const/16 v16, 0x2

    goto :goto_4

    :cond_4
    :goto_3
    const/16 v16, 0x0

    :goto_4
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 669
    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "cp_attrs"

    .line 673
    invoke-virtual {v7, v5, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 674
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 662
    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\',"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v20

    move-object/from16 v12, v21

    move-object/from16 v0, p1

    move-object/from16 v10, p4

    goto/16 :goto_1

    :cond_5
    move-object/from16 v21, v12

    const v0, 0x80002

    .line 680
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v14, 0x1

    if-lez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    :goto_6
    if-eqz v5, :cond_7

    .line 681
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v14

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 683
    :cond_7
    move-object v5, v13

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_8

    const/4 v5, 0x1

    goto :goto_7

    :cond_8
    const/4 v5, 0x0

    :goto_7
    if-eqz v5, :cond_9

    .line 684
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v14

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 687
    :cond_9
    sget-boolean v5, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->e:Z

    if-eqz v5, :cond_a

    .line 688
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v7, "Backup"

    .line 689
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insertBackupPlaylistMember 1 step elapsed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v2, v5, v2

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v19, v5

    goto :goto_8

    :cond_a
    move-wide/from16 v19, v2

    :goto_8
    const-string v2, "cp_attrs & 1 OR cp_attrs & 8"

    const-string v3, "audio_meta"

    const-string v5, "_id"

    const-string v6, "local_track_id"

    .line 699
    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    .line 700
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x28

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") AND "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "local_track_id IN ("

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v10, 0x29

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "local_track_id"

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    const/4 v15, 0x2

    move-object v9, v12

    .line 697
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1840
    move-object v3, v2

    check-cast v3, Ljava/io/Closeable;

    move-object v9, v12

    check-cast v9, Ljava/lang/Throwable;

    :try_start_0
    move-object v4, v3

    check-cast v4, Landroid/database/Cursor;

    if-nez v2, :cond_b

    goto :goto_a

    .line 1851
    :cond_b
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_a

    :cond_c
    :goto_9
    const-string v4, "local_track_id"

    .line 1854
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 707
    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    if-eqz v4, :cond_d

    const-string v5, "audio_id"

    const-string v6, "_id"

    .line 1855
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 707
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1856
    :cond_d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_20

    .line 1858
    :goto_a
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1840
    invoke-static {v3, v9}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 713
    move-object v2, v11

    check-cast v2, Ljava/util/Map;

    .line 1860
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const v8, 0x80008

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 714
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "audio_id"

    .line 715
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_e

    .line 717
    iget-object v4, v1, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->d:Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;

    move-object/from16 v7, p1

    invoke-interface {v4, v7, v3, v8}, Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;->c(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "audio_id"

    .line 722
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "audio_cp_attrs"

    .line 723
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_b

    :cond_e
    move-object/from16 v7, p1

    const-string v4, "audio_cp_attrs"

    const-string v5, "cp_attrs"

    .line 727
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 725
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_b

    :cond_f
    move-object/from16 v7, p1

    .line 732
    sget-boolean v2, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->e:Z

    if-eqz v2, :cond_10

    .line 733
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "Backup"

    .line 734
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertBackupPlaylistMember 2 step elapsed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v22, v9

    sub-long v8, v2, v19

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v19, v2

    goto :goto_c

    :cond_10
    move-object/from16 v22, v9

    :goto_c
    const-string v3, "audio_meta"

    const-string v2, "_id"

    const-string v4, "source_id"

    .line 741
    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cp_attrs & 2 AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "source_id IN ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v8, "source_id"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p1

    move-object v13, v7

    move-object v7, v8

    const v12, 0x80008

    move-object v8, v9

    move-object/from16 v12, v22

    move-object v9, v10

    .line 739
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1862
    move-object v3, v2

    check-cast v3, Ljava/io/Closeable;

    :try_start_1
    move-object v4, v3

    check-cast v4, Landroid/database/Cursor;

    if-nez v2, :cond_11

    :goto_d
    move-object/from16 v8, v21

    goto :goto_f

    .line 1873
    :cond_11
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_12

    goto :goto_d

    :cond_12
    :goto_e
    const-string v4, "source_id"

    .line 1876
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v8, v21

    .line 749
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    if-eqz v4, :cond_13

    const-string v5, "audio_id"

    const-string v6, "_id"

    .line 1877
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 749
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1878
    :cond_13
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 1880
    :goto_f
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1862
    invoke-static {v3, v12}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 755
    move-object v12, v8

    check-cast v12, Ljava/util/Map;

    .line 1882
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_14
    :goto_10
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 756
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/content/ContentValues;

    const-string v2, "audio_id"

    .line 757
    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_14

    .line 759
    iget-object v2, v1, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->d:Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;

    invoke-interface {v2, v13, v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "audio_id"

    const-string v5, "_id"

    .line 763
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 761
    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 766
    iget-object v3, v1, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b:Landroid/content/Context;

    const-string v5, "album_id"

    .line 769
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const-string v5, "returnValues.getAsLong(M\u2026Contents.Tracks.ALBUM_ID)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const v7, 0x80002

    move-object v2, v3

    move-object/from16 v3, p1

    .line 765
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;JI)V

    .line 772
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_10

    .line 776
    :cond_15
    sget-boolean v2, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->e:Z

    if-eqz v2, :cond_16

    .line 777
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "Backup"

    .line 778
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertBackupPlaylistMember 3 step elapsed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v6, v2, v19

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_16
    move-wide/from16 v2, v19

    .line 784
    :goto_11
    new-instance v4, Lcom/samsung/android/app/music/provider/MediaUnionInserter;

    const-string v5, "audio_playlists_map"

    const-string v23, "playlist_id"

    const-string v24, "audio_id"

    const-string v25, "play_order"

    const-string v26, "audio_cp_attrs"

    const-string v27, "audio_data"

    const-string v28, "audio_source_id"

    const-string v29, "storage_order"

    .line 787
    filled-new-array/range {v23 .. v29}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    const/16 v7, 0x1f3

    .line 784
    invoke-direct {v4, v13, v5, v6, v7}, Lcom/samsung/android/app/music/provider/MediaUnionInserter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;I)V

    move-object/from16 v5, p4

    .line 1884
    array-length v6, v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_12
    if-ge v7, v6, :cond_1d

    aget-object v10, v5, v7

    const-string v12, "audio_source_id"

    .line 801
    invoke-virtual {v10, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "cp_attrs"

    .line 802
    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    const-string v0, "cpAttrs"

    .line 803
    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/music/provider/CpAttrs;->d(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 804
    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    if-eqz v0, :cond_17

    const-string v15, "audio_id"

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_13

    :cond_17
    const/4 v0, 0x0

    goto :goto_13

    .line 806
    :cond_18
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    if-eqz v0, :cond_17

    const-string v15, "audio_id"

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    :goto_13
    if-eqz v0, :cond_19

    .line 803
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    goto :goto_14

    :cond_19
    const-wide/16 v15, -0x1

    :goto_14
    const/4 v0, 0x7

    .line 808
    new-array v0, v0, [Ljava/lang/String;

    .line 809
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    const/16 v18, 0x0

    aput-object v19, v0, v18

    .line 810
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v0, v14

    const-string v15, "play_order"

    .line 811
    invoke-virtual {v10, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x2

    aput-object v10, v0, v15

    const/4 v10, 0x3

    .line 812
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const v14, 0x80001

    if-ne v15, v14, :cond_1a

    const v15, 0x10001

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_15

    :cond_1a
    move-object v15, v13

    :goto_15
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v0, v10

    const/4 v10, 0x4

    const-string v15, "?"

    aput-object v15, v0, v10

    const/4 v10, 0x5

    const-string v15, "?"

    aput-object v15, v0, v10

    const/4 v10, 0x6

    .line 816
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const v14, 0x80008

    if-ne v15, v14, :cond_1b

    const/16 v13, 0x12c

    const v15, 0x80002

    goto :goto_16

    .line 817
    :cond_1b
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const v15, 0x80002

    if-ne v13, v15, :cond_1c

    const/16 v13, 0xc8

    goto :goto_16

    :cond_1c
    const/16 v13, 0x64

    .line 819
    :goto_16
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v10

    .line 808
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v10, 0x2

    .line 822
    new-array v13, v10, [Ljava/lang/String;

    .line 823
    invoke-static {v12}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v13, v17

    const/16 v16, 0x1

    aput-object v12, v13, v16

    .line 822
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v12

    .line 826
    invoke-virtual {v4, v0, v12}, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, 0x1

    const v0, 0x80002

    const/4 v14, 0x1

    const/4 v15, 0x2

    goto/16 :goto_12

    .line 829
    :cond_1d
    invoke-virtual {v4}, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->a()I

    .line 831
    sget-boolean v0, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->e:Z

    if-eqz v0, :cond_1e

    .line 832
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v0, "Backup"

    .line 833
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertBackupPlaylistMember 3 step elapsed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v2

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    return v9

    :cond_1f
    move-object/from16 v5, p4

    const/16 v16, 0x1

    move-object/from16 v21, v8

    const/4 v14, 0x1

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    goto :goto_17

    :catch_0
    move-exception v0

    move-object v9, v0

    .line 1862
    :try_start_2
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v12, v9

    :goto_17
    invoke-static {v3, v12}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_20
    const/4 v0, 0x2

    move-object/from16 v5, p4

    const v15, 0x80002

    const v0, 0x80002

    const/4 v15, 0x2

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    move-object v12, v9

    goto :goto_18

    :catch_1
    move-exception v0

    move-object v9, v0

    .line 1840
    :try_start_3
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_18
    invoke-static {v3, v12}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 7

    .line 583
    sget-boolean v0, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->e:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 585
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "_data"

    const-string v5, "date_added"

    .line 589
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 588
    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 586
    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "date_added"

    const-wide/16 v5, 0x3e8

    .line 592
    div-long/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "is_sync"

    .line 594
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const-string v2, "is_sync"

    .line 595
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const-string v2, "UPDATE audio_playlists SET display_order=display_order + 1"

    .line 599
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "display_order"

    .line 600
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v2, "display_order"

    .line 601
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "audio_playlists"

    const/4 v3, 0x0

    .line 602
    invoke-virtual {p1, v2, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 603
    sget-boolean p1, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->e:Z

    if-eqz p1, :cond_2

    const-string p1, "Backup"

    .line 606
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertBackupPlaylist elapsed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms. rowId "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " with values "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 604
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-wide v2
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 18

    move/from16 v0, p2

    move/from16 v2, p5

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1125
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrong category type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1096
    :pswitch_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    return-object p3

    :cond_0
    const-string v0, "audio_playlists"

    const-string v2, "_id"

    const-string v3, "name=?"

    .line 1102
    new-array v4, v5, [Ljava/lang/String;

    aput-object p4, v4, v6

    move-object v11, v0

    move-object v7, v2

    move-object v13, v3

    goto :goto_0

    :pswitch_1
    const-string v0, "artists"

    const-string v3, "artist_id"

    .line 1107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "artist=? AND "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "artist_cp_attrs="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1109
    new-array v4, v5, [Ljava/lang/String;

    aput-object p4, v4, v6

    move-object v11, v0

    move-object v13, v2

    move-object v7, v3

    :goto_0
    move-object v14, v4

    goto :goto_1

    :pswitch_2
    const-string v0, "temp_album_info"

    const-string v7, "album_id"

    .line 1114
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "album=? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "album_cp_attrs="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bucket_id=?"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x2

    if-nez p6, :cond_2

    .line 1118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND album_artist IS NULL"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1119
    new-array v2, v8, [Ljava/lang/String;

    aput-object p4, v2, v6

    if-nez p7, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    aput-object p7, v2, v5

    move-object v11, v0

    move-object v14, v2

    move-object v13, v3

    goto :goto_1

    .line 1121
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND album_artist=?"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x3

    .line 1122
    new-array v9, v9, [Ljava/lang/String;

    aput-object p4, v9, v6

    if-nez p7, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    aput-object p7, v9, v5

    aput-object p6, v9, v8

    move-object v11, v0

    move-object v13, v2

    move-object v14, v9

    .line 1130
    :goto_1
    new-array v12, v5, [Ljava/lang/String;

    aput-object v7, v12, v6

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v10, p1

    .line 1128
    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    const/4 v0, 0x0

    .line 1136
    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    :try_start_0
    move-object v3, v1

    check-cast v3, Landroid/database/Cursor;

    if-eqz v3, :cond_5

    .line 1137
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1922
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 1140
    :cond_5
    :try_start_1
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1136
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x10002
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Ljava/lang/String;Ljava/util/HashSet;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ".+ \\((\\d+)\\)$"

    .line 566
    new-instance v1, Lkotlin/text/Regex;

    invoke-direct {v1, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v0, "\\(\\d+\\)$"

    .line 567
    new-instance v2, Lkotlin/text/Regex;

    invoke-direct {v2, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 569
    :goto_0
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    .line 571
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v3, v6, v4, v5}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 572
    invoke-interface {v4}, Lkotlin/text/MatchResult;->b()Lkotlin/text/MatchGroupCollection;

    move-result-object v0

    invoke-interface {v0, v5}, Lkotlin/text/MatchGroupCollection;->a(I)Lkotlin/text/MatchGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlin/text/MatchGroup;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 573
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x28

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v0, v5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 575
    :cond_1
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (1)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v0

    goto :goto_0

    :cond_4
    return-object p1
.end method

.method private final a(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2

    .line 2026
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 1503
    :goto_0
    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method private final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v10, p3

    .line 433
    sget-boolean v2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-nez v2, :cond_0

    const-string v0, "Backup"

    const-string v2, "restorePlaylist : Skip this"

    .line 434
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "audio_playlists_backup"

    const-string v3, "audio_playlists_map_backup"

    .line 440
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 438
    invoke-direct {v1, v10, v2}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "SMUSIC-Backup"

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempted to restore playlist but failed because table are not in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 446
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v2, "Backup"

    const-string v3, "restorePlaylist start"

    .line 453
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    sget-boolean v2, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->e:Z

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    move-wide v11, v2

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 456
    :goto_1
    invoke-direct {v1, v10}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->e(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;

    move-result-object v13

    .line 457
    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 459
    :cond_3
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    const-string v3, "audio_playlists"

    const-string v2, "name"

    .line 463
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p2

    .line 461
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1774
    move-object v3, v2

    check-cast v3, Ljava/io/Closeable;

    const/4 v4, 0x0

    move-object v15, v4

    check-cast v15, Ljava/lang/Throwable;

    :try_start_0
    move-object v5, v3

    check-cast v5, Landroid/database/Cursor;

    if-nez v2, :cond_4

    goto :goto_4

    .line 1785
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    :goto_2
    const-string v5, "name"

    .line 1788
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v5, v4

    goto :goto_3

    :cond_6
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    if-eqz v5, :cond_7

    .line 468
    invoke-virtual {v14, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1789
    :cond_7
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_14

    .line 1791
    :goto_4
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1774
    invoke-static {v3, v15}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 471
    sget-boolean v2, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->e:Z

    if-eqz v2, :cond_8

    const-string v2, "Backup"

    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current playlist names\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    :cond_8
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 479
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 480
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 483
    invoke-direct {v1, v4, v14}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Ljava/lang/String;Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    .line 484
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_id"

    .line 486
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "_id"

    .line 487
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 489
    invoke-direct {v1, v0, v3}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v16, -0x1

    cmp-long v3, v6, v16

    if-nez v3, :cond_9

    move-object/from16 v27, v13

    const/4 v13, 0x0

    goto/16 :goto_a

    :cond_9
    add-int/lit8 v16, v2, 0x1

    .line 493
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v2

    check-cast v5, Ljava/util/List;

    const-string v3, "audio_playlists_map_backup"

    const-string v2, "audio_id, playlist_id, play_order, audio_source_id, audio_data, audio_cp_attrs, storage_order, source_id, source_artist_id, source_album_id, title, artist, album, album_artist, explicit, drm_type, duration, cp_attrs, local_track_id"

    .line 497
    move-object/from16 v17, v2

    check-cast v17, Ljava/lang/CharSequence;

    const-string v2, ","

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x6

    const/16 v22, 0x0

    invoke-static/range {v17 .. v22}, Lkotlin/text/StringsKt;->b(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_10

    move-object/from16 v23, v5

    .line 1795
    new-array v5, v9, [Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_f

    move-object v5, v2

    check-cast v5, [Ljava/lang/String;

    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "playlist_id="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v2, p3

    move-object v4, v5

    move-object/from16 v24, v23

    move-object v5, v9

    move-wide/from16 v25, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move v9, v8

    move-object/from16 v8, v19

    move v10, v9

    move-object/from16 v27, v13

    const/4 v13, 0x0

    move-object/from16 v9, v20

    .line 495
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1796
    move-object v3, v2

    check-cast v3, Ljava/io/Closeable;

    :try_start_1
    move-object v4, v3

    check-cast v4, Landroid/database/Cursor;

    if-nez v2, :cond_a

    :goto_6
    move-object/from16 v5, v24

    goto :goto_8

    .line 1807
    :cond_a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_6

    .line 501
    :cond_b
    :goto_7
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "audio_source_id"

    .line 502
    invoke-direct {v1, v4, v2, v5}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v5, "title"

    .line 503
    invoke-direct {v1, v4, v2, v5}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v5, "album"

    .line 504
    invoke-direct {v1, v4, v2, v5}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v5, "artist"

    .line 505
    invoke-direct {v1, v4, v2, v5}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v5, "album_artist"

    .line 506
    invoke-direct {v1, v4, v2, v5}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v5, "source_artist_id"

    .line 507
    invoke-direct {v1, v4, v2, v5}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v5, "source_album_id"

    .line 508
    invoke-direct {v1, v4, v2, v5}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v5, "explicit"

    .line 509
    invoke-direct {v1, v4, v2, v5}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v5, "play_order"

    .line 510
    invoke-direct {v1, v4, v2, v5}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v5, "duration"

    .line 511
    invoke-direct {v1, v4, v2, v5}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v5, "cp_attrs"

    .line 512
    invoke-direct {v1, v4, v2, v5}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    move-object/from16 v5, v24

    .line 501
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1810
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_e

    .line 1812
    :goto_8
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1796
    invoke-static {v3, v15}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 516
    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_d

    .line 1815
    new-array v2, v13, [Landroid/content/ContentValues;

    invoke-interface {v5, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_c

    check-cast v2, [Landroid/content/ContentValues;

    move-wide/from16 v6, v25

    .line 518
    invoke-direct {v1, v0, v6, v7, v2}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Landroid/database/sqlite/SQLiteDatabase;J[Landroid/content/ContentValues;)I

    move-result v2

    add-int v8, v10, v2

    goto :goto_9

    .line 1815
    :cond_c
    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move v8, v10

    :goto_9
    move/from16 v2, v16

    :goto_a
    move-object/from16 v13, v27

    const/4 v9, 0x0

    move-object/from16 v10, p3

    goto/16 :goto_5

    :cond_e
    move-object/from16 v24, v5

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_b

    :catch_0
    move-exception v0

    move-object v15, v0

    .line 1796
    :try_start_2
    throw v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_b
    invoke-static {v3, v15}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1795
    :cond_f
    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1794
    :cond_10
    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move v10, v8

    const-string v0, "Backup"

    .line 522
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restore inserted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", memberInserted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v2, :cond_12

    .line 525
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v2, "MediaContents.Playlists.CONTENT_URI"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, p1

    invoke-static {v5, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 528
    :cond_12
    sget-boolean v0, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->e:Z

    if-eqz v0, :cond_13

    const-string v0, "Backup"

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restore playlist elapsed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v11

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 529
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    const-string v0, "Backup"

    const-string v2, "restorePlaylist end"

    .line 534
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    move-object/from16 v5, p1

    move-object/from16 v10, p3

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    move-object v15, v0

    .line 1774
    :try_start_3
    throw v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_c
    invoke-static {v3, v15}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    const-string v0, "Backup"

    const-string v1, "restoreFromSmartSwitch start."

    .line 176
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b:Landroid/content/Context;

    const-string v1, "backup.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 178
    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    :try_start_0
    const-string v2, "Backup"

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RESTORE_FROM_SMART_SWITCH : path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " and isExist : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v0, Lcom/samsung/android/app/music/provider/BackupDatabaseHelper;

    iget-object v2, p0, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/samsung/android/app/music/provider/BackupDatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/BackupDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    :try_start_1
    const-string v2, "Backup"

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreFromSmartSwitch : backupDb version ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1683
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 195
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 196
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->d(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 197
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->e(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 198
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1689
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1692
    :try_start_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    .line 202
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 1692
    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, v0

    goto :goto_0

    :catchall_2
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_0
    :try_start_5
    const-string v0, "SMUSIC-Backup"

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreFromSmartSwitch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_2

    .line 202
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    :goto_1
    return-void

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw p1
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 19

    .line 236
    sget-boolean v0, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->e:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const/4 v2, 0x6

    .line 238
    new-array v2, v2, [Ljava/lang/Integer;

    const v3, 0x10002

    .line 239
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x10003

    .line 240
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const v3, 0x10006

    .line 241
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const v3, 0x10007

    .line 242
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const/4 v3, 0x4

    const v8, 0x10008

    .line 243
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v3

    const/4 v3, 0x5

    const v8, 0x10004

    .line 244
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v3

    .line 238
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "category_type IN ("

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v9, v2

    check-cast v9, Ljava/lang/Iterable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3f

    const/16 v17, 0x0

    invoke-static/range {v9 .. v17}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") AND "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "NOT (hearts.category_type=65540 AND "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "hearts.category_id=-11)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 251
    new-array v3, v7, [Ljava/lang/Integer;

    const/16 v7, 0x55

    .line 252
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    const/16 v7, 0x54

    .line 253
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    const/16 v5, 0x66

    .line 254
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    .line 251
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "category_type IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, v3

    check-cast v7, Ljava/lang/Iterable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x3f

    invoke-static/range {v7 .. v15}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") AND "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "modified_state=1"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") OR ("

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 262
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v9, "hearts"

    const-string v10, "hearts_backup"

    const-string v2, "category_type, category_id, favorite_name, data1, data2, display_order, cp_attrs, server_category_id, sub_category_type, modified_state, category_id_extra_album_artist, category_id_extra_bucket_id"

    .line 269
    move-object v13, v2

    check-cast v13, Ljava/lang/CharSequence;

    const-string v2, ","

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->b(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_3

    .line 1712
    new-array v3, v4, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v11, v2

    check-cast v11, [Ljava/lang/String;

    const/4 v13, 0x0

    const/16 v14, 0x40

    const/4 v15, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 264
    invoke-static/range {v6 .. v15}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Lcom/samsung/android/app/music/provider/BackupRestoreProvider;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/Object;)V

    .line 273
    sget-boolean v2, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->e:Z

    if-eqz v2, :cond_1

    const-string v2, "Backup"

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backup favorites elapsed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 1712
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1711
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12

    move-object v0, p2

    move-object/from16 v1, p4

    move-object/from16 v10, p5

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 394
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1735
    move-object v3, v2

    check-cast v3, Ljava/io/Closeable;

    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, Ljava/lang/Throwable;

    :try_start_0
    move-object v6, v3

    check-cast v6, Landroid/database/Cursor;

    if-nez v2, :cond_0

    :goto_0
    move-object v11, p0

    goto :goto_2

    .line 1746
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 403
    :cond_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1749
    array-length v7, v10

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v10, v8

    if-eqz v9, :cond_2

    .line 405
    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, p0

    :try_start_1
    invoke-direct {p0, v6, v2, v9}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    move-object v11, p0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v11, p0

    .line 403
    invoke-virtual {p2, v1, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1751
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1753
    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1735
    invoke-static {v3, v5}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v11, p0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v11, p0

    :goto_3
    move-object v5, v0

    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    :goto_4
    invoke-static {v3, v5}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 7

    .line 129
    new-instance v0, Lcom/samsung/android/app/music/provider/BackupDatabaseHelper;

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/BackupDatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/BackupDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast v0, Ljava/io/Closeable;

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Throwable;

    :try_start_0
    move-object v3, v0

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Backup"

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Backup start. backup db version is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 132
    :try_start_1
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 133
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 134
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 135
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1675
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1678
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 136
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 129
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1678
    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v2, p1

    .line 129
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_0
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    const-string p1, "Backup"

    const-string v0, "BackupDB is null. skipp."

    .line 136
    invoke-static {v1, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b:Landroid/content/Context;

    const-string v0, "backup.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/backup.db"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 142
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p2, "sourceFile"

    .line 143
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Ljava/io/File;Ljava/io/File;)V

    .line 145
    sget-boolean p2, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->e:Z

    if-eqz p2, :cond_1

    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_backup.db"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Backup"

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupUserData source["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], debugPath["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Ljava/io/File;Ljava/io/File;)V

    .line 151
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_2
    const-string p1, "Backup"

    const-string p2, "backupUserData : BackupDb is not exist."

    .line 153
    invoke-static {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    const-string v0, "DROP TABLE IF EXISTS hearts_non_backup"

    .line 916
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 917
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const-string p1, "Backup"

    const-string p2, "backupNonRestoredFavorites is empty"

    .line 918
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "CREATE TABLE IF NOT EXISTS hearts_non_backup (category_type, category_id, favorite_name, data1, data2, display_order, cp_attrs, server_category_id, sub_category_type, modified_state, category_id_extra_album_artist, category_id_extra_bucket_id)"

    .line 921
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 925
    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .line 1902
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string v3, "hearts_non_backup"

    const/4 v4, 0x0

    .line 926
    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_2

    :cond_3
    const-string p1, "Backup"

    .line 929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupNonRestoredFavorites : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/provider/BackupRestoreProvider;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/Object;)V
    .locals 11

    and-int/lit8 v1, p8, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 390
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p6

    :goto_0
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_1

    .line 391
    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object v10, v0

    goto :goto_1

    :cond_1
    move-object/from16 v10, p7

    :goto_1
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/io/File;Ljava/io/File;)V
    .locals 7

    .line 113
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/Closeable;

    const/4 p1, 0x0

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Ljava/io/FileInputStream;

    .line 114
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v3, Ljava/io/Closeable;

    check-cast p1, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object p2, v3

    check-cast p2, Ljava/io/FileOutputStream;

    const/16 v4, 0x400

    .line 115
    new-array v4, v4, [B

    .line 118
    :cond_0
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_1

    const/4 v6, 0x0

    .line 120
    invoke-virtual {p2, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    :cond_1
    if-gtz v5, :cond_0

    .line 123
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :try_start_2
    invoke-static {v3, p1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 124
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 113
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 114
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-static {v3, p1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v1, p1

    .line 113
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    const-string v2, "sqlite_master"

    const-string v1, "name"

    .line 415
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "type=\'table\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    .line 413
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1755
    move-object v1, p1

    check-cast v1, Ljava/io/Closeable;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    :try_start_0
    move-object v4, v1

    check-cast v4, Landroid/database/Cursor;

    if-nez p1, :cond_0

    goto :goto_1

    .line 1766
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 1769
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v4, v2

    goto :goto_0

    :cond_2
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_3

    .line 420
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1770
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1772
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1755
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 422
    check-cast p2, Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v3, p1

    .line 1755
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private final b(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)I"
        }
    .end annotation

    .line 1890
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "CREATE VIEW temp_album_info AS SELECT audio_meta.album_id AS album_id, album, bucket_id, album_artist, album_cp_attrs FROM audio_meta JOIN albums ON audio_meta.album_id=albums.album_id WHERE album_cp_attrs=65537 GROUP BY audio_meta.album_id;"

    .line 869
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "SELECT ifnull(max(display_order), 0) FROM hearts"

    const/4 v1, 0x0

    .line 877
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    .line 880
    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object v3, v0

    check-cast v3, Landroid/database/Cursor;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 881
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 882
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    goto :goto_0

    :cond_0
    move-wide v7, v4

    .line 884
    :goto_0
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 880
    :try_start_2
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 886
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 887
    check-cast p2, Ljava/lang/Iterable;

    .line 1896
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 889
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "display_order"

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    .line 890
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "hearts"

    const/4 v9, 0x4

    .line 891
    invoke-virtual {p1, v3, v1, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 901
    :cond_2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 902
    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 901
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string p2, "DROP VIEW IF EXISTS temp_album_info"

    .line 906
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 907
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V

    .line 908
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1898
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1901
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v6

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    move-object v2, p2

    .line 880
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    .line 1901
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p2
.end method

.method private final b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 976
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    const-string v2, "category_type"

    const-string v3, "category_id"

    const-string v4, "favorite_name"

    const-string v5, "data1"

    const-string v6, "data2"

    const-string v7, "cp_attrs"

    const-string v8, "server_category_id"

    const-string v9, "sub_category_type"

    const-string v10, "modified_state"

    const-string v11, "category_id_extra_album_artist"

    const-string v12, "category_id_extra_bucket_id"

    .line 979
    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v15

    const-string v20, "display_order"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    .line 977
    invoke-virtual/range {v13 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1904
    move-object v3, v2

    check-cast v3, Ljava/io/Closeable;

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/Throwable;

    :try_start_0
    move-object v5, v3

    check-cast v5, Landroid/database/Cursor;

    if-nez v2, :cond_0

    goto :goto_0

    .line 1915
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 994
    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "category_type"

    .line 995
    invoke-direct {v1, v5, v2, v6}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v6, "category_id"

    .line 996
    invoke-direct {v1, v5, v2, v6}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v6, "favorite_name"

    .line 997
    invoke-direct {v1, v5, v2, v6}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v6, "data1"

    .line 998
    invoke-direct {v1, v5, v2, v6}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v6, "data2"

    .line 999
    invoke-direct {v1, v5, v2, v6}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v6, "cp_attrs"

    .line 1000
    invoke-direct {v1, v5, v2, v6}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v6, "server_category_id"

    .line 1001
    invoke-direct {v1, v5, v2, v6}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v6, "sub_category_type"

    .line 1002
    invoke-direct {v1, v5, v2, v6}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v6, "modified_state"

    .line 1003
    invoke-direct {v1, v5, v2, v6}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v6, "category_id_extra_album_artist"

    .line 1004
    invoke-direct {v1, v5, v2, v6}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v6, "category_id_extra_bucket_id"

    .line 1008
    invoke-direct {v1, v5, v2, v6}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 994
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1918
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1920
    :goto_0
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1904
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v4, v0

    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final b(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2

    .line 2027
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1507
    :goto_0
    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private final b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Environment.getExternalStorageDirectory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/SamsungMusic/backup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b(Ljava/lang/String;)V

    .line 209
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private final b(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 23

    .line 302
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-nez v0, :cond_0

    return-void

    .line 304
    :cond_0
    sget-boolean v0, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->e:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 305
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const-string v5, "audio_playlists"

    const-string v4, "group_concat(_id,\',\')"

    .line 309
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "source_playlist_id IS NULL AND audio_playlists.name<>?"

    const-string v4, "FavoriteList#328795!432@1341"

    .line 312
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    .line 307
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    check-cast v4, Ljava/io/Closeable;

    .line 314
    check-cast v2, Ljava/lang/Throwable;

    :try_start_0
    move-object v5, v4

    check-cast v5, Landroid/database/Cursor;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 315
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 316
    :cond_2
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 318
    sget-boolean v2, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->e:Z

    if-eqz v2, :cond_3

    const-string v2, "Backup"

    .line 319
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backupPlaylist Ids -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_3
    move-object v2, v3

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_6

    return-void

    :cond_6
    const-string v10, "audio_playlists"

    const-string v11, "audio_playlists_backup"

    const-string v2, "_id, name, date_added, date_synced, date_modified, modified_state, is_sync, sort_by, display_order, date_recently_played"

    .line 330
    move-object v12, v2

    check-cast v12, Ljava/lang/CharSequence;

    const-string v2, ","

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x6

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->b(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_b

    .line 1728
    new-array v4, v6, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    move-object v12, v2

    check-cast v12, [Ljava/lang/String;

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio_playlists._id IN ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 325
    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v18, "audio_playlists_map, audio"

    const-string v19, "audio_playlists_map_backup"

    const-string v2, "audio_id, playlist_id, play_order, audio_source_id, audio_data, audio_cp_attrs, storage_order, source_id, source_artist_id, source_album_id, title, artist, album, album_artist, explicit, drm_type, duration, cp_attrs, local_track_id"

    .line 341
    move-object v7, v2

    check-cast v7, Ljava/lang/CharSequence;

    const-string v2, ","

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->b(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_9

    .line 1730
    new-array v5, v6, [Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    move-object/from16 v20, v2

    check-cast v20, [Ljava/lang/String;

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audio_playlists_map.audio_id=audio._id AND playlist_id IN ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    .line 336
    invoke-direct/range {v15 .. v22}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 346
    sget-boolean v2, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->e:Z

    if-eqz v2, :cond_7

    const-string v2, "Backup"

    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backup playlist elapsed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void

    .line 1730
    :cond_8
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1729
    :cond_9
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1728
    :cond_a
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1727
    :cond_b
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 314
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final b(Ljava/lang/String;)V
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/backup.db"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 160
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b:Landroid/content/Context;

    const-string v1, "backup.db"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    const-string v1, "newFile"

    .line 165
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method private final b(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 12

    const-string v0, "category_type"

    .line 1036
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "favorite_name"

    .line 1037
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "cp_attrs"

    .line 1038
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "category_id"

    .line 1039
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "sub_category_type"

    .line 1040
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1043
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0x10004

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const v3, 0x10002

    if-nez v0, :cond_2

    goto :goto_2

    .line 1044
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_4

    :cond_3
    :goto_1
    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    :goto_2
    const v3, 0x10003

    if-nez v0, :cond_5

    goto :goto_3

    .line 1045
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_7

    const/4 v3, 0x2

    if-nez v2, :cond_6

    goto :goto_1

    .line 1046
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_3

    :cond_7
    :goto_3
    const/4 v2, 0x1

    :goto_4
    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    const-string v2, "categoryType"

    .line 1055
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v0, "categoryId"

    .line 1056
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categoryName"

    .line 1057
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cpAttrs"

    .line 1058
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v0, "category_id_extra_album_artist"

    .line 1059
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "category_id_extra_bucket_id"

    .line 1060
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v2, p0

    move-object v3, p1

    .line 1053
    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1063
    :goto_5
    move-object p1, v5

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_9

    goto :goto_6

    :cond_9
    const/4 p1, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/4 p1, 0x1

    :goto_7
    if-eqz p1, :cond_b

    const-string p1, "Backup"

    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeFavoriteContentValues categoryId is NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1064
    invoke-static {v11, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_b
    const-string p1, "category_id"

    .line 1072
    invoke-virtual {p2, p1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "category_id_extra_album_artist"

    .line 1073
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string p1, "category_id_extra_bucket_id"

    .line 1074
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    return v11
.end method

.method private final c(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2

    .line 2028
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1511
    :goto_0
    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10

    const-string v0, "Backup"

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "testBackupDb : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sqlite_master"

    const-string v0, "name"

    .line 216
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    .line 214
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1693
    move-object v0, p1

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/database/Cursor;

    if-nez p1, :cond_0

    goto :goto_0

    .line 1704
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "Backup"

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "table : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1709
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1693
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, p1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private final c(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 19

    .line 355
    sget-boolean v0, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->e:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string v5, "favorite_tracks_map, audio"

    const-string v6, "favorite_tracks_map_backup"

    const-string v2, "audio_id, play_order, audio_source_id, audio_data, audio_cp_attrs, storage_order, source_id, source_artist_id, source_album_id, title, artist, album, album_artist, explicit, drm_type, duration, cp_attrs, local_track_id"

    .line 362
    move-object v7, v2

    check-cast v7, Ljava/lang/CharSequence;

    const-string v2, ","

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->b(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_5

    const/4 v10, 0x0

    .line 1732
    new-array v3, v10, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object v7, v2

    check-cast v7, [Ljava/lang/String;

    const-string v8, "favorite_tracks_map.audio_id=audio._id"

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 357
    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v14, "favorite_tracks_info"

    const-string v15, "favorite_tracks_info_backup"

    const-string v2, "sort_by"

    .line 372
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    const-string v2, ","

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->b(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_3

    .line 1734
    new-array v3, v10, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object/from16 v16, v2

    check-cast v16, [Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 367
    invoke-direct/range {v11 .. v18}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 376
    sget-boolean v2, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->e:Z

    if-eqz v2, :cond_1

    const-string v2, "Backup"

    .line 379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backup favorite tracks elapsed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 1734
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1733
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1732
    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1731
    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1717
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "CREATE VIEW temp_album_info AS SELECT audio_meta.album_id AS m_album_id, bucket_id, album_artist FROM audio_meta JOIN albums ON audio_meta.album_id=albums.album_id WHERE album_cp_attrs=65537 GROUP BY audio_meta.album_id"

    .line 284
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "UPDATE hearts SET category_id_extra_album_artist=(SELECT album_artist FROM temp_album_info WHERE category_id=m_album_id), category_id_extra_bucket_id=(SELECT bucket_id FROM temp_album_info WHERE category_id=m_album_id) WHERE category_type=65538 AND cp_attrs=65537 "

    .line 291
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP VIEW IF EXISTS temp_album_info"

    .line 297
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 298
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1723
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1726
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private final d(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    const-string v0, "hearts_backup"

    .line 839
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "SMUSIC-Backup"

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attempted to restore favorite but failed because table are not in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 840
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "Backup"

    const-string v1, "restoreFavorite start"

    const/4 v2, 0x1

    .line 846
    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 847
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v3, "hearts_backup"

    .line 848
    invoke-direct {p0, p2, v3}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 849
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "Backup"

    const-string p2, "restoreFavorite end - no item"

    .line 850
    invoke-static {v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 854
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)I

    move-result p1

    const-string p2, "Backup"

    .line 858
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreFavorite ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " inserted)end - elapsed "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 855
    invoke-static {v2, p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final e(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 538
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string v2, "audio_playlists_backup"

    const-string v1, "_id, name, date_added, date_synced, date_modified, modified_state, is_sync, sort_by, display_order, date_recently_played"

    .line 541
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const-string v1, ","

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->b(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_6

    const/4 v3, 0x0

    .line 1818
    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    move-object v3, v1

    check-cast v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    .line 539
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1819
    move-object v1, p1

    check-cast v1, Ljava/io/Closeable;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    :try_start_0
    move-object v4, v1

    check-cast v4, Landroid/database/Cursor;

    if-nez p1, :cond_0

    goto :goto_1

    .line 1830
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "name"

    .line 1833
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v4, v2

    goto :goto_0

    :cond_2
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_3

    .line 545
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "name"

    .line 546
    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "_id"

    .line 547
    invoke-direct {p0, v5, p1, v6}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v6, "date_added"

    .line 548
    invoke-direct {p0, v5, p1, v6}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v6, "date_synced"

    .line 549
    invoke-direct {p0, v5, p1, v6}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v6, "date_modified"

    .line 550
    invoke-direct {p0, v5, p1, v6}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v6, "modified_state"

    .line 551
    invoke-direct {p0, v5, p1, v6}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v6, "is_sync"

    .line 552
    invoke-direct {p0, v5, p1, v6}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v6, "sort_by"

    .line 553
    invoke-direct {p0, v5, p1, v6}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v6, "display_order"

    .line 554
    invoke-direct {p0, v5, p1, v6}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v6, "date_recently_played"

    .line 555
    invoke-direct {p0, v5, p1, v6}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 545
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1834
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1836
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1819
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 559
    sget-boolean p1, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->e:Z

    if-eqz p1, :cond_4

    const-string p1, "Backup"

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playlist is going to be restored info\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v3, p1

    .line 1819
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    .line 1818
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1817
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final e(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    const-string v2, "favorite_tracks_map_backup"

    const-string v3, "favorite_tracks_info_backup"

    .line 1150
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1148
    invoke-direct {v1, v10, v2}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "SMUSIC-Backup"

    .line 1158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempted to restore favorite tracks but failed because table are not in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1156
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "Backup"

    const-string v3, "restoreFavoriteTracks start"

    .line 1163
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    sget-boolean v2, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->e:Z

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    move-wide v11, v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0

    :goto_1
    const-string v2, "favorite_tracks_info"

    const/4 v13, 0x0

    .line 1170
    invoke-virtual {v0, v2, v13, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v3, "favorite_tracks_info_backup"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p2

    .line 1171
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1923
    move-object v3, v2

    check-cast v3, Ljava/io/Closeable;

    move-object v14, v13

    check-cast v14, Ljava/lang/Throwable;

    :try_start_0
    move-object v4, v3

    check-cast v4, Landroid/database/Cursor;

    const/4 v15, 0x0

    if-nez v2, :cond_2

    goto :goto_4

    .line 1934
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_4

    .line 1180
    :cond_3
    :goto_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1181
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v5

    const-string v6, "c.columnNames"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1938
    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3
    if-ge v7, v6, :cond_4

    aget-object v9, v5, v7

    add-int/lit8 v16, v8, 0x1

    .line 1182
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    move/from16 v8, v16

    goto :goto_3

    .line 1184
    :cond_4
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v5, "favorite_tracks_info"

    .line 1185
    invoke-virtual {v0, v5, v13, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1940
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_33

    .line 1942
    :goto_4
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 1923
    invoke-static {v3, v14}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1193
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1194
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1195
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1196
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v2

    check-cast v5, Ljava/util/List;

    .line 1201
    sget-boolean v2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v2, :cond_5

    move-object/from16 v16, v13

    goto :goto_5

    :cond_5
    const-string v2, "cp_attrs=65537"

    move-object/from16 v16, v2

    :goto_5
    const-string v3, "favorite_tracks_map_backup"

    const-string v2, "audio_id, play_order, audio_source_id, audio_data, audio_cp_attrs, storage_order, source_id, source_artist_id, source_album_id, title, artist, album, album_artist, explicit, drm_type, duration, cp_attrs, local_track_id"

    .line 1204
    move-object/from16 v17, v2

    check-cast v17, Ljava/lang/CharSequence;

    const-string v2, ","

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x6

    const/16 v22, 0x0

    invoke-static/range {v17 .. v22}, Lkotlin/text/StringsKt;->b(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_32

    .line 1945
    new-array v4, v15, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_31

    move-object v4, v2

    check-cast v4, [Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v2, p2

    move-object v10, v5

    move-object/from16 v5, v16

    move-object v13, v6

    move-object/from16 v6, v17

    move-object/from16 v23, v7

    move-object/from16 v7, v18

    move-object/from16 v24, v8

    move-object/from16 v8, v19

    move-object v15, v9

    move-object/from16 v9, v20

    .line 1202
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    .line 1206
    :try_start_1
    move-object v3, v2

    check-cast v3, Landroid/database/Cursor;

    const/4 v9, 0x1

    if-eqz v3, :cond_6

    .line 1207
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    const-string v4, "Backup"

    const-string v5, "restoreFavoriteTracks no backup data. end. return"

    .line 1208
    invoke-static {v9, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-nez v3, :cond_8

    goto :goto_7

    .line 1947
    :cond_8
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_7

    .line 1211
    :cond_9
    :goto_6
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "source_id"

    .line 1212
    invoke-direct {v1, v4, v3, v5}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v5, "audio_source_id"

    .line 1213
    invoke-direct {v1, v4, v3, v5}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v5, "audio_data"

    .line 1214
    invoke-direct {v1, v4, v3, v5}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v5, "title"

    .line 1215
    invoke-direct {v1, v4, v3, v5}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v5, "album"

    .line 1216
    invoke-direct {v1, v4, v3, v5}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v5, "artist"

    .line 1217
    invoke-direct {v1, v4, v3, v5}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v5, "album_artist"

    .line 1218
    invoke-direct {v1, v4, v3, v5}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v5, "source_artist_id"

    .line 1219
    invoke-direct {v1, v4, v3, v5}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v5, "source_album_id"

    .line 1220
    invoke-direct {v1, v4, v3, v5}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v5, "explicit"

    .line 1221
    invoke-direct {v1, v4, v3, v5}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v5, "play_order"

    .line 1222
    invoke-direct {v1, v4, v3, v5}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v5, "duration"

    .line 1223
    invoke-direct {v1, v4, v3, v5}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v5, "cp_attrs"

    .line 1224
    invoke-direct {v1, v4, v3, v5}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v5, "local_track_id"

    .line 1225
    invoke-direct {v1, v4, v3, v5}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1227
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1211
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1950
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_30

    .line 1229
    :goto_7
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1206
    invoke-static {v2, v14}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1232
    check-cast v10, Ljava/lang/Iterable;

    .line 1952
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v8, 0x0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const v7, 0x80002

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "cp_attrs"

    .line 1233
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_b

    :cond_a
    move-object/from16 v25, v2

    move-object/from16 v9, v23

    goto/16 :goto_9

    .line 1235
    :cond_b
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v7, :cond_a

    const-string v4, "source_id"

    .line 1237
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1238
    move-object v6, v15

    check-cast v6, Ljava/util/Map;

    const-string v7, "sourceId"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "source_id"

    .line 1239
    invoke-virtual {v7, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "title"

    const-string v5, "title"

    .line 1242
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1240
    invoke-virtual {v7, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "explicit"

    const-string v9, "explicit"

    .line 1246
    invoke-virtual {v3, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 1244
    invoke-virtual {v7, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "duration"

    move-object/from16 v25, v2

    const/4 v9, 0x0

    .line 1248
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "album"

    const-string v5, "album"

    .line 1251
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1249
    invoke-virtual {v7, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "album_id"

    const-string v5, "source_album_id"

    .line 1255
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1253
    invoke-virtual {v7, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "artist"

    .line 1257
    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "album_artist"

    .line 1258
    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "artist"

    .line 1259
    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v2, "artist_id"

    const-string v5, "source_artist_id"

    .line 1263
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1261
    invoke-virtual {v7, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1238
    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x27

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\',"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v9, v23

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v24

    goto :goto_a

    :goto_9
    const-string v2, "local_track_id"

    .line 1269
    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v6, v24

    .line 1270
    move-object v4, v6

    check-cast v4, Ljava/util/Map;

    const-string v5, "localTrackId"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "local_track_id"

    .line 1271
    invoke-virtual {v5, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1270
    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x27

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\',"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    const-string v2, "play_order"

    .line 1276
    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "playOrder"

    .line 1277
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    move-object/from16 v24, v6

    move-object/from16 v23, v9

    move-object/from16 v2, v25

    const/4 v9, 0x1

    goto/16 :goto_8

    :cond_c
    move-object/from16 v9, v23

    move-object/from16 v6, v24

    .line 1280
    move-object v2, v13

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_d

    const/4 v2, 0x1

    goto :goto_b

    :cond_d
    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_e

    .line 1281
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v16, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_e
    const/16 v16, 0x1

    .line 1283
    :goto_c
    move-object v2, v9

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_d

    :cond_f
    const/4 v2, 0x0

    :goto_d
    if-eqz v2, :cond_10

    .line 1284
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1287
    :cond_10
    sget-boolean v2, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->e:Z

    if-eqz v2, :cond_11

    .line 1288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "Backup"

    .line 1291
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreFavoriteTracks 1 step elapsed "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v11, v2, v11

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms : localTrackIdBuilder["

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x5d

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1289
    invoke-static {v4, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v11, v2

    goto :goto_e

    :cond_11
    const/16 v5, 0x5d

    :goto_e
    const-string v2, "cp_attrs & 1"

    const-string v3, "audio_meta"

    const-string v4, "_id"

    const-string v7, "local_track_id"

    .line 1301
    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v4

    .line 1302
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v9

    const/16 v9, 0x28

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") AND local_track_id IN ("

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v13, 0x29

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v17, 0x0

    const-string v18, "local_track_id"

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v2, p1

    move-object v5, v7

    move-object v7, v6

    move-object/from16 v6, v17

    move-object v13, v7

    move-object/from16 v7, v18

    move/from16 v27, v8

    move-object/from16 v8, v19

    move-object/from16 v28, v10

    move-object/from16 v10, v26

    const/16 v0, 0x28

    move-object/from16 v9, v20

    .line 1299
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    .line 1307
    :try_start_2
    move-object v3, v2

    check-cast v3, Landroid/database/Cursor;

    if-eqz v3, :cond_15

    .line 1308
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_12

    goto :goto_f

    .line 1955
    :cond_12
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_13

    goto :goto_10

    :cond_13
    const-string v4, "local_track_id"

    .line 1958
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1313
    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    if-eqz v4, :cond_14

    const-string v5, "audio_id"

    const-string v6, "_id"

    .line 1959
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1313
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1960
    :cond_14
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_13

    goto :goto_10

    :cond_15
    :goto_f
    const-string v3, "Backup"

    const-string v4, "restoreFavoriteTracks 2 step : no items."

    .line 1309
    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    :goto_10
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1307
    invoke-static {v2, v14}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1320
    sget-boolean v2, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->e:Z

    if-eqz v2, :cond_16

    .line 1321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "Backup"

    .line 1322
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreFavoriteTracks 2 step elapsed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v6, v2, v11

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v11, v2

    :cond_16
    const-string v2, "cp_attrs=524290"

    const-string v3, "audio_meta"

    const-string v4, "_id"

    const-string v5, "source_id"

    .line 1331
    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    .line 1332
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") AND source_id IN ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "source_id"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    .line 1329
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1962
    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    :try_start_3
    move-object v3, v2

    check-cast v3, Landroid/database/Cursor;

    if-nez v0, :cond_17

    goto :goto_12

    .line 1973
    :cond_17
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_12

    :cond_18
    :goto_11
    const-string v3, "source_id"

    .line 1976
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1338
    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    if-eqz v3, :cond_19

    const-string v4, "audio_id"

    const-string v5, "_id"

    .line 1977
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1338
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1978
    :cond_19
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 1980
    :goto_12
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1962
    invoke-static {v2, v14}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1344
    move-object v9, v15

    check-cast v9, Ljava/util/Map;

    .line 1982
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1345
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/content/ContentValues;

    const-string v2, "audio_id"

    .line 1346
    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 1348
    iget-object v2, v1, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->d:Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;

    const v9, 0x80002

    move-object/from16 v10, p1

    invoke-interface {v2, v10, v4, v9}, Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "audio_id"

    const-string v5, "_id"

    .line 1352
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 1350
    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1355
    iget-object v3, v1, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b:Landroid/content/Context;

    const-string v5, "album_id"

    .line 1358
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const-string v5, "returnValues.getAsLong(M\u2026Contents.Tracks.ALBUM_ID)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const v7, 0x80002

    move-object v2, v3

    move-object/from16 v3, p1

    .line 1354
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;JI)V

    .line 1361
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_13

    :cond_1a
    const v9, 0x80002

    move-object/from16 v10, p1

    goto :goto_13

    :cond_1b
    const v9, 0x80002

    move-object/from16 v10, p1

    .line 1365
    sget-boolean v0, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->e:Z

    if-eqz v0, :cond_1c

    .line 1366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "Backup"

    .line 1367
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreFavoriteTracks 3 step elapsed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v5, v2, v11

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v11, v2

    .line 1372
    :cond_1c
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v16, "favorite_tracks_map AS FTM, audio_meta AS aa"

    const-string v8, "FTM.audio_id=aa._id"

    const-string v2, "source_id"

    .line 1380
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    .line 1381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AND cp_attrs=524290"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move-object/from16 v29, v8

    move-object/from16 v8, v17

    const v1, 0x80002

    move-object/from16 v9, v18

    .line 1378
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1984
    move-object v3, v2

    check-cast v3, Ljava/io/Closeable;

    :try_start_4
    move-object v4, v3

    check-cast v4, Landroid/database/Cursor;

    if-nez v2, :cond_1d

    goto :goto_15

    .line 1995
    :cond_1d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1e

    goto :goto_15

    :cond_1e
    :goto_14
    const-string v4, "source_id"

    .line 1998
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1387
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1999
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2e

    .line 2001
    :goto_15
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1984
    invoke-static {v3, v14}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string v2, "local_track_id"

    .line 1392
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    .line 1393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v29

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AND cp_attrs&1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    .line 1390
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2003
    move-object v3, v2

    check-cast v3, Ljava/io/Closeable;

    :try_start_5
    move-object v4, v3

    check-cast v4, Landroid/database/Cursor;

    if-nez v2, :cond_1f

    goto :goto_17

    .line 2014
    :cond_1f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_20

    goto :goto_17

    :cond_20
    :goto_16
    const-string v4, "local_track_id"

    .line 2017
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1399
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2018
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 2020
    :goto_17
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2003
    invoke-static {v3, v14}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1402
    sget-boolean v2, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->e:Z

    if-eqz v2, :cond_22

    .line 1403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1404
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    .line 2022
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1405
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    :cond_21
    const-string v3, "Backup"

    .line 1409
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreFavoriteTracks 3 step : favoriteTrackHashSet : size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", members "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1407
    invoke-static {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    :cond_22
    new-instance v2, Lcom/samsung/android/app/music/provider/MediaUnionInserter;

    const-string v3, "favorite_tracks_map"

    const-string v4, "audio_id"

    const-string v5, "play_order"

    const-string v6, "audio_cp_attrs"

    const-string v7, "audio_data"

    const-string v8, "audio_source_id"

    const-string v9, "storage_order"

    .line 1416
    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    const/16 v5, 0x1f3

    .line 1414
    invoke-direct {v2, v10, v3, v4, v5}, Lcom/samsung/android/app/music/provider/MediaUnionInserter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 1427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE favorite_tracks_map "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "SET play_order = play_order + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v27

    .line 1428
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1426
    invoke-virtual {v10, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2024
    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string v6, "source_id"

    .line 1433
    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "local_track_id"

    .line 1434
    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "cp_attrs"

    .line 1435
    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    .line 1437
    move-object v10, v9

    check-cast v10, Ljava/lang/Long;

    const-string v10, "cpAttrs"

    .line 1438
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lcom/samsung/android/app/music/provider/CpAttrs;->d(I)Z

    move-result v10

    if-eqz v10, :cond_25

    .line 1439
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    const-string v5, "Backup"

    .line 1443
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "restoreFavoriteTracks 4 step already exist in favoriteTracksMap. skip -> "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "cpAttrs["

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1444
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "], sourceId["

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "], localTrackId["

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x5d

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x1

    .line 1440
    invoke-static {v10, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_1a
    const/16 v17, 0x0

    goto/16 :goto_1f

    :cond_23
    const/4 v10, 0x1

    const/16 v14, 0x5d

    .line 1449
    invoke-virtual {v15, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Landroid/content/ContentValues;

    if-eqz v9, :cond_24

    const-string v1, "audio_id"

    invoke-virtual {v9, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1b

    :cond_24
    const/4 v1, 0x0

    goto :goto_1b

    :cond_25
    const/4 v10, 0x1

    const/16 v14, 0x5d

    .line 1451
    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "Backup"

    .line 1455
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreFavoriteTracks 4 step already exist in favoriteTracksMap. skip -> "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "cpAttrs["

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "], sourceId["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "], localTrackId["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1452
    invoke-static {v10, v1, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 1461
    :cond_26
    invoke-virtual {v13, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    if-eqz v1, :cond_24

    const-string v9, "audio_id"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    :goto_1b
    if-eqz v1, :cond_2a

    .line 1464
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, -0x1

    cmp-long v9, v16, v18

    if-nez v9, :cond_27

    goto :goto_1e

    :cond_27
    const/4 v7, 0x6

    .line 1474
    new-array v7, v7, [Ljava/lang/String;

    .line 1475
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    aput-object v1, v7, v9

    const-string v1, "play_order"

    .line 1476
    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v10

    const v1, 0x80001

    .line 1477
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v1, :cond_28

    const v1, 0x10001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1c

    :cond_28
    move-object v1, v8

    :goto_1c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v7, v5

    const/4 v1, 0x3

    const-string v9, "?"

    aput-object v9, v7, v1

    const/4 v1, 0x4

    const-string v9, "?"

    aput-object v9, v7, v1

    const/4 v1, 0x5

    .line 1481
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const v9, 0x80002

    if-ne v8, v9, :cond_29

    const/16 v8, 0xc8

    goto :goto_1d

    :cond_29
    const/16 v8, 0x64

    .line 1483
    :goto_1d
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    .line 1474
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1486
    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v17, 0x0

    aput-object v7, v5, v17

    aput-object v6, v5, v10

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1487
    invoke-virtual {v2, v1, v5}, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_2a
    :goto_1e
    const v9, 0x80002

    const/16 v17, 0x0

    const-string v1, "Backup"

    .line 1468
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreFavoriteTracks 4 step audioId is -1L. skip -> "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "cpAttrs["

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1469
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "], sourceId["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "], localTrackId["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1465
    invoke-static {v10, v1, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_1f
    const v1, 0x80002

    goto/16 :goto_19

    .line 1490
    :cond_2b
    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->a()I

    .line 1492
    sget-boolean v0, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->e:Z

    if-eqz v0, :cond_2c

    .line 1493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "Backup"

    .line 1496
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreFavoriteTracks 4 step elapsed "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v0, v11

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms, inserted "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1494
    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    const-string v0, "Backup"

    const-string v1, "restoreFavoriteTracks end"

    .line 1499
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2d
    const v1, 0x80002

    goto/16 :goto_16

    :catchall_0
    move-exception v0

    goto :goto_20

    :catch_0
    move-exception v0

    move-object v14, v0

    .line 2003
    :try_start_6
    throw v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_20
    invoke-static {v3, v14}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_2e
    const v1, 0x80002

    goto/16 :goto_14

    :catchall_1
    move-exception v0

    goto :goto_21

    :catch_1
    move-exception v0

    move-object v14, v0

    .line 1984
    :try_start_7
    throw v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_21
    invoke-static {v3, v14}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_2f
    move-object/from16 v10, p1

    move-object/from16 v1, p0

    goto/16 :goto_11

    :catchall_2
    move-exception v0

    goto :goto_22

    :catch_2
    move-exception v0

    move-object v14, v0

    .line 1962
    :try_start_8
    throw v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_22
    invoke-static {v2, v14}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_23

    :catch_3
    move-exception v0

    move-object v14, v0

    .line 1307
    :try_start_9
    throw v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_23
    invoke-static {v2, v14}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_30
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    goto/16 :goto_6

    :catchall_4
    move-exception v0

    goto :goto_24

    :catch_4
    move-exception v0

    move-object v14, v0

    .line 1206
    :try_start_a
    throw v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :goto_24
    invoke-static {v2, v14}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1945
    :cond_31
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1944
    :cond_32
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    goto/16 :goto_2

    :catchall_5
    move-exception v0

    goto :goto_25

    :catch_5
    move-exception v0

    move-object v14, v0

    .line 1923
    :try_start_b
    throw v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :goto_25
    invoke-static {v3, v14}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final f(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    :try_start_0
    const-string v1, "sqlite_master"

    const-string v0, "count(*)"

    .line 937
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "type=? AND name=?"

    const-string v0, "table"

    const-string v4, "hearts_non_backup"

    .line 939
    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 935
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 943
    check-cast v1, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v2, v0

    check-cast v2, Landroid/database/Cursor;

    .line 944
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 945
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 947
    :goto_0
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 943
    :try_start_2
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-nez v2, :cond_1

    const-string p1, "Backup"

    const-string v0, "restoreNonRestoredFavorites : no exist"

    .line 949
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "hearts_non_backup"

    .line 953
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 956
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v1, :cond_2

    .line 957
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)I

    move-result v5

    :cond_2
    if-lez v5, :cond_3

    .line 960
    sget-object p1, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->a:Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->HEART_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    check-cast v2, Ljava/lang/Enum;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    const-string v3, "EnumSet.of(SyncOperation.HEART_UPDATE)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;->a(Landroid/content/Context;Ljava/util/EnumSet;)V

    :cond_3
    const-string p1, "Backup"

    .line 965
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreNonRestoredFavorites : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " exist -> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " restored."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 962
    invoke-static {v4, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 943
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 968
    sget-boolean v0, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->e:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const-string p2, "uri"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "update not implemented. uri="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const-string p2, "uri"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "delete not implemented. uri="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public a(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 2

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bulkInsert not implemented. uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const-string p2, "uri"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "query not implemented. uri="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    const-string p2, "uri"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert not implemented. uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string p3, "method"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "Backup"

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call method["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] : SupportMilk "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p3

    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "restore_non_restored_favorites"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :sswitch_1
    const-string p2, "restore_test"

    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :sswitch_2
    const-string p3, "backup_smart_switch"

    .line 102
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const-string p3, "dump_backup_db_smart_switch"

    .line 102
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 104
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->b(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    const-string p2, "restore_smart_switch"

    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7b319785 -> :sswitch_4
        -0xb1e7147 -> :sswitch_3
        0x40699c7 -> :sswitch_2
        0x624993a3 -> :sswitch_1
        0x7a10f471 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Landroid/net/Uri;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "restore_non_restored_favorites"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v0, "restore_test"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :sswitch_2
    const-string v0, "backup_smart_switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :sswitch_3
    const-string v0, "dump_backup_db_smart_switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :sswitch_4
    const-string v0, "restore_smart_switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    :goto_0
    const/4 p1, 0x1

    goto :goto_2

    :cond_0
    :goto_1
    const/4 p1, 0x0

    :goto_2
    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b319785 -> :sswitch_4
        -0xb1e7147 -> :sswitch_3
        0x40699c7 -> :sswitch_2
        0x624993a3 -> :sswitch_1
        0x7a10f471 -> :sswitch_0
    .end sparse-switch
.end method

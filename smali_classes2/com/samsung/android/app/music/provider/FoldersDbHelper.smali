.class public final Lcom/samsung/android/app/music/provider/FoldersDbHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

.field private static final b:Z

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    .line 107
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "Environment.getExternalStorageDirectory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selection"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x2a32

    if-eq p3, v0, :cond_1

    const/16 v0, 0x2a3b

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 807
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown URL: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 798
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v1, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 842
    sget-boolean v2, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->b:Z

    if-eqz v2, :cond_1

    const-string v2, "MusicSync-FoldersDbHelper"

    .line 845
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateFolderTreesInternal selection : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", selectionArgs : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_0

    const-string v6, "null"

    goto :goto_0

    .line 846
    :cond_0
    invoke-static/range {p6 .. p6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 843
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v2, "hide"

    .line 852
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 853
    sget-object v2, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    invoke-direct {v2, v9, v4, v5, v10}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v2

    const-string v3, "folders"

    .line 855
    invoke-virtual {v9, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    if-eqz v10, :cond_1b

    if-eqz v2, :cond_1b

    const/4 v12, 0x1

    if-ge v11, v12, :cond_2

    goto/16 :goto_b

    .line 868
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 869
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 870
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "folders"

    const-string v1, "path"

    .line 874
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 872
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/16 v16, 0x0

    const/4 v8, 0x0

    if-eqz v1, :cond_7

    check-cast v1, Ljava/io/Closeable;

    .line 880
    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v3, v1

    check-cast v3, Landroid/database/Cursor;

    const-string v4, "path"

    .line 881
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-nez v3, :cond_3

    goto :goto_2

    .line 1185
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_1
    add-int/lit8 v6, v5, 0x1

    if-eqz v5, :cond_5

    const-string v5, " OR "

    .line 885
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " OR "

    .line 886
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v5, "path LIKE ?"

    .line 888
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_data LIKE ?"

    .line 889
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/%"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1188
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 892
    :goto_2
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 880
    :try_start_2
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :cond_6
    move v5, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 893
    :cond_7
    :goto_4
    move-object v1, v13

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :goto_5
    if-nez v1, :cond_1a

    move-object v1, v14

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_a

    goto/16 :goto_a

    .line 899
    :cond_a
    check-cast v15, Ljava/util/Collection;

    .line 1191
    new-array v1, v8, [Ljava/lang/String;

    invoke-interface {v15, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 899
    move-object v5, v1

    check-cast v5, [Ljava/lang/String;

    .line 903
    sget-object v1, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "folderWhereSb.toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v9, v2, v5, v3}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v1

    .line 904
    sget-boolean v2, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->b:Z

    if-eqz v2, :cond_b

    const-string v2, "MusicSync-FoldersDbHelper"

    .line 907
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFolderTreesInternal subDirectoryHideUpdated : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 905
    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string v1, "UPDATE folders SET number_of_sub_folders=(SELECT count(*) FROM folders fd WHERE hide=0 AND folders.path=fd.parent_path)"

    .line 911
    invoke-virtual {v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 913
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object/from16 v1, v16

    check-cast v1, Ljava/lang/String;

    iput-object v1, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string v2, "audio_meta"

    const-string v1, "group_concat(_id, \',\')"

    .line 915
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    .line 916
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p2

    const/4 v15, 0x0

    move-object v8, v14

    .line 914
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    .line 917
    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/Throwable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    move-object v3, v1

    check-cast v3, Landroid/database/Cursor;

    if-eqz v3, :cond_c

    .line 918
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 919
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 921
    :cond_c
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 917
    :try_start_6
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 922
    iget-object v1, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_18

    iget-object v1, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_d
    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_7

    :cond_e
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_f

    goto/16 :goto_8

    .line 934
    :cond_f
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v12, :cond_13

    .line 935
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_11

    .line 936
    sget-object v1, Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper;->a:Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper$Companion;

    iget-object v2, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_10

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_10
    invoke-virtual {v1, v9, v2}, Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper$Companion;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 938
    :cond_11
    sget-object v1, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    iget-object v2, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_12

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_12
    invoke-direct {v1, v9, v2}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 942
    :cond_13
    sget-object v1, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    iget-object v2, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_14

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_14
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v9, v2, v3}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v1

    .line 943
    sget-boolean v2, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->b:Z

    if-eqz v2, :cond_15

    const-string v2, "MusicSync-FoldersDbHelper"

    .line 946
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFolderTreesInternal audioFolderHideUpdated : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 944
    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    :cond_15
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_17

    .line 953
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_17

    .line 954
    sget-object v1, Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper;->a:Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper$Companion;

    iget-object v2, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_16

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_16
    invoke-virtual {v1, v9, v2}, Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper$Companion;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 957
    :cond_17
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1192
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1195
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v1, "content://com.sec.android.app.music/audio"

    .line 961
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "Uri.parse(MediaContents.\u2026UTHORITY_SLASH + \"audio\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 960
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 963
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->a:Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;

    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->HEART_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    check-cast v2, Ljava/lang/Enum;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    const-string v3, "EnumSet.of(SyncOperation.HEART_UPDATE)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;->a(Landroid/content/Context;Ljava/util/EnumSet;)V

    return v11

    :cond_18
    :goto_8
    :try_start_7
    const-string v0, "MusicSync-FoldersDbHelper"

    const-string v1, "updateFolderTreesInternal This can\'t be. ids is null or empty."

    .line 923
    invoke-static {v12, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1195
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v15

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 917
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_9
    :try_start_9
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1191
    :cond_19
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_a
    const/4 v15, 0x0

    const-string v0, "MusicSync-FoldersDbHelper"

    const-string v1, "folderWhere or audioWhere has zero length."

    .line 894
    invoke-static {v12, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1195
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v15

    :cond_1b
    :goto_b
    :try_start_a
    const-string v0, "MusicSync-FoldersDbHelper"

    const-string v1, "updateFolderTreesInternal No need update hide related."

    .line 861
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1195
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v11

    :catchall_2
    move-exception v0

    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
    .locals 2

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") AND "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 987
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, p2}, Landroid/content/ContentValues;-><init>(I)V

    const-string p2, "folder_hide"

    .line 988
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "audio_meta"

    const/4 p3, 0x0

    .line 989
    invoke-virtual {p1, p2, v1, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 2

    .line 972
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "hide"

    .line 973
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p4, "folders"

    .line 974
    invoke-virtual {p1, p4, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private final a(JLjava/lang/String;)J
    .locals 4

    .line 401
    sget-boolean v0, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->b:Z

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 404
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "MusicSync-FoldersDbHelper"

    .line 405
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " takes "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long p1, v0, p1

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public static final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "projection"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x2a32

    if-eq p3, v0, :cond_1

    packed-switch p3, :pswitch_data_0

    .line 515
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    const-string p1, "MusicSync-FoldersDbHelper"

    const-string p2, "queryFoldersDb - invalid uri"

    .line 516
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 519
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown URL: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 511
    :pswitch_0
    sget-object v0, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->c(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 503
    :pswitch_1
    sget-object v0, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 507
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2a3b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    move-object v0, p3

    move-object v3, p4

    move-object v1, p5

    const-string v2, "folder_bucket_id"

    .line 531
    invoke-virtual {p3, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 532
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Trees;->c:Ljava/lang/String;

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_a

    if-nez v3, :cond_1

    const-string v0, "MusicSync-FoldersDbHelper"

    const-string v1, "queryFoldersInfo : projection should be not null"

    .line 540
    invoke-static {v5, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 1160
    :cond_1
    array-length v2, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v2, :cond_6

    aget-object v6, v3, v4

    add-int/lit8 v7, v5, 0x1

    .line 545
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x457dafe3

    if-eq v8, v9, :cond_4

    const v9, 0x371b7014

    if-eq v8, v9, :cond_3

    const v9, 0x379b3119

    if-eq v8, v9, :cond_2

    goto :goto_2

    :cond_2
    const-string v8, "number_of_total_sub_folders"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v6, "sum(number_of_total_sub_folders) AS number_of_total_sub_folders"

    goto :goto_2

    :cond_3
    const-string v8, "number_of_sub_folders"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v6, "sum(number_of_sub_folders) AS number_of_sub_folders"

    goto :goto_2

    :cond_4
    const-string v8, "bucket_display_name"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v6, "ROOT_FOLDER_PATH"

    :cond_5
    :goto_2
    aput-object v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_1

    .line 556
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "folder_bucket_id"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 557
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->e:Ljava/lang/String;

    .line 558
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2c

    if-eqz v4, :cond_7

    .line 562
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    :cond_7
    invoke-static {p1}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 567
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v4, ")"

    .line 569
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_9

    .line 571
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v4, "folders"

    .line 574
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p2

    move-object v2, v4

    move-object v3, p4

    move-object v4, v5

    move-object/from16 v5, p6

    .line 573
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v9, p0

    goto :goto_4

    .line 578
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_c

    const-string v7, "folder_bucket_id=?"

    .line 580
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_b

    .line 582
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    :cond_b
    new-array v1, v5, [Ljava/lang/String;

    aput-object v2, v1, v4

    move-object v9, p0

    move-object/from16 v2, p6

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_3

    :cond_c
    move-object v9, p0

    move-object/from16 v2, p6

    move-object v5, v2

    :goto_3
    const-string v2, "folders"

    .line 589
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    move-object v3, p4

    move-object/from16 v8, p7

    .line 588
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_4
    if-eqz v1, :cond_d

    .line 594
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_d
    return-object v1
.end method

.method private final a([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method private final a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .line 719
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 720
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 721
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    .line 722
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x494f3301

    if-eq v5, v6, :cond_1

    const v6, 0x171ba

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 723
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const-string v5, "folder_bucket_id"

    .line 722
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 724
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_1
    const-string v4, "dummy"

    .line 725
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 728
    :cond_3
    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 729
    check-cast v0, Landroid/database/Cursor;

    return-object v0
.end method

.method public static final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v0, "db"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio_meta"

    const-string v1, "bucket_id"

    .line 289
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    .line 286
    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;

    const/4 p1, 0x0

    .line 296
    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, p0

    check-cast v2, Landroid/database/Cursor;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 297
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 1105
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 303
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_1

    .line 305
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    :try_start_1
    const-string v0, "MusicSync-FoldersDbHelper"

    .line 298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBucketIdsInFromInsertedIds Error cursor :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 296
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1080
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 121
    :try_start_0
    sget-object v2, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    invoke-direct {v2, p1}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v2, "DELETE FROM folders"

    .line 124
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "INSERT OR IGNORE INTO folders (folder_bucket_id, bucket_display_name, bucket_display_name_pinyin, number_of_tracks, path, dummy) SELECT bucket_id, bucket_display_name, bucket_display_name_pinyin, count(*) AS number_of_tracks, substr(_data, 0, length(rtrim(_data, replace(_data, \'/\', \'\' )))) AS path, min(_display_name COLLATE LOCALIZED) AS dummy FROM audio_meta WHERE cp_attrs & 1 GROUP BY bucket_id "

    .line 127
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    sget-object v2, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    const-string v3, "refresh : execSQL(SQL_INSERT_FROM_AUDIO)"

    invoke-direct {v2, v0, v1, v3}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(JLjava/lang/String;)J

    move-result-wide v2

    const-string v4, "UPDATE folders SET album_id=(SELECT album_id FROM audio_meta WHERE bucket_id=folders.folder_bucket_id AND cp_attrs & 1 ORDER BY _display_name COLLATE LOCALIZED LIMIT 1)"

    .line 130
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    sget-object v4, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    const-string v5, "refresh : execSQL(SQL_UPDATE_ALBUM_ID)"

    invoke-direct {v4, v2, v3, v5}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(JLjava/lang/String;)J

    move-result-wide v2

    const-string v4, "UPDATE folders SET parent_path=substr(path, 0, length(rtrim(path, replace(path, \'/\', \'\' ))))"

    .line 133
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 134
    sget-object v4, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    const-string v5, "refresh : execSQL(SQL_UPDATE_PARENT_PATH)"

    invoke-direct {v4, v2, v3, v5}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(JLjava/lang/String;)J

    move-result-wide v2

    .line 136
    sget-object v4, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 137
    sget-object v4, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    const-string v5, "refresh : insertParentFolder(this)"

    invoke-direct {v4, v2, v3, v5}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(JLjava/lang/String;)J

    move-result-wide v2

    const-string v4, "UPDATE folders SET bucket_id=(SELECT folder_bucket_id FROM folders fd2 WHERE fd2.path=folders.parent_path) WHERE bucket_id IS NULL"

    .line 139
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 140
    sget-object v4, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    const-string v5, "refresh : execSQL(SQL_UPDATE_BUCKET_ID)"

    invoke-direct {v4, v2, v3, v5}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(JLjava/lang/String;)J

    move-result-wide v2

    .line 142
    sget-object v4, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    invoke-direct {v4, p1}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->d(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v4

    .line 143
    sget-object v5, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    const-string v6, "refresh : queryNewDirectories(this)"

    invoke-direct {v5, v2, v3, v6}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(JLjava/lang/String;)J

    move-result-wide v2

    .line 144
    sget-boolean v5, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->b:Z

    if-eqz v5, :cond_1

    const-string v5, "MusicSync-FoldersDbHelper"

    .line 145
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "newDirectories : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_1
    sget-object v5, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    invoke-direct {v5, p1}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 149
    sget-object v5, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    const-string v6, "refresh : restoreHideInfo(this)"

    invoke-direct {v5, v2, v3, v6}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(JLjava/lang/String;)J

    move-result-wide v2

    .line 151
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_3

    const-string v5, "UPDATE folders SET hide=ifnull((SELECT hide FROM folders fd WHERE folders.bucket_id=fd.folder_bucket_id), 0) WHERE folder_bucket_id IN (?)"

    .line 152
    new-array v8, v7, [Ljava/lang/String;

    aput-object v4, v8, v6

    invoke-virtual {p1, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    sget-object v4, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    const-string v5, "refresh : execSQL(SQL_UPDATE_NEW_DIRECTORIES_HIDE)"

    invoke-direct {v4, v2, v3, v5}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(JLjava/lang/String;)J

    move-result-wide v2

    .line 158
    :cond_3
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "folder_hide"

    .line 159
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "audio_meta"

    .line 162
    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    .line 160
    invoke-virtual {p1, v5, v4, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 164
    sget-object v5, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    .line 166
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refresh : execSQL(SQL_INIT_TRACKS_FOLDER_HIDE) updated "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 164
    invoke-direct {v5, v2, v3, v4}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(JLjava/lang/String;)J

    move-result-wide v2

    .line 170
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "folder_hide"

    .line 171
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "audio_meta"

    const-string v6, "audio_meta.bucket_id IN (SELECT folder_bucket_id FROM folders WHERE folders.hide=1)"

    .line 172
    invoke-virtual {p1, v5, v4, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 178
    sget-object v5, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    .line 180
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refresh : execSQL(SQL_UPDATE_TRACKS_FOLDER_HIDE_AS_HIDE) updated "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 178
    invoke-direct {v5, v2, v3, v4}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(JLjava/lang/String;)J

    move-result-wide v2

    const-string v4, "UPDATE folders SET number_of_sub_folders=(SELECT count(*) FROM folders fd WHERE hide=0 AND folders.path=fd.parent_path)"

    .line 183
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 184
    sget-object v4, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    const-string v5, "refresh : execSQL(SQL_UPDATE_NUMBER_OF_SUB_FOLDERS)"

    invoke-direct {v4, v2, v3, v5}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(JLjava/lang/String;)J

    move-result-wide v2

    const-string v4, "UPDATE folders SET number_of_total_sub_folders=(SELECT count(*) FROM folders fd WHERE folders.path=fd.parent_path)"

    .line 186
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 187
    sget-object v4, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    const-string v5, "refresh : execSQL(SQL_UPDATE_NUMBER_OF_TOTAL_SUB_FOLDERS)"

    invoke-direct {v4, v2, v3, v5}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(JLjava/lang/String;)J

    .line 1086
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string p1, "content://com.sec.android.app.music/audio"

    .line 190
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "Uri.parse(MediaContents.\u2026UTHORITY_SLASH + \"audio\")"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-string v2, "MusicSync-FoldersDbHelper"

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshFoldersDbInfo total takes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, v0

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 1089
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0
.end method

.method public static final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bucketIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " WHERE folder_bucket_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1114
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 338
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE folders SET album_id=(SELECT album_id FROM audio_meta WHERE bucket_id=folders.folder_bucket_id AND cp_attrs & 1 ORDER BY _display_name COLLATE LOCALIZED LIMIT 1) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 339
    sget-object v2, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    const-string v3, "delete : execSQL(SQL_UPDATE_ALBUM_ID)"

    invoke-direct {v2, v0, v1, v3}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(JLjava/lang/String;)J

    move-result-wide v2

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE folders SET number_of_tracks=(SELECT count(*) FROM audio_meta WHERE folders.folder_bucket_id=audio_meta.bucket_id) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 342
    sget-object p2, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    const-string v4, "delete : execSQL(SQL_UPDATE_NUMBER_OF_TRACKS)"

    invoke-direct {p2, v2, v3, v4}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(JLjava/lang/String;)J

    move-result-wide v2

    :cond_0
    const-string p2, "folders"

    const-string v4, "number_of_tracks=0 AND number_of_total_sub_folders=0"

    const/4 v5, 0x0

    .line 346
    invoke-virtual {p1, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 350
    sget-object v4, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    .line 352
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete : delete ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")- number_of_tracks=0 AND number_of_total_sub_folders=0 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 350
    invoke-direct {v4, v2, v3, v5}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(JLjava/lang/String;)J

    move-result-wide v2

    if-lez p2, :cond_1

    const-string v4, "UPDATE folders SET number_of_total_sub_folders=(SELECT count(*) FROM folders fd WHERE folders.path=fd.parent_path)"

    .line 356
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 357
    sget-object v4, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    const-string v5, "delete : execSQL(SQL_UPDATE_NUMBER_OF_TOTAL_SUB_FOLDERS)"

    invoke-direct {v4, v2, v3, v5}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(JLjava/lang/String;)J

    :cond_1
    if-gtz p2, :cond_0

    const-string p2, "UPDATE folders SET number_of_sub_folders=(SELECT count(*) FROM folders fd WHERE hide=0 AND folders.path=fd.parent_path)"

    .line 364
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 365
    sget-object p2, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    const-string v4, "delete : execSQL(SQL_UPDATE_NUMBER_OF_SUB_FOLDERS)"

    invoke-direct {p2, v2, v3, v4}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(JLjava/lang/String;)J

    .line 1120
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 367
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Trees;->a:Landroid/net/Uri;

    const-string p2, "Folders.Trees.NOTIFY_CONTENT_URI"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-string p2, "MusicSync-FoldersDbHelper"

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete :  total takes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, v0

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 1123
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0
.end method

.method public static final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 12

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ids"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string p0, "MusicSync-FoldersDbHelper"

    const-string p1, "insertFiles failed. ids length = 0"

    .line 213
    invoke-static {v2, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 217
    :cond_1
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p0, "MusicSync-FoldersDbHelper"

    const-string p1, "insertFiles failed"

    .line 219
    invoke-static {v2, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 222
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " WHERE folder_bucket_id IN("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 223
    sget-boolean v4, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->b:Z

    if-eqz v4, :cond_3

    const-string v4, "MusicSync-FoldersDbHelper"

    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert : whereBucketIds "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1094
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 231
    :try_start_0
    sget-object v6, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    invoke-direct {v6, p1}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 233
    sget-object v6, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    invoke-direct {v6, p1, p2}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 234
    sget-object v6, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    const-string v7, "insert : insertFolderFromInsertedIds"

    invoke-direct {v6, v4, v5, v7}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(JLjava/lang/String;)J

    move-result-wide v6

    .line 236
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UPDATE folders SET parent_path=substr(path, 0, length(rtrim(path, replace(path, \'/\', \'\' ))))"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 237
    sget-object v8, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    const-string v9, "insert : execSQL(SQL_UPDATE_PARENT_PATH)"

    invoke-direct {v8, v6, v7, v9}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(JLjava/lang/String;)J

    move-result-wide v6

    .line 239
    sget-object v8, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    invoke-direct {v8, p0, p1}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 240
    sget-object v8, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    const-string v9, "insert : insertParentFolder(this)"

    invoke-direct {v8, v6, v7, v9}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(JLjava/lang/String;)J

    move-result-wide v6

    const-string v8, "UPDATE folders SET bucket_id=(SELECT folder_bucket_id FROM folders fd2 WHERE fd2.path=folders.parent_path) WHERE bucket_id IS NULL"

    .line 242
    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 243
    sget-object v8, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    const-string v9, "insert : execSQL(SQL_UPDATE_BUCKET_ID)"

    invoke-direct {v8, v6, v7, v9}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(JLjava/lang/String;)J

    move-result-wide v6

    .line 245
    sget-object v8, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    invoke-direct {v8, p1}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->d(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v8

    .line 246
    sget-boolean v9, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->b:Z

    if-eqz v9, :cond_4

    const-string v9, "MusicSync-FoldersDbHelper"

    .line 247
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "newDirectories : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v9, "DELETE FROM hide_backup"

    .line 249
    invoke-virtual {p1, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 251
    move-object v9, v8

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_5

    const/4 v9, 0x1

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    :goto_1
    if-nez v9, :cond_6

    const-string v9, "UPDATE folders SET hide=ifnull((SELECT hide FROM folders fd WHERE folders.bucket_id=fd.folder_bucket_id), 0) WHERE folder_bucket_id IN (?)"

    .line 252
    new-array v2, v2, [Ljava/lang/String;

    aput-object v8, v2, v1

    invoke-virtual {p1, v9, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    sget-object v1, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    const-string v2, "insert : execSQL(SQL_UPDATE_NEW_DIRECTORIES_HIDE)"

    invoke-direct {v1, v6, v7, v2}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(JLjava/lang/String;)J

    move-result-wide v6

    .line 257
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE audio_meta SET folder_hide=ifnull((SELECT hide FROM folders WHERE folders.folder_bucket_id=audio_meta.bucket_id), 0) WHERE audio_meta.bucket_id IS NOT NULL AND _id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 258
    sget-object p2, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    const-string v0, "insert : execSQL(SQL_UPDATE_TRACKS_FOLDER_HIDE_WITH_ID)"

    invoke-direct {p2, v6, v7, v0}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(JLjava/lang/String;)J

    move-result-wide v0

    .line 263
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE folders SET album_id=(SELECT album_id FROM audio_meta WHERE bucket_id=folders.folder_bucket_id AND cp_attrs & 1 ORDER BY _display_name COLLATE LOCALIZED LIMIT 1)"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 264
    sget-object p2, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    const-string v2, "insert : execSQL(SQL_UPDATE_ALBUM_ID)"

    invoke-direct {p2, v0, v1, v2}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(JLjava/lang/String;)J

    move-result-wide v0

    .line 266
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE folders SET number_of_tracks=(SELECT count(*) FROM audio_meta WHERE folders.folder_bucket_id=audio_meta.bucket_id)"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 267
    sget-object p2, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    const-string v2, "insert : execSQL(SQL_UPDATE_NUMBER_OF_TRACKS)"

    invoke-direct {p2, v0, v1, v2}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(JLjava/lang/String;)J

    move-result-wide v0

    const-string p2, "UPDATE folders SET number_of_sub_folders=(SELECT count(*) FROM folders fd WHERE hide=0 AND folders.path=fd.parent_path)"

    .line 269
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 270
    sget-object p2, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    const-string v2, "insert : execSQL(SQL_UPDATE_NUMBER_OF_SUB_FOLDERS)"

    invoke-direct {p2, v0, v1, v2}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(JLjava/lang/String;)J

    move-result-wide v0

    const-string p2, "UPDATE folders SET number_of_total_sub_folders=(SELECT count(*) FROM folders fd WHERE folders.path=fd.parent_path)"

    .line 272
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 273
    sget-object p2, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    const-string v2, "insert : execSQL(SQL_UPDATE_NUMBER_OF_TOTAL_SUB_FOLDERS)"

    invoke-direct {p2, v0, v1, v2}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(JLjava/lang/String;)J

    .line 1100
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1103
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-nez p3, :cond_7

    .line 275
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_7
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 276
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Trees;->a:Landroid/net/Uri;

    const-string p2, "Folders.Trees.NOTIFY_CONTENT_URI"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 279
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-string p2, "MusicSync-FoldersDbHelper"

    .line 280
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "insert :  total takes "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, v4

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 1103
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0
.end method

.method public static final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    sget-boolean v0, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "MusicSync-FoldersDbHelper"

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFile : selection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " WHERE folder_bucket_id IN (SELECT bucket_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FROM audio_meta WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p3, :cond_2

    .line 389
    array-length v2, p3

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE folders SET album_id=(SELECT album_id FROM audio_meta WHERE bucket_id=folders.folder_bucket_id AND cp_attrs & 1 ORDER BY _display_name COLLATE LOCALIZED LIMIT 1) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 392
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE folders SET album_id=(SELECT album_id FROM audio_meta WHERE bucket_id=folders.folder_bucket_id AND cp_attrs & 1 ORDER BY _display_name COLLATE LOCALIZED LIMIT 1) "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 394
    :goto_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Trees;->a:Landroid/net/Uri;

    const-string p2, "Folders.Trees.NOTIFY_CONTENT_URI"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-string p2, "MusicSync-FoldersDbHelper"

    .line 397
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFile :  total takes "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, v0

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    const-string v2, "folders"

    const-string v1, "hide"

    .line 820
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 818
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/io/Closeable;

    const/4 p2, 0x0

    .line 826
    check-cast p2, Ljava/lang/Throwable;

    :try_start_0
    move-object p3, p1

    check-cast p3, Landroid/database/Cursor;

    .line 827
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 828
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_0

    const/4 p3, 0x1

    const/4 v0, 0x1

    .line 833
    :cond_1
    sget-object p3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p3

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3

    :cond_2
    :goto_1
    return v0
.end method

.method private final a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_2

    .line 708
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 1165
    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1164
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method private final b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    const-string v6, "bucket_id"

    .line 604
    invoke-virtual {v2, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 605
    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Trees;->c:Ljava/lang/String;

    .line 607
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "bucket_id=?"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_0

    .line 609
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    :cond_0
    sget-object v4, Lcom/samsung/android/app/music/provider/MusicDBInfo$Folder$Trees;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$Folder$Trees;

    move-object/from16 v9, p7

    invoke-virtual {v4, v9}, Lcom/samsung/android/app/music/provider/MusicDBInfo$Folder$Trees;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 615
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 613
    invoke-static {v4, v3, v8, v9, v9}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 619
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_8

    const-string v6, "MusicSync-FoldersDbHelper"

    const-string v7, "queryFolderTrees : bucketId.equals(rootBucketId) true"

    .line 620
    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 626
    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->e:Ljava/lang/String;

    .line 630
    new-array v10, v8, [Ljava/lang/String;

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "MediaContents.Folders.getBucketId(deviceRoot)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v11, v10, v9

    .line 629
    invoke-direct {v0, v10, v5}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 627
    invoke-virtual {v1, v4, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    const-string v11, "deviceCursor"

    .line 634
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lez v11, :cond_1

    const-wide/16 v11, -0x1

    .line 637
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    .line 638
    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v12, "Folders.getBucketId(deviceRoot)"

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 636
    invoke-direct {v0, v3, v11, v7}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 635
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 644
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-interface {v10, v11, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 646
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 648
    invoke-static {v11}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "MusicSync-FoldersDbHelper"

    .line 649
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "queryFolderTrees sdRoot "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", bucketId "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    new-array v13, v8, [Ljava/lang/String;

    const-string v14, "sdRootBucketId"

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v12, v13, v9

    invoke-direct {v0, v13, v5}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v4, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    const-string v13, "sdCursor"

    .line 651
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-lez v13, :cond_2

    const-wide/16 v13, -0x2

    .line 655
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    .line 656
    invoke-static {v11}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "Folders.getBucketId(sdRoot)"

    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 654
    invoke-direct {v0, v3, v13, v11}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 653
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    .line 662
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-interface {v12, v13, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    .line 665
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 666
    invoke-static {}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->a()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 667
    invoke-static {v12}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "MusicSync-FoldersDbHelper"

    .line 670
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "queryFolderTrees privateRoot "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " , bucketId "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 668
    invoke-static {v14, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    new-array v9, v8, [Ljava/lang/String;

    const-string v14, "privateRootBucketId"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x0

    aput-object v13, v9, v14

    invoke-direct {v0, v9, v5}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 672
    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v4, "privateCursor"

    .line 676
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_4

    const-wide/16 v4, -0x3

    .line 680
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 681
    invoke-static {v12}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "Folders.getBucketId(privateRoot)"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 679
    invoke-direct {v0, v3, v4, v5}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 678
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    .line 687
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_5
    if-eqz v7, :cond_6

    if-nez v11, :cond_6

    const/4 v1, 0x0

    .line 692
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    .line 694
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 695
    check-cast v6, Ljava/util/Collection;

    .line 1163
    new-array v1, v1, [Landroid/database/Cursor;

    invoke-interface {v6, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    check-cast v1, [Landroid/database/Cursor;

    .line 695
    new-instance v2, Landroid/database/MergeCursor;

    invoke-direct {v2, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v10, v2

    check-cast v10, Landroid/database/Cursor;

    goto :goto_4

    .line 1163
    :cond_7
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 700
    :cond_8
    new-array v3, v8, [Ljava/lang/String;

    const-string v7, "bucketId"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    aput-object v6, v3, v7

    invoke-direct {v0, v3, v5}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 701
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v10, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_9
    :goto_4
    return-object v10
.end method

.method private final b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 16

    move-object/from16 v1, p2

    .line 436
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 439
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 440
    sget-boolean v3, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->b:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const-string v3, "MusicSync-FoldersDbHelper"

    .line 441
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertParentFolder : sdRoot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v3, "SELECT parent_path FROM folders WHERE parent_path NOT IN (SELECT path FROM folders) AND (parent_path LIKE ? OR parent_path LIKE ?) GROUP BY parent_path"

    const/4 v5, 0x2

    .line 445
    new-array v6, v5, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x25

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->c:Ljava/lang/String;

    :goto_0
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v4

    .line 443
    invoke-virtual {v1, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    const/4 v3, 0x0

    .line 446
    check-cast v3, Ljava/lang/Throwable;

    :try_start_0
    move-object v6, v2

    check-cast v6, Landroid/database/Cursor;

    if-eqz v6, :cond_f

    .line 447
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_6

    .line 1125
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_3

    goto/16 :goto_4

    .line 452
    :cond_3
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "path"

    .line 453
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v7, :cond_e

    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    check-cast v7, Ljava/lang/CharSequence;

    const-string v9, "/"

    new-instance v10, Lkotlin/text/Regex;

    invoke-direct {v10, v9}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7, v8}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v7

    .line 1128
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1129
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v7, v9}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v9

    .line 1130
    :cond_4
    invoke-interface {v9}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1131
    invoke-interface {v9}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 455
    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_5

    const/4 v10, 0x1

    goto :goto_1

    :cond_5
    const/4 v10, 0x0

    :goto_1
    if-nez v10, :cond_4

    .line 1132
    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/util/ListIterator;->nextIndex()I

    move-result v9

    add-int/2addr v9, v4

    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt;->b(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v7

    goto :goto_2

    .line 1136
    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->a()Ljava/util/List;

    move-result-object v7

    :goto_2
    check-cast v7, Ljava/util/Collection;

    if-eqz v7, :cond_d

    .line 1138
    new-array v9, v8, [Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 454
    check-cast v7, [Ljava/lang/String;

    .line 456
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1139
    array-length v10, v7

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_7

    aget-object v12, v7, v11

    .line 459
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "pathBuilder.toString()"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 460
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v15, 0x2f

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    move-object v12, v0

    check-cast v12, Ljava/util/Map;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "pathBuilder.toString()"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v12, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1141
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 464
    :goto_4
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 446
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1147
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_1
    const-string v2, "INSERT OR IGNORE INTO folders (bucket_id, folder_bucket_id, bucket_display_name, parent_path, path) values (?,?,?,?,?)"

    .line 470
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 471
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    const-string v6, "pathMap.keys"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .line 1153
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 472
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 473
    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 474
    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "path"

    .line 475
    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v7, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_9
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v4

    if-eqz v6, :cond_a

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    invoke-virtual {v2, v4, v8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 478
    invoke-virtual {v2, v5, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v9, 0x3

    .line 479
    invoke-virtual {v2, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v9, 0x4

    .line 480
    invoke-virtual {v2, v9, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v9, 0x5

    .line 481
    invoke-virtual {v2, v9, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 483
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 484
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 485
    sget-boolean v9, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->b:Z

    if-eqz v9, :cond_8

    const-string v9, "MusicSync-FoldersDbHelper"

    .line 488
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "insertParentFolder : bucketId["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "], "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "bucketDisplayName["

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "], parentPath["

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "], path["

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x5d

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 486
    invoke-static {v9, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 475
    :cond_a
    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :cond_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1155
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1158
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 1138
    :cond_c
    :try_start_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1137
    :cond_d
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_e
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 448
    :cond_f
    :goto_6
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 446
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_7
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DELETE FROM hide_backup"

    .line 420
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT OR IGNORE INTO hide_backup (folder_bucket_id, hide) SELECT folder_bucket_id, hide FROM folders"

    .line 421
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private final b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT OR IGNORE INTO folders (folder_bucket_id, bucket_display_name, bucket_display_name_pinyin, number_of_tracks, path, dummy) SELECT bucket_id, bucket_display_name, bucket_display_name_pinyin, count(*) AS number_of_tracks, substr(_data, 0, length(rtrim(_data, replace(_data, \'/\', \'\' )))) AS path, min(_display_name COLLATE LOCALIZED) AS dummy FROM audio_meta WHERE cp_attrs & 1 AND _id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")  GROUP BY bucket_id "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private final c(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 17

    move-object/from16 v0, p4

    .line 737
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 738
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "folders"

    const-string v4, "path"

    .line 742
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 740
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    check-cast v4, Ljava/io/Closeable;

    const/4 v5, 0x0

    .line 748
    move-object v6, v5

    check-cast v6, Ljava/lang/Throwable;

    :try_start_0
    move-object v7, v4

    check-cast v7, Landroid/database/Cursor;

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    .line 749
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_0

    goto/16 :goto_2

    .line 1167
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_1

    goto :goto_0

    .line 757
    :cond_1
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 759
    :goto_0
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    invoke-static {v4, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string v4, "audio_meta"

    const-string v6, "_data LIKE ?"

    .line 763
    invoke-static {v4, v0, v6, v5, v5}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 768
    new-instance v4, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;

    const/16 v15, 0x1f4

    const/16 v16, 0x0

    move-object v11, v4

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-direct/range {v11 .. v16}, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILjava/lang/Integer;)V

    .line 775
    check-cast v3, Ljava/lang/Iterable;

    .line 1172
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "rawQuery"

    .line 776
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v6, v8, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/%"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v10

    invoke-virtual {v4, v0, v6}, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 779
    :cond_2
    invoke-virtual {v4}, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->a()Landroid/database/Cursor;

    move-result-object v0

    const-string v3, "MusicSync-FoldersDbHelper"

    .line 782
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryFolderTreesTracks c count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " takes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 780
    invoke-static {v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    :goto_2
    :try_start_1
    const-string v1, "MusicSync-FoldersDbHelper"

    .line 752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryFolderTreesTracks - c is empty. return empty pathCursor -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v7, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 750
    invoke-static {v8, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 754
    sget-object v1, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a:Lcom/samsung/android/app/music/provider/FoldersDbHelper;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 748
    :try_start_2
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    invoke-static {v4, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "UPDATE folders SET hide=1 WHERE folder_bucket_id IN (SELECT folder_bucket_id FROM hide_backup WHERE hide=1)"

    .line 428
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DELETE FROM hide_backup"

    .line 432
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private final c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 13

    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1012
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "audio_playlists_map"

    const-string v2, "playlist_id"

    .line 1016
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    .line 1017
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "playlist_id IN (SELECT _id FROM audio_playlists WHERE is_sync=0)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p1

    .line 1013
    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    const/4 v3, 0x0

    .line 1024
    move-object v4, v3

    check-cast v4, Ljava/lang/Throwable;

    :try_start_0
    move-object v5, v2

    check-cast v5, Landroid/database/Cursor;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    .line 1025
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_2

    const-string v8, "playlist_id"

    .line 1027
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1203
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_0

    .line 1029
    :cond_0
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1030
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v12, 0x2c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1033
    :goto_0
    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 1034
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1037
    :cond_2
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1024
    invoke-static {v2, v4}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1039
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v6, 0x1

    :cond_3
    if-eqz v6, :cond_4

    const-string p1, "MusicSync-FoldersDbHelper"

    const-string p2, "updateFolderTreesInternal affected localPlaylistIds is empty."

    .line 1040
    invoke-static {v7, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1044
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "localPlaylistIdBuilder.toString()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1045
    sget-boolean v2, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->b:Z

    if-eqz v2, :cond_5

    const-string v2, "MusicSync-FoldersDbHelper"

    .line 1046
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateFolderTreesInternal localPlaylistIds : ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio_id IN ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") AND playlist_id IN ("

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "audio_playlists_map"

    .line 1051
    invoke-virtual {p1, v0, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 1052
    sget-boolean v0, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->b:Z

    if-eqz v0, :cond_6

    const-string v0, "MusicSync-FoldersDbHelper"

    .line 1055
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFolderTreesInternal music db deleted : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1053
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-lez p2, :cond_7

    .line 1059
    check-cast v1, Ljava/lang/Iterable;

    .line 1208
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 1060
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "playlist_id"

    .line 1061
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "sync_down_action"

    const-string v1, "2_playlist_members"

    .line 1062
    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "request_date"

    .line 1068
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1066
    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "sync_playlist_list"

    .line 1070
    invoke-virtual {p1, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_2

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v4, p1

    .line 1024
    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-static {v2, v4}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private final d(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .locals 6

    const-string v0, "SELECT folder_bucket_id FROM folders WHERE folder_bucket_id NOT IN (SELECT folder_bucket_id FROM hide_backup) ORDER BY path"

    const/4 v1, 0x0

    .line 993
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 994
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const-string v2, "folder_bucket_id"

    .line 998
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 999
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1197
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 1001
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1003
    :goto_0
    move-object v0, v3

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 1004
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1006
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sb.toString()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :cond_4
    :goto_2
    :try_start_1
    const-string v0, "MusicSync-FoldersDbHelper"

    const-string v2, "queryNewDirectories cursor is null or 0 size."

    .line 995
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 996
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 993
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

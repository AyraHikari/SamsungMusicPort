.class public final Lcom/google/android/gms/measurement/internal/zzal;
.super Lcom/google/android/gms/measurement/internal/zzf;


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/zzam;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbt;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_app_measurement_local.db"

    .line 4
    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Lcom/google/android/gms/measurement/internal/zzal;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzal;->a:Lcom/google/android/gms/measurement/internal/zzam;

    return-void
.end method

.method private final a(I[B)Z
    .locals 17
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->b()V

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 19
    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzal;->b:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 21
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "type"

    .line 22
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "entry"

    move-object/from16 v4, p2

    .line 23
    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x5

    :goto_0
    if-ge v5, v4, :cond_e

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 28
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzal;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v9, :cond_2

    .line 30
    :try_start_1
    iput-boolean v8, v1, Lcom/google/android/gms/measurement/internal/zzal;->b:Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v9, :cond_1

    .line 32
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    return v2

    :catch_0
    move-exception v0

    move-object v12, v7

    :goto_1
    move-object v7, v9

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_6

    .line 34
    :cond_2
    :try_start_2
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v10, 0x0

    const-string v0, "select count(1) from messages"

    .line 36
    invoke-virtual {v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v12, :cond_3

    .line 37
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 38
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v7, v12

    goto/16 :goto_6

    :cond_3
    :goto_2
    const-wide/32 v13, 0x186a0

    cmp-long v0, v10, v13

    if-ltz v0, :cond_4

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v15, "Data loss, local db full"

    invoke-virtual {v0, v15}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    sub-long/2addr v13, v10

    const-wide/16 v10, 0x1

    add-long/2addr v13, v10

    const-string v0, "messages"

    const-string v10, "rowid in (select rowid from messages order by rowid asc limit ?)"

    .line 42
    new-array v11, v8, [Ljava/lang/String;

    .line 43
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v2

    .line 44
    invoke-virtual {v9, v0, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v10, v0

    cmp-long v0, v10, v13

    if-eqz v0, :cond_4

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v15, "Different delete count than expected in local db. expected, received, difference"

    .line 48
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 49
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v16, 0x0

    sub-long/2addr v13, v10

    .line 50
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 51
    invoke-virtual {v0, v15, v4, v2, v10}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    const-string v0, "messages"

    .line 52
    invoke-virtual {v9, v0, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 53
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 54
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v12, :cond_5

    .line 56
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v9, :cond_6

    .line 58
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    return v8

    :catch_4
    move-object v7, v12

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v9, v7

    move-object v12, v9

    goto :goto_8

    :catch_5
    move-exception v0

    move-object v12, v7

    :goto_3
    if-eqz v7, :cond_7

    .line 75
    :try_start_4
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 76
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v9, v7

    goto :goto_8

    .line 77
    :cond_7
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v4, "Error writing entry to local database"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    iput-boolean v8, v1, Lcom/google/android/gms/measurement/internal/zzal;->b:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v12, :cond_8

    .line 80
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v7, :cond_b

    .line 82
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_7

    :catch_6
    move-object v9, v7

    :catch_7
    :goto_5
    int-to-long v10, v6

    .line 68
    :try_start_5
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    add-int/lit8 v6, v6, 0x14

    if-eqz v7, :cond_9

    .line 71
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v9, :cond_b

    .line 73
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_7

    :catch_8
    move-exception v0

    move-object v9, v7

    .line 61
    :goto_6
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v4, "Error writing entry to local database"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    iput-boolean v8, v1, Lcom/google/android/gms/measurement/internal/zzal;->b:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v7, :cond_a

    .line 64
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v9, :cond_b

    .line 66
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_b
    :goto_7
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x5

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    move-object v12, v7

    :goto_8
    if-eqz v12, :cond_c

    .line 84
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_c
    if-eqz v9, :cond_d

    .line 86
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_d
    throw v0

    .line 88
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v2, "Failed to write entry to local database"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method

.method private final y()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 236
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzal;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzal;->a:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzal;->b:Z

    return-object v1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a(I)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->b()V

    .line 119
    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzal;->b:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    .line 121
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v0

    const-string v4, "google_app_measurement_local.db"

    .line 125
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x5

    :goto_0
    if-ge v6, v4, :cond_13

    const/4 v8, 0x1

    .line 132
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzal;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-nez v15, :cond_3

    .line 134
    :try_start_1
    iput-boolean v8, v1, Lcom/google/android/gms/measurement/internal/zzal;->b:Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v15, :cond_2

    .line 136
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    return-object v2

    :catchall_0
    move-exception v0

    move-object v9, v2

    move-object v4, v15

    goto/16 :goto_f

    :catch_0
    move-exception v0

    move-object v9, v2

    move-object v4, v15

    goto/16 :goto_b

    :catch_1
    move-object v4, v15

    goto/16 :goto_9

    :catch_2
    move-exception v0

    move-object v9, v2

    move-object v4, v15

    goto/16 :goto_d

    .line 138
    :cond_3
    :try_start_2
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v10, "messages"

    const-string v0, "rowid"

    const-string v9, "type"

    const-string v11, "entry"

    .line 139
    filled-new-array {v0, v9, v11}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v0, 0x0

    const-string v16, "rowid asc"

    const/16 v9, 0x64

    .line 140
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object v9, v15

    move-object v4, v15

    move-object v15, v0

    .line 141
    :try_start_3
    invoke-virtual/range {v9 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const-wide/16 v10, -0x1

    .line 143
    :cond_4
    :goto_1
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 144
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 145
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v12, 0x2

    .line 146
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    if-nez v0, :cond_5

    .line 148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 149
    :try_start_5
    array-length v0, v13

    invoke-virtual {v12, v13, v5, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 150
    invoke-virtual {v12, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 151
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzad;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzad;
    :try_end_5
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 152
    :try_start_6
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    if-eqz v0, :cond_4

    .line 158
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 155
    :catch_3
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v13, "Failed to load event from local database"

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 156
    :try_start_8
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :goto_2
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_5
    if-ne v0, v8, :cond_6

    .line 160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 162
    :try_start_9
    array-length v0, v13

    invoke-virtual {v12, v13, v5, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 163
    invoke-virtual {v12, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 164
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzfh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzfh;
    :try_end_9
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 165
    :try_start_a
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_a .. :try_end_a} :catch_7
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_a .. :try_end_a} :catch_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 168
    :catch_4
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v13, "Failed to load user property from local database"

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 169
    :try_start_c
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_4

    .line 173
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 171
    :goto_4
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_6
    if-ne v0, v12, :cond_7

    .line 175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_c .. :try_end_c} :catch_7
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_c .. :try_end_c} :catch_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 177
    :try_start_d
    array-length v0, v13

    invoke-virtual {v12, v13, v5, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 178
    invoke-virtual {v12, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 179
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 180
    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzl;
    :try_end_d
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 181
    :try_start_e
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_e .. :try_end_e} :catch_7
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_e .. :try_end_e} :catch_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_6

    .line 184
    :catch_5
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v13, "Failed to load user property from local database"

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 185
    :try_start_10
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    :goto_5
    if-eqz v0, :cond_4

    .line 189
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 187
    :goto_6
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 191
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v12, "Unknown record type in local database"

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v0, "messages"

    const-string v12, "rowid <= ?"

    .line 193
    new-array v13, v8, [Ljava/lang/String;

    .line 194
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v13, v5

    .line 195
    invoke-virtual {v4, v0, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 196
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v0, v10, :cond_9

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v10, "Fewer entries removed from local database than expected"

    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 198
    :cond_9
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 199
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    if-eqz v9, :cond_a

    .line 202
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v4, :cond_b

    .line 204
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_b
    return-object v3

    :catch_6
    move-exception v0

    goto :goto_b

    :catch_7
    move-exception v0

    goto/16 :goto_d

    :catchall_4
    move-exception v0

    goto :goto_7

    :catch_8
    move-exception v0

    goto :goto_8

    :catch_9
    move-exception v0

    goto :goto_a

    :catchall_5
    move-exception v0

    move-object v4, v15

    :goto_7
    move-object v9, v2

    goto/16 :goto_f

    :catch_a
    move-exception v0

    move-object v4, v15

    :goto_8
    move-object v9, v2

    goto :goto_b

    :catch_b
    :goto_9
    move-object v9, v2

    goto :goto_c

    :catch_c
    move-exception v0

    move-object v4, v15

    :goto_a
    move-object v9, v2

    goto :goto_d

    :catchall_6
    move-exception v0

    move-object v4, v2

    move-object v9, v4

    goto :goto_f

    :catch_d
    move-exception v0

    move-object v4, v2

    move-object v9, v4

    :goto_b
    if-eqz v4, :cond_c

    .line 221
    :try_start_11
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 222
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 223
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v10

    const-string v11, "Error reading entries from local database"

    invoke-virtual {v10, v11, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    iput-boolean v8, v1, Lcom/google/android/gms/measurement/internal/zzal;->b:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    if-eqz v9, :cond_d

    .line 226
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_d
    if-eqz v4, :cond_10

    .line 228
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_e

    :catch_e
    move-object v4, v2

    move-object v9, v4

    :catch_f
    :goto_c
    int-to-long v10, v7

    .line 214
    :try_start_12
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    add-int/lit8 v7, v7, 0x14

    if-eqz v9, :cond_e

    .line 217
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_e
    if-eqz v4, :cond_10

    .line 219
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_e

    :catch_10
    move-exception v0

    move-object v4, v2

    move-object v9, v4

    .line 207
    :goto_d
    :try_start_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v10

    const-string v11, "Error reading entries from local database"

    invoke-virtual {v10, v11, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    iput-boolean v8, v1, Lcom/google/android/gms/measurement/internal/zzal;->b:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    if-eqz v9, :cond_f

    .line 210
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_f
    if-eqz v4, :cond_10

    .line 212
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_10
    :goto_e
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x5

    goto/16 :goto_0

    :catchall_7
    move-exception v0

    :goto_f
    if-eqz v9, :cond_11

    .line 230
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_11
    if-eqz v4, :cond_12

    .line 232
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_12
    throw v0

    .line 234
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v3, "Failed to read events from database in reasonable time"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return-object v2
.end method

.method public final bridge synthetic a()V
    .locals 0

    .line 243
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->a()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzad;)Z
    .locals 3

    .line 90
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzad;->writeToParcel(Landroid/os/Parcel;I)V

    .line 92
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 93
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 94
    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v0, "Event is too long for local database. Sending event directly to service"

    .line 97
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return v1

    .line 99
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzal;->a(I[B)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzfh;)Z
    .locals 3

    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfh;->writeToParcel(Landroid/os/Parcel;I)V

    .line 102
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 104
    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v0, "User property too long for local database. Sending directly to service"

    .line 107
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 109
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzal;->a(I[B)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzl;)Z
    .locals 2

    .line 110
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Landroid/os/Parcelable;)[B

    move-result-object p1

    .line 111
    array-length v0, p1

    const/high16 v1, 0x20000

    if-le v0, v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v0, "Conditional user property too long for local database. Sending directly to service"

    .line 114
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x2

    .line 116
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzal;->a(I[B)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic b()V
    .locals 0

    .line 244
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->b()V

    return-void
.end method

.method public final bridge synthetic c()V
    .locals 0

    .line 245
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->c()V

    return-void
.end method

.method public final bridge synthetic d()V
    .locals 0

    .line 246
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->d()V

    return-void
.end method

.method public final bridge synthetic e()Lcom/google/android/gms/measurement/internal/zza;
    .locals 1

    .line 247
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->e()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Lcom/google/android/gms/measurement/internal/zzcs;
    .locals 1

    .line 248
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->f()Lcom/google/android/gms/measurement/internal/zzcs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/android/gms/measurement/internal/zzaj;
    .locals 1

    .line 249
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->g()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Lcom/google/android/gms/measurement/internal/zzdr;
    .locals 1

    .line 250
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->h()Lcom/google/android/gms/measurement/internal/zzdr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Lcom/google/android/gms/measurement/internal/zzdo;
    .locals 1

    .line 251
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->i()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lcom/google/android/gms/measurement/internal/zzal;
    .locals 1

    .line 252
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->j()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic k()Lcom/google/android/gms/measurement/internal/zzeq;
    .locals 1

    .line 253
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->k()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()Lcom/google/android/gms/measurement/internal/zzx;
    .locals 1

    .line 254
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->l()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 255
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic n()Landroid/content/Context;
    .locals 1

    .line 256
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->n()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic o()Lcom/google/android/gms/measurement/internal/zzan;
    .locals 1

    .line 257
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/measurement/internal/zzfk;
    .locals 1

    .line 258
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/measurement/internal/zzbo;
    .locals 1

    .line 259
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lcom/google/android/gms/measurement/internal/zzap;
    .locals 1

    .line 260
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/measurement/internal/zzba;
    .locals 1

    .line 261
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/measurement/internal/zzn;
    .locals 1

    .line 262
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/measurement/internal/zzk;
    .locals 1

    .line 263
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->u()Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v0

    return-object v0
.end method

.method protected final v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final x()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->b()V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 9
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzal;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "messages"

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    if-lez v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Reset local analytics data. records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Error resetting local analytics data. error"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

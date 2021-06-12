.class final Lcom/google/android/gms/measurement/internal/zzq;
.super Lcom/google/android/gms/measurement/internal/zzez;


# static fields
.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;


# instance fields
.field private final h:Lcom/google/android/gms/measurement/internal/zzt;

.field private final i:Lcom/google/android/gms/measurement/internal/zzev;


# direct methods
.method static constructor <clinit>()V
    .locals 47

    const-string v0, "last_bundled_timestamp"

    const-string v1, "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;"

    const-string v2, "last_bundled_day"

    const-string v3, "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;"

    const-string v4, "last_sampled_complex_event_id"

    const-string v5, "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;"

    const-string v6, "last_sampling_rate"

    const-string v7, "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;"

    const-string v8, "last_exempt_from_sampling"

    const-string v9, "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;"

    .line 1491
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzq;->b:[Ljava/lang/String;

    const-string v0, "origin"

    const-string v1, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"

    .line 1492
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzq;->c:[Ljava/lang/String;

    const-string v1, "app_version"

    const-string v2, "ALTER TABLE apps ADD COLUMN app_version TEXT;"

    const-string v3, "app_store"

    const-string v4, "ALTER TABLE apps ADD COLUMN app_store TEXT;"

    const-string v5, "gmp_version"

    const-string v6, "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;"

    const-string v7, "dev_cert_hash"

    const-string v8, "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;"

    const-string v9, "measurement_enabled"

    const-string v10, "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;"

    const-string v11, "last_bundle_start_timestamp"

    const-string v12, "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;"

    const-string v13, "day"

    const-string v14, "ALTER TABLE apps ADD COLUMN day INTEGER;"

    const-string v15, "daily_public_events_count"

    const-string v16, "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;"

    const-string v17, "daily_events_count"

    const-string v18, "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;"

    const-string v19, "daily_conversions_count"

    const-string v20, "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;"

    const-string v21, "remote_config"

    const-string v22, "ALTER TABLE apps ADD COLUMN remote_config BLOB;"

    const-string v23, "config_fetched_time"

    const-string v24, "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;"

    const-string v25, "failed_config_fetch_time"

    const-string v26, "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;"

    const-string v27, "app_version_int"

    const-string v28, "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;"

    const-string v29, "firebase_instance_id"

    const-string v30, "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;"

    const-string v31, "daily_error_events_count"

    const-string v32, "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;"

    const-string v33, "daily_realtime_events_count"

    const-string v34, "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;"

    const-string v35, "health_monitor_sample"

    const-string v36, "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;"

    const-string v37, "android_id"

    const-string v38, "ALTER TABLE apps ADD COLUMN android_id INTEGER;"

    const-string v39, "adid_reporting_enabled"

    const-string v40, "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;"

    const-string v41, "ssaid_reporting_enabled"

    const-string v42, "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;"

    const-string v43, "admob_app_id"

    const-string v44, "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;"

    const-string v45, "linked_admob_app_id"

    const-string v46, "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;"

    .line 1493
    filled-new-array/range {v1 .. v46}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzq;->d:[Ljava/lang/String;

    const-string v0, "realtime"

    const-string v1, "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"

    .line 1494
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzq;->e:[Ljava/lang/String;

    const-string v0, "has_realtime"

    const-string v1, "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;"

    const-string v2, "retry_count"

    const-string v3, "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"

    .line 1495
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzq;->f:[Ljava/lang/String;

    const-string v0, "previous_install_count"

    const-string v1, "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"

    .line 1496
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzq;->g:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfa;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzez;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzev;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/measurement/internal/zzev;-><init>(Lcom/google/android/gms/common/util/Clock;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzq;->i:Lcom/google/android/gms/measurement/internal/zzev;

    const-string p1, "google_app_measurement.db"

    .line 5
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzt;-><init>(Lcom/google/android/gms/measurement/internal/zzq;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzq;->h:Lcom/google/android/gms/measurement/internal/zzt;

    return-void
.end method

.method static synthetic H()[Ljava/lang/String;
    .locals 1

    .line 1485
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzq;->b:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic I()[Ljava/lang/String;
    .locals 1

    .line 1486
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzq;->c:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic J()[Ljava/lang/String;
    .locals 1

    .line 1487
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzq;->d:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic K()[Ljava/lang/String;
    .locals 1

    .line 1488
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzq;->f:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic L()[Ljava/lang/String;
    .locals 1

    .line 1489
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzq;->e:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic M()[Ljava/lang/String;
    .locals 1

    .line 1490
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzq;->g:[Ljava/lang/String;

    return-object v0
.end method

.method private final N()Z
    .locals 2

    .line 1481
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_app_measurement.db"

    .line 1483
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private final a(Ljava/lang/String;[Ljava/lang/String;J)J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 33
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p3, 0x0

    .line 35
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    .line 37
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide p3

    :cond_1
    if-eqz p2, :cond_2

    .line 41
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-wide p3

    :catchall_0
    move-exception p1

    move-object v1, p2

    goto :goto_1

    :catch_0
    move-exception p3

    move-object v1, p2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p3

    .line 44
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string p4, "Database error"

    invoke-virtual {p2, p4, p1, p3}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    throw p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    if-eqz v1, :cond_3

    .line 47
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p1
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/zzq;)Lcom/google/android/gms/measurement/internal/zzev;
    .locals 0

    .line 1484
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzq;->i:Lcom/google/android/gms/measurement/internal/zzev;

    return-object p0
.end method

.method private final a(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1195
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1205
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Loaded invalid unknown value type, ignoring it"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 1203
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Loaded invalid blob type value, ignoring it"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return-object v1

    .line 1202
    :pswitch_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1201
    :pswitch_2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 1200
    :pswitch_3
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1198
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Loaded invalid null value from database"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1185
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1186
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1188
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1189
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 1190
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void

    .line 1191
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 1192
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    return-void

    .line 1193
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid value type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final a(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzfv;)Z
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 931
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 932
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 933
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 934
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    iget-object v0, p3, Lcom/google/android/gms/internal/measurement/zzfv;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 936
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 937
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v2, "Event filter had no event name. Audience definition ignored. appId, audienceId, filterId"

    .line 938
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 939
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p3, Lcom/google/android/gms/internal/measurement/zzfv;->a:Ljava/lang/Integer;

    .line 940
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 941
    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    .line 943
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzzg;->e()I

    move-result v0

    .line 944
    new-array v0, v0, [B

    .line 946
    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzyy;->a([BII)Lcom/google/android/gms/internal/measurement/zzyy;

    move-result-object v2

    .line 948
    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/measurement/zzzg;->a(Lcom/google/android/gms/internal/measurement/zzyy;)V

    .line 949
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzyy;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 957
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    .line 958
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "audience_id"

    .line 959
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "filter_id"

    .line 960
    iget-object v3, p3, Lcom/google/android/gms/internal/measurement/zzfv;->a:Ljava/lang/Integer;

    invoke-virtual {v2, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "event_name"

    .line 961
    iget-object p3, p3, Lcom/google/android/gms/internal/measurement/zzfv;->b:Ljava/lang/String;

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "data"

    .line 962
    invoke-virtual {v2, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 963
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string p3, "event_filters"

    const/4 v0, 0x0

    const/4 v3, 0x5

    .line 965
    invoke-virtual {p2, p3, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p2

    const-wide/16 v2, -0x1

    cmp-long p2, p2, v2

    if-nez p2, :cond_1

    .line 967
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    .line 968
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string p3, "Failed to insert event filter (got -1). appId"

    .line 969
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    .line 972
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p3

    .line 973
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p3

    const-string v0, "Error storing event filter. appId"

    .line 974
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    :catch_1
    move-exception p2

    .line 952
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p3

    .line 953
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p3

    const-string v0, "Configuration loss. Failed to serialize event filter. appId"

    .line 954
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 955
    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1
.end method

.method private final a(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzfy;)Z
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 977
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 978
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 979
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 980
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    iget-object v0, p3, Lcom/google/android/gms/internal/measurement/zzfy;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 982
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 983
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v2, "Property filter had no property name. Audience definition ignored. appId, audienceId, filterId"

    .line 984
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 985
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p3, Lcom/google/android/gms/internal/measurement/zzfy;->a:Ljava/lang/Integer;

    .line 986
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 987
    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    .line 989
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzzg;->e()I

    move-result v0

    .line 990
    new-array v0, v0, [B

    .line 992
    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzyy;->a([BII)Lcom/google/android/gms/internal/measurement/zzyy;

    move-result-object v2

    .line 994
    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/measurement/zzzg;->a(Lcom/google/android/gms/internal/measurement/zzyy;)V

    .line 995
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzyy;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1003
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    .line 1004
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "audience_id"

    .line 1005
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "filter_id"

    .line 1006
    iget-object v3, p3, Lcom/google/android/gms/internal/measurement/zzfy;->a:Ljava/lang/Integer;

    invoke-virtual {v2, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "property_name"

    .line 1007
    iget-object p3, p3, Lcom/google/android/gms/internal/measurement/zzfy;->b:Ljava/lang/String;

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "data"

    .line 1008
    invoke-virtual {v2, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1009
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string p3, "property_filters"

    const/4 v0, 0x0

    const/4 v3, 0x5

    .line 1011
    invoke-virtual {p2, p3, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p2

    const-wide/16 v2, -0x1

    cmp-long p2, p2, v2

    if-nez p2, :cond_1

    .line 1013
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    .line 1014
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string p3, "Failed to insert property filter (got -1). appId"

    .line 1015
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    .line 1019
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p3

    .line 1020
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p3

    const-string v0, "Error storing property filter. appId"

    .line 1021
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    :catch_1
    move-exception p2

    .line 998
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p3

    .line 999
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p3

    const-string v0, "Configuration loss. Failed to serialize property filter. appId"

    .line 1000
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1001
    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1
.end method

.method private final a(Ljava/lang/String;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1112
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1113
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 1114
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 1115
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "select count(1) from audience_filter_values where app_id=?"

    const/4 v3, 0x1

    .line 1116
    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 1117
    invoke-direct {p0, v2, v4}, Lcom/google/android/gms/measurement/internal/zzq;->b(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1124
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v2

    .line 1125
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzaf;->N:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v2, p1, v6}, Lcom/google/android/gms/measurement/internal/zzn;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)I

    move-result v2

    const/16 v6, 0x7d0

    .line 1126
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1127
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v6, v2

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    return v1

    .line 1131
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 1132
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 1133
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 1134
    instance-of v7, v6, Ljava/lang/Integer;

    if-nez v7, :cond_1

    goto :goto_1

    .line 1136
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    const-string p2, ","

    .line 1138
    invoke-static {p2, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    add-int/2addr v4, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "("

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v4, "audience_filter_values"

    .line 1139
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit16 v6, v6, 0x8c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " order by rowid desc limit -1 offset ?)"

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v1

    .line 1140
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    .line 1141
    invoke-virtual {v0, v4, p2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    return v3

    :cond_4
    return v1

    :catch_0
    move-exception p2

    .line 1120
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 1121
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v2, "Database error querying filters. appId"

    .line 1122
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1
.end method

.method private final b(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 19
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 21
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    .line 23
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v0

    .line 25
    :cond_1
    :try_start_2
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database returned empty set"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, p2

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 27
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string v2, "Database error"

    invoke-virtual {p2, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    if-eqz p2, :cond_2

    .line 30
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1
.end method


# virtual methods
.method public final A()Z
    .locals 4

    const-string v0, "select count(1) > 0 from queue where has_realtime = 1"

    const/4 v1, 0x0

    .line 759
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzq;->b(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final B()V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 816
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 817
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 818
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzq;->N()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 820
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->f:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbd;->a()J

    move-result-wide v0

    .line 821
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 822
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 823
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzaf;->G:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 825
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->f:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbd;->a(J)V

    .line 827
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 828
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 829
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzq;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 830
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    .line 831
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 832
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 833
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->j()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "queue"

    const-string v3, "abs(bundle_end_timestamp - ?) > cast(? as integer)"

    .line 835
    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 837
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Deleted stale rows. rowsDeleted"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final C()J
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-string v0, "select max(bundle_end_timestamp) from queue"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 1207
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzq;->a(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final D()J
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-string v0, "select max(timestamp) from raw_events"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 1252
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzq;->a(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final E()Z
    .locals 4

    const-string v0, "select count(1) > 0 from raw_events"

    const/4 v1, 0x0

    .line 1295
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzq;->b(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final F()Z
    .locals 4

    const-string v0, "select count(1) > 0 from raw_events where realtime = 1"

    const/4 v1, 0x0

    .line 1298
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzq;->b(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final G()J
    .locals 7

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    .line 1326
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "select rowid from raw_events order by rowid desc limit 1;"

    .line 1327
    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1328
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    if-eqz v3, :cond_0

    .line 1330
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v0

    :cond_1
    const/4 v2, 0x0

    .line 1332
    :try_start_2
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    .line 1334
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    return-wide v4

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v3

    .line 1337
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v4

    const-string v5, "Error querying raw events"

    invoke-virtual {v4, v5, v3}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_3

    .line 1339
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-wide v0

    :goto_1
    if-eqz v2, :cond_4

    .line 1341
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/zzgi;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1253
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 1254
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 1255
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgi;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1257
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzg;->e()I

    move-result v0

    .line 1258
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 1260
    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzyy;->a([BII)Lcom/google/android/gms/internal/measurement/zzyy;

    move-result-object v1

    .line 1262
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzg;->a(Lcom/google/android/gms/internal/measurement/zzyy;)V

    .line 1263
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzyy;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1271
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzey;->g()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v1

    .line 1272
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 1274
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzfk;->i()Ljava/security/MessageDigest;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1276
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Failed to get MD5"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    goto :goto_0

    .line 1278
    :cond_0
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 1279
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzfk;->a([B)J

    move-result-wide v1

    .line 1281
    :goto_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "app_id"

    .line 1282
    iget-object v5, p1, Lcom/google/android/gms/internal/measurement/zzgi;->o:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "metadata_fingerprint"

    .line 1283
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "metadata"

    .line 1284
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1285
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "raw_events_metadata"

    const/4 v5, 0x0

    const/4 v6, 0x4

    .line 1286
    invoke-virtual {v0, v4, v5, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    return-wide v1

    :catch_0
    move-exception v0

    .line 1289
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 1290
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgi;->o:Ljava/lang/String;

    .line 1291
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Error storing raw event metadata. appId"

    .line 1292
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1293
    throw v0

    :catch_1
    move-exception v0

    .line 1266
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 1267
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgi;->o:Ljava/lang/String;

    .line 1268
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Data loss. Failed to serialize event metadata. appId"

    .line 1269
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1270
    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Long;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/gms/internal/measurement/zzgf;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1343
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 1344
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    const/4 v0, 0x0

    .line 1346
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"

    const/4 v3, 0x2

    .line 1347
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 1348
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    .line 1349
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1350
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1351
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Main event not found"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    .line 1353
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 1355
    :cond_1
    :try_start_2
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 1356
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1358
    array-length v5, v2

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzyx;->a([BII)Lcom/google/android/gms/internal/measurement/zzyx;

    move-result-object v2

    .line 1360
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzgf;

    invoke-direct {v4}, Lcom/google/android/gms/internal/measurement/zzgf;-><init>()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1361
    :try_start_3
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/zzzg;->a(Lcom/google/android/gms/internal/measurement/zzyx;)Lcom/google/android/gms/internal/measurement/zzzg;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1371
    :try_start_4
    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_2

    .line 1373
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1

    :catch_0
    move-exception v2

    .line 1364
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v3

    .line 1365
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v3

    const-string v4, "Failed to merge main event. appId, eventId"

    .line 1366
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1367
    invoke-virtual {v3, v4, p1, p2, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_3

    .line 1369
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catch_1
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v1, v0

    .line 1376
    :goto_0
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string v2, "Error selecting main event"

    invoke-virtual {p2, v2, p1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_4

    .line 1378
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v1, :cond_5

    .line 1380
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
.end method

.method public final a(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzr;
    .locals 15
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 602
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 603
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 604
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    const/4 v0, 0x1

    .line 605
    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    .line 606
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzr;

    invoke-direct {v4}, Lcom/google/android/gms/measurement/internal/zzr;-><init>()V

    const/4 v5, 0x0

    .line 608
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    const-string v7, "apps"

    const-string v8, "day"

    const-string v9, "daily_events_count"

    const-string v10, "daily_public_events_count"

    const-string v11, "daily_conversions_count"

    const-string v12, "daily_error_events_count"

    const-string v13, "daily_realtime_events_count"

    .line 609
    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "app_id=?"

    new-array v10, v0, [Ljava/lang/String;

    aput-object p3, v10, v3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v14

    .line 610
    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 611
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_1

    .line 612
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 613
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v2, "Not updating daily counts, app is not known. appId"

    .line 614
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_0

    .line 617
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v4

    .line 619
    :cond_1
    :try_start_2
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    cmp-long v3, v7, p1

    if-nez v3, :cond_2

    .line 621
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/google/android/gms/measurement/internal/zzr;->b:J

    const/4 v0, 0x2

    .line 622
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/google/android/gms/measurement/internal/zzr;->a:J

    const/4 v0, 0x3

    .line 623
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/google/android/gms/measurement/internal/zzr;->c:J

    const/4 v0, 0x4

    .line 624
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/google/android/gms/measurement/internal/zzr;->d:J

    const/4 v0, 0x5

    .line 625
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/google/android/gms/measurement/internal/zzr;->e:J

    :cond_2
    const-wide/16 v7, 0x1

    if-eqz p4, :cond_3

    .line 627
    iget-wide v11, v4, Lcom/google/android/gms/measurement/internal/zzr;->b:J

    const/4 v0, 0x0

    add-long/2addr v11, v7

    iput-wide v11, v4, Lcom/google/android/gms/measurement/internal/zzr;->b:J

    :cond_3
    if-eqz p5, :cond_4

    .line 629
    iget-wide v11, v4, Lcom/google/android/gms/measurement/internal/zzr;->a:J

    const/4 v0, 0x0

    add-long/2addr v11, v7

    iput-wide v11, v4, Lcom/google/android/gms/measurement/internal/zzr;->a:J

    :cond_4
    if-eqz p6, :cond_5

    .line 631
    iget-wide v11, v4, Lcom/google/android/gms/measurement/internal/zzr;->c:J

    const/4 v0, 0x0

    add-long/2addr v11, v7

    iput-wide v11, v4, Lcom/google/android/gms/measurement/internal/zzr;->c:J

    :cond_5
    if-eqz p7, :cond_6

    .line 633
    iget-wide v11, v4, Lcom/google/android/gms/measurement/internal/zzr;->d:J

    const/4 v0, 0x0

    add-long/2addr v11, v7

    iput-wide v11, v4, Lcom/google/android/gms/measurement/internal/zzr;->d:J

    :cond_6
    if-eqz p8, :cond_7

    .line 635
    iget-wide v11, v4, Lcom/google/android/gms/measurement/internal/zzr;->e:J

    const/4 v0, 0x0

    add-long/2addr v11, v7

    iput-wide v11, v4, Lcom/google/android/gms/measurement/internal/zzr;->e:J

    .line 636
    :cond_7
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "day"

    .line 637
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "daily_public_events_count"

    .line 638
    iget-wide v7, v4, Lcom/google/android/gms/measurement/internal/zzr;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "daily_events_count"

    .line 639
    iget-wide v7, v4, Lcom/google/android/gms/measurement/internal/zzr;->b:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "daily_conversions_count"

    .line 640
    iget-wide v7, v4, Lcom/google/android/gms/measurement/internal/zzr;->c:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "daily_error_events_count"

    .line 641
    iget-wide v7, v4, Lcom/google/android/gms/measurement/internal/zzr;->d:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "daily_realtime_events_count"

    .line 642
    iget-wide v7, v4, Lcom/google/android/gms/measurement/internal/zzr;->e:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "apps"

    const-string v5, "app_id=?"

    .line 643
    invoke-virtual {v14, v3, v0, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_8

    .line 646
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    return-object v4

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v5, v6

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v6, v5

    goto :goto_1

    :catch_1
    move-exception v0

    .line 649
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 650
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v3, "Error updating daily counts. appId"

    .line 651
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_9

    .line 654
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v4

    :goto_1
    if-eqz v6, :cond_a

    .line 657
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzz;
    .locals 22
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v15, p2

    .line 53
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    const/16 v16, 0x0

    .line 58
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "events"

    const-string v3, "lifetime_count"

    const-string v4, "current_bundle_count"

    const-string v5, "last_fire_timestamp"

    const-string v6, "last_bundled_timestamp"

    const-string v7, "last_bundled_day"

    const-string v8, "last_sampled_complex_event_id"

    const-string v9, "last_sampling_rate"

    const-string v10, "last_exempt_from_sampling"

    .line 59
    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id=? and name=?"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v5, v9

    const/4 v10, 0x1

    aput-object v15, v5, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 60
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    if-eqz v14, :cond_0

    .line 63
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v16

    .line 65
    :cond_1
    :try_start_2
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 66
    invoke-interface {v14, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 67
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v0, 0x3

    .line 68
    invoke-interface {v14, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v0, 0x0

    :goto_0
    move-wide/from16 v17, v0

    goto :goto_1

    :cond_2
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    :goto_1
    const/4 v0, 0x4

    .line 69
    invoke-interface {v14, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, v16

    goto :goto_2

    :cond_3
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_2
    const/4 v1, 0x5

    .line 70
    invoke-interface {v14, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v13, v16

    goto :goto_3

    :cond_4
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v13, v1

    :goto_3
    const/4 v1, 0x6

    .line 71
    invoke-interface {v14, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v19, v16

    goto :goto_4

    :cond_5
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v19, v1

    :goto_4
    const/4 v1, 0x7

    .line 73
    invoke-interface {v14, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 74
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v20, 0x1

    cmp-long v1, v1, v20

    if-nez v1, :cond_6

    const/4 v9, 0x1

    :cond_6
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_5

    :cond_7
    move-object/from16 v20, v16

    .line 75
    :goto_5
    new-instance v21, Lcom/google/android/gms/measurement/internal/zzz;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide v8, v11

    move-wide/from16 v10, v17

    move-object v12, v0

    move-object/from16 v17, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v20

    :try_start_3
    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/measurement/internal/zzz;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 76
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Got multiple records for event aggregates, expected one. appId"

    .line 79
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 80
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_8
    if-eqz v17, :cond_9

    .line 83
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v21

    :catch_0
    move-exception v0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object/from16 v17, v14

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v17, v14

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v17, v16

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v17, v16

    .line 86
    :goto_6
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Error querying events. appId"

    .line 88
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzan;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v17, :cond_a

    .line 92
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_a
    return-object v16

    :catchall_2
    move-exception v0

    :goto_7
    if-eqz v17, :cond_b

    .line 95
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0
.end method

.method public final a(J)Ljava/lang/String;
    .locals 4

    .line 1302
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 1303
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    const/4 v0, 0x0

    .line 1305
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    const/4 v3, 0x1

    .line 1306
    new-array v3, v3, [Ljava/lang/String;

    .line 1307
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    .line 1308
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1309
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1310
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string v1, "No expired configs for apps with pending events"

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    .line 1312
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 1314
    :cond_1
    :try_start_2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_2

    .line 1316
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p2

    :catch_0
    move-exception p2

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 1319
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Error selecting expired configs"

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_3

    .line 1321
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catchall_1
    move-exception p2

    :goto_1
    if-eqz p1, :cond_4

    .line 1323
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p2
.end method

.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzfj;",
            ">;"
        }
    .end annotation

    .line 219
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 221
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 224
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "user_attributes"

    const-string v4, "name"

    const-string v5, "origin"

    const-string v6, "set_timestamp"

    const-string v7, "value"

    .line 225
    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_id=?"

    const/4 v11, 0x1

    new-array v6, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p1, v6, v12

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "rowid"

    const-string v10, "1000"

    .line 227
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    .line 231
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 233
    :cond_1
    :try_start_2
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 234
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, ""

    :cond_2
    move-object v6, v3

    const/4 v3, 0x2

    .line 237
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v3, 0x3

    .line 238
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzq;->a(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_3

    .line 240
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v3

    .line 241
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v3

    const-string v4, "Read invalid user property value, ignoring it. appId"

    .line 242
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 243
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 244
    :cond_3
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzfj;

    move-object v4, v3

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzfj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 245
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_1

    if-eqz v2, :cond_4

    .line 249
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v1

    .line 252
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v3

    .line 253
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v3

    const-string v4, "Error querying user properties. appId"

    .line 254
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v4, p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_5

    .line 256
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v1

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v2, :cond_6

    .line 259
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p1
.end method

.method public final a(Ljava/lang/String;II)Ljava/util/List;
    .locals 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/google/android/gms/internal/measurement/zzgi;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 761
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 762
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 763
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->b(Z)V

    if-lez p3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 764
    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->b(Z)V

    .line 765
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x0

    .line 767
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "queue"

    const-string v5, "rowid"

    const-string v6, "data"

    const-string v7, "retry_count"

    .line 768
    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "app_id=?"

    new-array v7, v0, [Ljava/lang/String;

    aput-object p1, v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "rowid"

    .line 769
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 770
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 771
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_3

    .line 772
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    .line 774
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p3

    .line 776
    :cond_3
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 778
    :cond_4
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 779
    :try_start_3
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 780
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzey;->g()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzfg;->a([B)[B

    move-result-object v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 787
    :try_start_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    array-length v7, v6

    add-int/2addr v7, v3

    if-gt v7, p3, :cond_7

    .line 789
    :cond_5
    array-length v7, v6

    invoke-static {v6, v1, v7}, Lcom/google/android/gms/internal/measurement/zzyx;->a([BII)Lcom/google/android/gms/internal/measurement/zzyx;

    move-result-object v7

    .line 791
    new-instance v8, Lcom/google/android/gms/internal/measurement/zzgi;

    invoke-direct {v8}, Lcom/google/android/gms/internal/measurement/zzgi;-><init>()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 792
    :try_start_5
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/measurement/zzzg;->a(Lcom/google/android/gms/internal/measurement/zzyx;)Lcom/google/android/gms/internal/measurement/zzzg;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v7, 0x2

    .line 799
    :try_start_6
    invoke-interface {p2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_6

    .line 800
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v8, Lcom/google/android/gms/internal/measurement/zzgi;->H:Ljava/lang/Integer;

    .line 801
    :cond_6
    array-length v6, v6

    add-int/2addr v3, v6

    .line 802
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception v4

    .line 795
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v5

    .line 796
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v5

    const-string v6, "Failed to merge queued bundle. appId"

    .line 797
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v4}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v4

    .line 783
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v5

    .line 784
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v5

    const-string v6, "Failed to unzip queued bundle. appId"

    .line 785
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v4}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 803
    :goto_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_7

    if-le v3, p3, :cond_4

    :cond_7
    if-eqz p2, :cond_8

    .line 806
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_8
    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p3

    move-object v2, p2

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object p2, v2

    goto :goto_4

    :catch_3
    move-exception p3

    .line 809
    :goto_3
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string v0, "Error querying bundles. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, p1, p3}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 810
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_9

    .line 812
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object p1

    :goto_4
    if-eqz p2, :cond_a

    .line 815
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_a
    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 21
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzfj;",
            ">;"
        }
    .end annotation

    .line 260
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 265
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v11, p1

    .line 266
    :try_start_1
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "app_id=?"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v5, :cond_0

    move-object/from16 v5, p2

    .line 269
    :try_start_2
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, " and origin=?"

    .line 270
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v12, p0

    goto/16 :goto_5

    :cond_0
    move-object/from16 v5, p2

    .line 271
    :goto_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 272
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, " and name glob ?"

    .line 273
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, [Ljava/lang/String;

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const-string v13, "user_attributes"

    const-string v2, "name"

    const-string v6, "set_timestamp"

    const-string v7, "value"

    const-string v8, "origin"

    .line 276
    filled-new-array {v2, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v14

    .line 277
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "rowid"

    const-string v20, "1001"

    .line 279
    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 280
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_3

    if-eqz v2, :cond_2

    .line 283
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    .line 285
    :cond_3
    :goto_1
    :try_start_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/16 v6, 0x3e8

    if-lt v4, v6, :cond_4

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v3

    .line 287
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v3

    const-string v4, "Read more than the max allowed user properties, ignoring excess"

    .line 288
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 289
    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v12, p0

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    .line 291
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x1

    .line 292
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v4, 0x2

    move-object/from16 v12, p0

    .line 293
    :try_start_5
    invoke-direct {v12, v2, v4}, Lcom/google/android/gms/measurement/internal/zzq;->a(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v10

    .line 294
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v10, :cond_5

    .line 296
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v4

    .line 297
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v4

    const-string v5, "(2)Read invalid user property value, ignoring it"

    .line 298
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v14, p3

    .line 299
    invoke-virtual {v4, v5, v6, v13, v14}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v5, v13

    goto :goto_6

    :cond_5
    move-object/from16 v14, p3

    .line 300
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzfj;

    move-object v4, v15

    move-object/from16 v5, p1

    move-object v6, v13

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzfj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 301
    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez v4, :cond_7

    :goto_3
    if-eqz v2, :cond_6

    .line 305
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v0

    :cond_7
    move-object v5, v13

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_7

    :catch_3
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_8

    :catch_5
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v11, p1

    :goto_4
    move-object/from16 v5, p2

    :goto_5
    move-object v2, v1

    .line 308
    :goto_6
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v3

    .line 309
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v3

    const-string v4, "(2)Error querying user properties"

    .line 310
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v6, v5, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v2, :cond_8

    .line 312
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    return-object v1

    :catchall_2
    move-exception v0

    :goto_7
    move-object v1, v2

    :goto_8
    if-eqz v1, :cond_9

    .line 315
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzl;",
            ">;"
        }
    .end annotation

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 436
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "conditional_properties"

    const-string v4, "app_id"

    const-string v5, "origin"

    const-string v6, "name"

    const-string v7, "value"

    const-string v8, "active"

    const-string v9, "trigger_event_name"

    const-string v10, "trigger_timeout"

    const-string v11, "timed_out_event"

    const-string v12, "creation_timestamp"

    const-string v13, "triggered_event"

    const-string v14, "triggered_timestamp"

    const-string v15, "time_to_live"

    const-string v16, "expired_event"

    .line 437
    filled-new-array/range {v4 .. v16}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "rowid"

    const-string v10, "1001"

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 439
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 440
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    .line 443
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 445
    :cond_1
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0x3e8

    if-lt v1, v3, :cond_2

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 447
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v4, "Read more than the max allowed conditional properties, ignoring extra"

    .line 448
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 449
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 451
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    .line 452
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x2

    .line 453
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x3

    move-object/from16 v15, p0

    .line 454
    invoke-direct {v15, v2, v5}, Lcom/google/android/gms/measurement/internal/zzq;->a(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v9

    const/4 v5, 0x4

    .line 455
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    :cond_3
    const/4 v3, 0x5

    .line 456
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v3, 0x6

    .line 457
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzey;->g()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v3

    const/4 v5, 0x7

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzad;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v5, v7}, Lcom/google/android/gms/measurement/internal/zzfg;->a([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lcom/google/android/gms/measurement/internal/zzad;

    const/16 v3, 0x8

    .line 460
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzey;->g()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v3

    const/16 v5, 0x9

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzad;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v5, v7}, Lcom/google/android/gms/measurement/internal/zzfg;->a([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Lcom/google/android/gms/measurement/internal/zzad;

    const/16 v3, 0xa

    .line 463
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/16 v3, 0xb

    .line 464
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 466
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzey;->g()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v3

    const/16 v5, 0xc

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzad;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v5, v10}, Lcom/google/android/gms/measurement/internal/zzfg;->a([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Lcom/google/android/gms/measurement/internal/zzad;

    .line 467
    new-instance v23, Lcom/google/android/gms/measurement/internal/zzfh;

    move-object/from16 v5, v23

    move-object v10, v11

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/zzfh;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 468
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzl;

    move-object v3, v10

    move-object v5, v11

    move-object/from16 v6, v23

    move-wide/from16 v7, v17

    move v9, v1

    move-object v1, v10

    move-object v10, v12

    move-object/from16 v11, v16

    move-wide v12, v13

    move-object/from16 v14, v19

    move-wide/from16 v15, v20

    move-object/from16 v17, v22

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/measurement/internal/zzl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfh;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzad;JLcom/google/android/gms/measurement/internal/zzad;JLcom/google/android/gms/measurement/internal/zzad;)V

    .line 469
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_1

    :goto_0
    if-eqz v2, :cond_4

    .line 473
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 476
    :goto_1
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v3, "Error querying conditional user property value"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 477
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_5

    .line 479
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v0

    :goto_2
    if-eqz v2, :cond_6

    .line 482
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzg;)V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 537
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 539
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 540
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    .line 541
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_instance_id"

    .line 542
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gmp_app_id"

    .line 543
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "resettable_device_id_hash"

    .line 544
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "last_bundle_index"

    .line 545
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->p()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "last_bundle_start_timestamp"

    .line 546
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "last_bundle_end_timestamp"

    .line 547
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->i()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "app_version"

    .line 548
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_store"

    .line 549
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gmp_version"

    .line 550
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->m()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "dev_cert_hash"

    .line 551
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->n()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "measurement_enabled"

    .line 552
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->o()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "day"

    .line 553
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->t()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "daily_public_events_count"

    .line 554
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->u()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "daily_events_count"

    .line 555
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->v()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "daily_conversions_count"

    .line 556
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->w()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "config_fetched_time"

    .line 557
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->q()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "failed_config_fetch_time"

    .line 558
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->r()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "app_version_int"

    .line 559
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->k()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "firebase_instance_id"

    .line 560
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "daily_error_events_count"

    .line 561
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->y()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "daily_realtime_events_count"

    .line 562
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->x()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "health_monitor_sample"

    .line 563
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android_id"

    .line 564
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->B()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "adid_reporting_enabled"

    .line 565
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->C()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "ssaid_reporting_enabled"

    .line 566
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->D()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "admob_app_id"

    .line 567
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "apps"

    const-string v3, "app_id = ?"

    const/4 v4, 0x1

    .line 569
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 570
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-string v2, "apps"

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 573
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 576
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Failed to insert/update app (got -1). appId"

    .line 577
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 578
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 581
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 582
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Error storing app. appId"

    .line 583
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzz;)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 96
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 99
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    .line 100
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzz;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    .line 101
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzz;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lifetime_count"

    .line 102
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzz;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "current_bundle_count"

    .line 103
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzz;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "last_fire_timestamp"

    .line 104
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzz;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "last_bundled_timestamp"

    .line 105
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzz;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "last_bundled_day"

    .line 106
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzz;->g:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "last_sampled_complex_event_id"

    .line 107
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzz;->h:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "last_sampling_rate"

    .line 108
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzz;->i:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzz;->j:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzz;->j:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v3, 0x1

    .line 111
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "last_exempt_from_sampling"

    .line 112
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "events"

    const/4 v4, 0x5

    .line 115
    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Failed to insert/update event aggregates (got -1). appId"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzz;->a:Ljava/lang/String;

    .line 119
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Error storing event aggregates. appId"

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzz;->a:Ljava/lang/String;

    .line 125
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 126
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final a(Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/zzfu;)V
    .locals 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 856
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 857
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 858
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 859
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 861
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 863
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 864
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 865
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 866
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "property_filters"

    const-string v3, "app_id=?"

    const/4 v4, 0x1

    .line 867
    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v1, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v2, "event_filters"

    const-string v3, "app_id=?"

    .line 868
    new-array v5, v4, [Ljava/lang/String;

    aput-object p1, v5, v6

    invoke-virtual {v1, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 869
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_a

    aget-object v3, p2, v2

    .line 871
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 872
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 873
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 874
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzfu;->c:[Lcom/google/android/gms/internal/measurement/zzfv;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzfu;->b:[Lcom/google/android/gms/internal/measurement/zzfy;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzfu;->a:Ljava/lang/Integer;

    if-nez v5, :cond_0

    .line 878
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v3

    const-string v5, "Audience with no ID. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 880
    :cond_0
    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzfu;->a:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 881
    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/zzfu;->c:[Lcom/google/android/gms/internal/measurement/zzfv;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    .line 882
    iget-object v10, v10, Lcom/google/android/gms/internal/measurement/zzfv;->a:Ljava/lang/Integer;

    if-nez v10, :cond_1

    .line 883
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v5

    .line 884
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v5

    const-string v7, "Event filter with no ID. Audience definition ignored. appId, audienceId"

    .line 885
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzfu;->a:Ljava/lang/Integer;

    .line 886
    invoke-virtual {v5, v7, v8, v3}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 889
    :cond_2
    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/zzfu;->b:[Lcom/google/android/gms/internal/measurement/zzfy;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    .line 890
    iget-object v10, v10, Lcom/google/android/gms/internal/measurement/zzfy;->a:Ljava/lang/Integer;

    if-nez v10, :cond_3

    .line 891
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v5

    .line 892
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v5

    const-string v7, "Property filter with no ID. Audience definition ignored. appId, audienceId"

    .line 893
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzfu;->a:Ljava/lang/Integer;

    .line 894
    invoke-virtual {v5, v7, v8, v3}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 898
    :cond_4
    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/zzfu;->c:[Lcom/google/android/gms/internal/measurement/zzfv;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_6

    aget-object v10, v7, v9

    .line 899
    invoke-direct {p0, p1, v5, v10}, Lcom/google/android/gms/measurement/internal/zzq;->a(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzfv;)Z

    move-result v10

    if-nez v10, :cond_5

    const/4 v7, 0x0

    goto :goto_4

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x1

    :goto_4
    if-eqz v7, :cond_8

    .line 904
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzfu;->b:[Lcom/google/android/gms/internal/measurement/zzfy;

    array-length v8, v3

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v8, :cond_8

    aget-object v10, v3, v9

    .line 905
    invoke-direct {p0, p1, v5, v10}, Lcom/google/android/gms/measurement/internal/zzq;->a(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzfy;)Z

    move-result v10

    if-nez v10, :cond_7

    const/4 v7, 0x0

    goto :goto_6

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    if-nez v7, :cond_9

    .line 911
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 912
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 913
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 914
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v7, "property_filters"

    const-string v8, "app_id=? and audience_id=?"

    const/4 v9, 0x2

    .line 915
    new-array v10, v9, [Ljava/lang/String;

    aput-object p1, v10, v6

    .line 916
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    .line 917
    invoke-virtual {v3, v7, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v7, "event_filters"

    const-string v8, "app_id=? and audience_id=?"

    .line 918
    new-array v9, v9, [Ljava/lang/String;

    aput-object p1, v9, v6

    .line 919
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    .line 920
    invoke-virtual {v3, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_9
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 922
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 923
    array-length v2, p2

    :goto_8
    if-ge v6, v2, :cond_b

    aget-object v3, p2, v6

    .line 924
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzfu;->a:Ljava/lang/Integer;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 926
    :cond_b
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzq;->a(Ljava/lang/String;Ljava/util/List;)Z

    .line 927
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 928
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    .line 930
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method final a(Ljava/util/List;)V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 839
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 840
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 841
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(I)I

    .line 843
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzq;->N()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, ","

    .line 845
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 846
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x50

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "SELECT COUNT(1) FROM queue WHERE rowid IN "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND retry_count =  2147483647 LIMIT 1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzq;->b(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 847
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 848
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "The number of upload retries exceeds the limit. Will remain unchanged."

    .line 849
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 850
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 851
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND (retry_count IS NULL OR retry_count < 2147483647)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 854
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Error incrementing retry count. error"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/zzgi;Z)Z
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 688
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 689
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 690
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgi;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 692
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgi;->f:Ljava/lang/Long;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->B()V

    .line 694
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    .line 695
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzgi;->f:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->j()J

    move-result-wide v4

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzgi;->f:Ljava/lang/Long;

    .line 696
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->j()J

    move-result-wide v4

    add-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 697
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 698
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v3, "Storing bundle outside of the max uploading time span. appId, now, timestamp"

    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/zzgi;->o:Ljava/lang/String;

    .line 699
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 700
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgi;->f:Ljava/lang/Long;

    .line 701
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    .line 702
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzg;->e()I

    move-result v1

    .line 703
    new-array v1, v1, [B

    .line 705
    array-length v2, v1

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/zzyy;->a([BII)Lcom/google/android/gms/internal/measurement/zzyy;

    move-result-object v2

    .line 707
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzzg;->a(Lcom/google/android/gms/internal/measurement/zzyy;)V

    .line 708
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzyy;->a()V

    .line 709
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzey;->g()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->b([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 717
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v3, "Saving bundle, size"

    array-length v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 718
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    .line 719
    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/zzgi;->o:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "bundle_end_timestamp"

    .line 720
    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/zzgi;->f:Ljava/lang/Long;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "data"

    .line 721
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v1, "has_realtime"

    .line 722
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 723
    iget-object p2, p1, Lcom/google/android/gms/internal/measurement/zzgi;->H:Ljava/lang/Integer;

    if-eqz p2, :cond_2

    const-string p2, "retry_count"

    .line 724
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgi;->H:Ljava/lang/Integer;

    invoke-virtual {v2, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 725
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v1, "queue"

    const/4 v3, 0x0

    .line 726
    invoke-virtual {p2, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p2, v1, v3

    if-nez p2, :cond_3

    .line 728
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    .line 729
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string v1, "Failed to insert bundle (got -1). appId"

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzgi;->o:Ljava/lang/String;

    .line 730
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    .line 734
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 735
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Error storing bundle. appId"

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgi;->o:Ljava/lang/String;

    .line 736
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :catch_1
    move-exception p2

    .line 712
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 713
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Data loss. Failed to serialize bundle. appId"

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgi;->o:Ljava/lang/String;

    .line 714
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 715
    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzfj;)Z
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 144
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 146
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 147
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzfj;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzfj;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzq;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 149
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzfj;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v2, 0x19

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    const-string v0, "select count(1) from user_attributes where app_id=? and name not like \'!_%\' escape \'!\'"

    .line 150
    new-array v5, v1, [Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzfj;->a:Ljava/lang/String;

    aput-object v6, v5, v4

    .line 151
    invoke-direct {p0, v0, v5}, Lcom/google/android/gms/measurement/internal/zzq;->b(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-ltz v0, :cond_2

    return v4

    :cond_0
    const-string v0, "select count(1) from user_attributes where app_id=? and origin=? AND name like \'!_%\' escape \'!\'"

    const/4 v5, 0x2

    .line 155
    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzfj;->a:Ljava/lang/String;

    aput-object v6, v5, v4

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzfj;->b:Ljava/lang/String;

    aput-object v6, v5, v1

    .line 156
    invoke-direct {p0, v0, v5}, Lcom/google/android/gms/measurement/internal/zzq;->b(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v5

    .line 157
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzfj;->a:Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzaf;->am:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/measurement/internal/zzn;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_ap"

    .line 158
    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzfj;->c:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    cmp-long v0, v5, v2

    if-ltz v0, :cond_2

    return v4

    :cond_1
    cmp-long v0, v5, v2

    if-ltz v0, :cond_2

    return v4

    .line 163
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    .line 164
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzfj;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "origin"

    .line 165
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzfj;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "name"

    .line 166
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzfj;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "set_timestamp"

    .line 167
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzfj;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "value"

    .line 168
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzfj;->e:Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzq;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "user_attributes"

    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 171
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 173
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v2, "Failed to insert/update user property (got -1). appId"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzfj;->a:Ljava/lang/String;

    .line 175
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 176
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 179
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 180
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v3, "Error storing user property. appId"

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfj;->a:Ljava/lang/String;

    .line 181
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return v1
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzl;)Z
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 316
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 318
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 319
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzl;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzl;->c:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfh;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzq;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "SELECT COUNT(1) FROM conditional_properties WHERE app_id=?"

    .line 321
    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzl;->a:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 322
    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/measurement/internal/zzq;->b(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    cmp-long v0, v2, v5

    if-ltz v0, :cond_0

    return v4

    .line 325
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    .line 326
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzl;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "origin"

    .line 327
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzl;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "name"

    .line 328
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzl;->c:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfh;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    .line 329
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzl;->c:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfh;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzq;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "active"

    .line 330
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzl;->e:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "trigger_event_name"

    .line 331
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzl;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "trigger_timeout"

    .line 332
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzl;->h:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "timed_out_event"

    .line 333
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzl;->g:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Landroid/os/Parcelable;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v2, "creation_timestamp"

    .line 334
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzl;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "triggered_event"

    .line 335
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzl;->i:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Landroid/os/Parcelable;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v2, "triggered_timestamp"

    .line 336
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzl;->c:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-wide v3, v3, Lcom/google/android/gms/measurement/internal/zzfh;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "time_to_live"

    .line 337
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzl;->j:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "expired_event"

    .line 338
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzl;->k:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Landroid/os/Parcelable;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 339
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "conditional_properties"

    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 341
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 343
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v2, "Failed to insert/update conditional user property (got -1)"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzl;->a:Ljava/lang/String;

    .line 345
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 346
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 349
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 350
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v3, "Error storing conditional user property"

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzl;->a:Ljava/lang/String;

    .line 351
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 352
    invoke-virtual {v2, v3, p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return v1
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzy;JZ)Z
    .locals 8

    .line 1426
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 1427
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 1428
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzy;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1430
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzgf;-><init>()V

    .line 1431
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzy;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzgf;->d:Ljava/lang/Long;

    .line 1432
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzy;->e:Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaa;->a()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzgg;

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzgf;->a:[Lcom/google/android/gms/internal/measurement/zzgg;

    .line 1434
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzy;->e:Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaa;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1435
    new-instance v5, Lcom/google/android/gms/internal/measurement/zzgg;

    invoke-direct {v5}, Lcom/google/android/gms/internal/measurement/zzgg;-><init>()V

    .line 1436
    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzgf;->a:[Lcom/google/android/gms/internal/measurement/zzgg;

    add-int/lit8 v7, v3, 0x1

    aput-object v5, v6, v3

    .line 1437
    iput-object v4, v5, Lcom/google/android/gms/internal/measurement/zzgg;->a:Ljava/lang/String;

    .line 1438
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzy;->e:Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzaa;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1439
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzey;->g()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v4

    invoke-virtual {v4, v5, v3}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Lcom/google/android/gms/internal/measurement/zzgg;Ljava/lang/Object;)V

    move v3, v7

    goto :goto_0

    .line 1441
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzzg;->e()I

    move-result v1

    .line 1442
    new-array v1, v1, [B

    .line 1444
    array-length v3, v1

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzyy;->a([BII)Lcom/google/android/gms/internal/measurement/zzyy;

    move-result-object v3

    .line 1446
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzzg;->a(Lcom/google/android/gms/internal/measurement/zzyy;)V

    .line 1447
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzyy;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1455
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 1456
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v3, "Saving event, name, data size"

    .line 1457
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzy;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzan;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    array-length v5, v1

    .line 1458
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1459
    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1460
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    .line 1461
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzy;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "name"

    .line 1462
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzy;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "timestamp"

    .line 1463
    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzy;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "metadata_fingerprint"

    .line 1464
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "data"

    .line 1465
    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string p2, "realtime"

    .line 1466
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1467
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string p3, "raw_events"

    const/4 p4, 0x0

    .line 1468
    invoke-virtual {p2, p3, p4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long p2, p2, v0

    if-nez p2, :cond_1

    .line 1470
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    .line 1471
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string p3, "Failed to insert raw event (got -1). appId"

    iget-object p4, p1, Lcom/google/android/gms/measurement/internal/zzy;->a:Ljava/lang/String;

    .line 1472
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    .line 1476
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p3

    .line 1477
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p3

    const-string p4, "Error storing raw event. appId"

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzy;->a:Ljava/lang/String;

    .line 1478
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    :catch_1
    move-exception p2

    .line 1450
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p3

    .line 1451
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p3

    const-string p4, "Data loss. Failed to serialize event params/data. appId"

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzy;->a:Ljava/lang/String;

    .line 1452
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1453
    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzgf;)Z
    .locals 5

    .line 1382
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 1383
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 1384
    invoke-static {p5}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1386
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1387
    :try_start_0
    invoke-virtual {p5}, Lcom/google/android/gms/internal/measurement/zzzg;->e()I

    move-result v1

    .line 1388
    new-array v1, v1, [B

    .line 1390
    array-length v2, v1

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/zzyy;->a([BII)Lcom/google/android/gms/internal/measurement/zzyy;

    move-result-object v2

    .line 1392
    invoke-virtual {p5, v2}, Lcom/google/android/gms/internal/measurement/zzzg;->a(Lcom/google/android/gms/internal/measurement/zzyy;)V

    .line 1393
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzyy;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1401
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p5

    .line 1402
    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p5

    const-string v2, "Saving complex main event, appId, data size"

    .line 1403
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/measurement/internal/zzan;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    array-length v4, v1

    .line 1404
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1405
    invoke-virtual {p5, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1406
    new-instance p5, Landroid/content/ContentValues;

    invoke-direct {p5}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    .line 1407
    invoke-virtual {p5, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "event_id"

    .line 1408
    invoke-virtual {p5, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "children_to_process"

    .line 1409
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p5, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "main_event"

    .line 1410
    invoke-virtual {p5, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1411
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string p3, "main_event_params"

    const/4 p4, 0x0

    const/4 v1, 0x5

    .line 1413
    invoke-virtual {p2, p3, p4, p5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p2

    const-wide/16 p4, -0x1

    cmp-long p2, p2, p4

    if-nez p2, :cond_0

    .line 1415
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    .line 1416
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string p3, "Failed to insert complex main event (got -1). appId"

    .line 1417
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    .line 1421
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p3

    .line 1422
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p3

    const-string p4, "Error storing complex main event. appId"

    .line 1423
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :catch_1
    move-exception p3

    .line 1396
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p4

    .line 1397
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p4

    const-string p5, "Data loss. Failed to serialize event params/data. appId, eventId"

    .line 1398
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1399
    invoke-virtual {p4, p5, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;
    .locals 31
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p1

    .line 483
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 484
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    const/4 v2, 0x0

    .line 487
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "apps"

    const-string v5, "app_instance_id"

    const-string v6, "gmp_app_id"

    const-string v7, "resettable_device_id_hash"

    const-string v8, "last_bundle_index"

    const-string v9, "last_bundle_start_timestamp"

    const-string v10, "last_bundle_end_timestamp"

    const-string v11, "app_version"

    const-string v12, "app_store"

    const-string v13, "gmp_version"

    const-string v14, "dev_cert_hash"

    const-string v15, "measurement_enabled"

    const-string v16, "day"

    const-string v17, "daily_public_events_count"

    const-string v18, "daily_events_count"

    const-string v19, "daily_conversions_count"

    const-string v20, "config_fetched_time"

    const-string v21, "failed_config_fetch_time"

    const-string v22, "app_version_int"

    const-string v23, "firebase_instance_id"

    const-string v24, "daily_error_events_count"

    const-string v25, "daily_realtime_events_count"

    const-string v26, "health_monitor_sample"

    const-string v27, "android_id"

    const-string v28, "adid_reporting_enabled"

    const-string v29, "ssaid_reporting_enabled"

    const-string v30, "admob_app_id"

    .line 488
    filled-new-array/range {v5 .. v30}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "app_id=?"

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v1, v7, v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 489
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 490
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    if-eqz v3, :cond_0

    .line 492
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v2

    .line 494
    :cond_1
    :try_start_2
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzg;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v5, p0

    :try_start_3
    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzq;->a:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfa;->o()Lcom/google/android/gms/measurement/internal/zzbt;

    move-result-object v6

    invoke-direct {v4, v6, v1}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;Ljava/lang/String;)V

    .line 495
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzg;->a(Ljava/lang/String;)V

    .line 496
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzg;->b(Ljava/lang/String;)V

    const/4 v6, 0x2

    .line 497
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzg;->d(Ljava/lang/String;)V

    const/4 v6, 0x3

    .line 498
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->f(J)V

    const/4 v6, 0x4

    .line 499
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->a(J)V

    const/4 v6, 0x5

    .line 500
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->b(J)V

    const/4 v6, 0x6

    .line 501
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzg;->f(Ljava/lang/String;)V

    const/4 v6, 0x7

    .line 502
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzg;->g(Ljava/lang/String;)V

    const/16 v6, 0x8

    .line 503
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->d(J)V

    const/16 v6, 0x9

    .line 504
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->e(J)V

    const/16 v6, 0xa

    .line 505
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzg;->a(Z)V

    const/16 v6, 0xb

    .line 506
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->i(J)V

    const/16 v6, 0xc

    .line 507
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->j(J)V

    const/16 v6, 0xd

    .line 508
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->k(J)V

    const/16 v6, 0xe

    .line 509
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->l(J)V

    const/16 v6, 0xf

    .line 510
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->g(J)V

    const/16 v6, 0x10

    .line 511
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->h(J)V

    const/16 v6, 0x11

    .line 512
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_4

    const-wide/32 v6, -0x80000000

    goto :goto_2

    :cond_4
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    :goto_2
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->c(J)V

    const/16 v6, 0x12

    .line 513
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzg;->e(Ljava/lang/String;)V

    const/16 v6, 0x13

    .line 514
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->n(J)V

    const/16 v6, 0x14

    .line 515
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->m(J)V

    const/16 v6, 0x15

    .line 516
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzg;->h(Ljava/lang/String;)V

    const/16 v6, 0x16

    .line 517
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_5

    const-wide/16 v6, 0x0

    goto :goto_3

    :cond_5
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    :goto_3
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->o(J)V

    const/16 v6, 0x17

    .line 518
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v6, 0x1

    :goto_5
    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzg;->b(Z)V

    const/16 v6, 0x18

    .line 519
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_6
    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzg;->c(Z)V

    const/16 v0, 0x19

    .line 520
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzg;->c(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->a()V

    .line 522
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 524
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v6, "Got multiple records for app, expected one. appId"

    .line 525
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_a
    if-eqz v3, :cond_b

    .line 528
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_b
    return-object v4

    :catch_0
    move-exception v0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v5, p0

    move-object v3, v2

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v5, p0

    move-object v3, v2

    .line 531
    :goto_7
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v4

    const-string v6, "Error querying app. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v6, v1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v3, :cond_c

    .line 533
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_c
    return-object v2

    :catchall_2
    move-exception v0

    :goto_8
    if-eqz v3, :cond_d

    .line 536
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzl;",
            ">;"
        }
    .end annotation

    .line 418
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 419
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 420
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 422
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "app_id=?"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 425
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, " and origin=?"

    .line 426
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 428
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "*"

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, " and name glob ?"

    .line 429
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 431
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzq;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 128
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 132
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "user_attributes"

    const-string v2, "app_id=? and name=?"

    const/4 v3, 0x2

    .line 133
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 134
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 135
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Deleted user attribute rows"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Error deleting user attribute. appId"

    .line 140
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 141
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/gms/measurement/internal/zzan;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 142
    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)J
    .locals 6

    .line 585
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 586
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 587
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 588
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 589
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v1

    .line 590
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzaf;->x:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzn;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)I

    move-result v1

    const v2, 0xf4240

    .line 591
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    .line 592
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 593
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "raw_events"

    const-string v4, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"

    const/4 v5, 0x2

    .line 594
    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v2

    const/4 v2, 0x1

    aput-object v1, v5, v2

    .line 595
    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    return-wide v0

    :catch_0
    move-exception v0

    .line 598
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 599
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Error deleting over the limit events. appId"

    .line 600
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzfj;
    .locals 18
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v8, p2

    .line 183
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    const/4 v9, 0x0

    .line 188
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const-string v11, "user_attributes"

    const-string v0, "set_timestamp"

    const-string v1, "value"

    const-string v2, "origin"

    .line 189
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v12

    const-string v13, "app_id=? and name=?"

    const/4 v0, 0x2

    new-array v14, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v14, v1

    const/4 v2, 0x1

    aput-object v8, v14, v2

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 190
    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 191
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    if-eqz v10, :cond_0

    .line 193
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v9

    .line 195
    :cond_1
    :try_start_2
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v11, p0

    .line 196
    :try_start_3
    invoke-direct {v11, v10, v2}, Lcom/google/android/gms/measurement/internal/zzq;->a(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v7

    .line 197
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 198
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfj;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzfj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 199
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Got multiple records for user property, expected one. appId"

    .line 202
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 203
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    if-eqz v10, :cond_3

    .line 206
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v11, p0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v11, p0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v11, p0

    move-object v10, v9

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v11, p0

    move-object v10, v9

    .line 209
    :goto_0
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Error querying user property. appId"

    .line 211
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/zzan;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 213
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v10, :cond_4

    .line 215
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v9

    :catchall_2
    move-exception v0

    :goto_1
    if-eqz v10, :cond_5

    .line 218
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzl;
    .locals 29
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v7, p2

    .line 354
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 355
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    const/4 v8, 0x0

    .line 359
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const-string v10, "conditional_properties"

    const-string v11, "origin"

    const-string v12, "value"

    const-string v13, "active"

    const-string v14, "trigger_event_name"

    const-string v15, "trigger_timeout"

    const-string v16, "timed_out_event"

    const-string v17, "creation_timestamp"

    const-string v18, "triggered_event"

    const-string v19, "triggered_timestamp"

    const-string v20, "time_to_live"

    const-string v21, "expired_event"

    .line 360
    filled-new-array/range {v11 .. v21}, [Ljava/lang/String;

    move-result-object v11

    const-string v12, "app_id=? and name=?"

    const/4 v0, 0x2

    new-array v13, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v13, v1

    const/4 v2, 0x1

    aput-object v7, v13, v2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 361
    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 362
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    if-eqz v9, :cond_0

    .line 364
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v8

    .line 366
    :cond_1
    :try_start_2
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v10, p0

    .line 367
    :try_start_3
    invoke-direct {v10, v9, v2}, Lcom/google/android/gms/measurement/internal/zzq;->a(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v5

    .line 368
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v20, 0x1

    goto :goto_0

    :cond_2
    const/16 v20, 0x0

    :goto_0
    const/4 v0, 0x3

    .line 369
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/4 v0, 0x4

    .line 370
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzey;->g()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzad;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfg;->a([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lcom/google/android/gms/measurement/internal/zzad;

    const/4 v0, 0x6

    .line 373
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzey;->g()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzad;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfg;->a([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Lcom/google/android/gms/measurement/internal/zzad;

    const/16 v0, 0x8

    .line 376
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/16 v0, 0x9

    .line 377
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzey;->g()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzad;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfg;->a([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v28, v0

    check-cast v28, Lcom/google/android/gms/measurement/internal/zzad;

    .line 380
    new-instance v17, Lcom/google/android/gms/measurement/internal/zzfh;

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzfh;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 381
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzl;

    move-object v14, v0

    move-object/from16 v15, p1

    invoke-direct/range {v14 .. v28}, Lcom/google/android/gms/measurement/internal/zzl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfh;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzad;JLcom/google/android/gms/measurement/internal/zzad;JLcom/google/android/gms/measurement/internal/zzad;)V

    .line 382
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 384
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Got multiple records for conditional property, expected one"

    .line 385
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/zzan;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 387
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3
    if-eqz v9, :cond_4

    .line 390
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v10, p0

    move-object v9, v8

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v10, p0

    move-object v9, v8

    .line 393
    :goto_1
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 394
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Error querying conditional property"

    .line 395
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/zzan;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 397
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v9, :cond_5

    .line 399
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v8

    :catchall_2
    move-exception v0

    :goto_2
    if-eqz v9, :cond_6

    .line 402
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public final d(Ljava/lang/String;)[B
    .locals 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 658
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 659
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 660
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    const/4 v0, 0x0

    .line 662
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "apps"

    const-string v3, "remote_config"

    .line 663
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 664
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    .line 667
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 669
    :cond_1
    :try_start_2
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 670
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 671
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v3

    .line 672
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v3

    const-string v4, "Got multiple records for app config, expected one. appId"

    .line 673
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 674
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    if-eqz v1, :cond_3

    .line 677
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v2

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v1, v0

    .line 680
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v3

    .line 681
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v3

    const-string v4, "Error querying remote config. appId"

    .line 682
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v4, p1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_4

    .line 684
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v1, :cond_5

    .line 687
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 403
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 404
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 405
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 406
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    const/4 v0, 0x0

    .line 407
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "conditional_properties"

    const-string v3, "app_id=? and name=?"

    const/4 v4, 0x2

    .line 408
    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v0

    const/4 v5, 0x1

    aput-object p2, v4, v5

    .line 409
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    .line 412
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 413
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v3, "Error deleting conditional property"

    .line 414
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 415
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/android/gms/measurement/internal/zzan;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 416
    invoke-virtual {v2, v3, p1, p2, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0
.end method

.method final e(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/measurement/zzgj;",
            ">;"
        }
    .end annotation

    .line 1143
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 1144
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 1145
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1146
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v8, 0x0

    :try_start_0
    const-string v1, "audience_filter_values"

    const-string v2, "audience_id"

    const-string v3, "current_results"

    .line 1148
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_id=?"

    const/4 v9, 0x1

    new-array v4, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v4, v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1149
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    .line 1152
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v8

    .line 1154
    :cond_1
    :try_start_2
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 1155
    :cond_2
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1156
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 1158
    array-length v4, v3

    invoke-static {v3, v10, v4}, Lcom/google/android/gms/internal/measurement/zzyx;->a([BII)Lcom/google/android/gms/internal/measurement/zzyx;

    move-result-object v3

    .line 1160
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzgj;

    invoke-direct {v4}, Lcom/google/android/gms/internal/measurement/zzgj;-><init>()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1161
    :try_start_3
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/zzzg;->a(Lcom/google/android/gms/internal/measurement/zzyx;)Lcom/google/android/gms/internal/measurement/zzzg;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1170
    :try_start_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v3

    .line 1164
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v4

    .line 1165
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v4

    const-string v5, "Failed to merge filter results. appId, audienceId, error"

    .line 1166
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1167
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1168
    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1171
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v2, :cond_2

    if-eqz v0, :cond_3

    .line 1174
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v1

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v8

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v0, v8

    .line 1177
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 1178
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v3, "Database error querying filter results. appId"

    .line 1179
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_4

    .line 1181
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v8

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v0, :cond_5

    .line 1184
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
.end method

.method protected final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f(Ljava/lang/String;)J
    .locals 4

    .line 1300
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "select count(1) from events where app_id=? and name not like \'!_%\' escape \'!\'"

    const/4 v1, 0x1

    .line 1301
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzq;->a(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method final f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfv;",
            ">;>;"
        }
    .end annotation

    .line 1024
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 1025
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 1026
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1027
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1028
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 1029
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v9, 0x0

    :try_start_0
    const-string v2, "event_filters"

    const-string v3, "audience_id"

    const-string v4, "data"

    .line 1031
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id=? AND event_name=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v5, v10

    const/4 v11, 0x1

    aput-object p2, v5, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1032
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1033
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1034
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_0

    .line 1036
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 1038
    :cond_1
    :try_start_2
    invoke-interface {p2, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 1040
    array-length v2, v1

    invoke-static {v1, v10, v2}, Lcom/google/android/gms/internal/measurement/zzyx;->a([BII)Lcom/google/android/gms/internal/measurement/zzyx;

    move-result-object v1

    .line 1042
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzfv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzfv;-><init>()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1043
    :try_start_3
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzzg;->a(Lcom/google/android/gms/internal/measurement/zzyx;)Lcom/google/android/gms/internal/measurement/zzzg;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1050
    :try_start_4
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1051
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_2

    .line 1053
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1054
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1046
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 1047
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v3, "Failed to merge filter. appId"

    .line 1048
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1056
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v1, :cond_1

    if-eqz p2, :cond_3

    .line 1058
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object p2, v9

    goto :goto_2

    :catch_2
    move-exception v0

    move-object p2, v9

    .line 1060
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 1061
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Database error querying filters. appId"

    .line 1062
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p2, :cond_4

    .line 1064
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v9

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz p2, :cond_5

    .line 1067
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
.end method

.method public final f()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method final g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfy;",
            ">;>;"
        }
    .end annotation

    .line 1069
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 1070
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 1071
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1072
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1073
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 1074
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v9, 0x0

    :try_start_0
    const-string v2, "property_filters"

    const-string v3, "audience_id"

    const-string v4, "data"

    .line 1076
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id=? AND property_name=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v5, v10

    const/4 v11, 0x1

    aput-object p2, v5, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1077
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1078
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1079
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_0

    .line 1081
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 1083
    :cond_1
    :try_start_2
    invoke-interface {p2, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 1085
    array-length v2, v1

    invoke-static {v1, v10, v2}, Lcom/google/android/gms/internal/measurement/zzyx;->a([BII)Lcom/google/android/gms/internal/measurement/zzyx;

    move-result-object v1

    .line 1087
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzfy;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzfy;-><init>()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1088
    :try_start_3
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzzg;->a(Lcom/google/android/gms/internal/measurement/zzyx;)Lcom/google/android/gms/internal/measurement/zzzg;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1093
    :try_start_4
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1094
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_2

    .line 1096
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1097
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1091
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v3, "Failed to merge filter"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1099
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v1, :cond_1

    if-eqz p2, :cond_3

    .line 1101
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object p2, v9

    goto :goto_2

    :catch_2
    move-exception v0

    move-object p2, v9

    .line 1103
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 1104
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Database error querying filters. appId"

    .line 1105
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p2, :cond_4

    .line 1107
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v9

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz p2, :cond_5

    .line 1110
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
.end method

.method protected final h(Ljava/lang/String;Ljava/lang/String;)J
    .locals 13
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1208
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1209
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1210
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 1211
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 1213
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1214
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v1, 0x0

    .line 1215
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "select "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from app2 where app_id=?"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const-wide/16 v7, -0x1

    .line 1216
    invoke-direct {p0, v3, v5, v7, v8}, Lcom/google/android/gms/measurement/internal/zzq;->a(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v3, v9, v7

    if-nez v3, :cond_1

    .line 1219
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "app_id"

    .line 1220
    invoke-virtual {v3, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "first_open_count"

    .line 1221
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "previous_install_count"

    .line 1222
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "app2"

    const/4 v9, 0x0

    const/4 v10, 0x5

    .line 1224
    invoke-virtual {v0, v5, v9, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v9

    cmp-long v3, v9, v7

    if-nez v3, :cond_0

    .line 1226
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v3

    .line 1227
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v3

    const-string v4, "Failed to insert column (got -1). appId"

    .line 1228
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1229
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v7

    :cond_0
    move-wide v9, v1

    .line 1231
    :cond_1
    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "app_id"

    .line 1232
    invoke-virtual {v3, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v11, 0x1

    add-long/2addr v11, v9

    .line 1233
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, p2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "app2"

    const-string v11, "app_id = ?"

    .line 1234
    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-virtual {v0, v5, v3, v11, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v3, v1

    if-nez v1, :cond_2

    .line 1236
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 1237
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Failed to update column (got 0). appId"

    .line 1238
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1239
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v7

    .line 1241
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1242
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v3

    move-wide v9, v1

    .line 1245
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 1246
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Error inserting column. appId"

    .line 1247
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, p2, v3}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1248
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_1
    return-wide v9

    .line 1250
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public final w()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public final x()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method final y()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzq;->h:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Error opening database"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    throw v0
.end method

.method public final z()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 739
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "select app_id from queue order by has_realtime desc, rowid asc limit 1;"

    .line 742
    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 744
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    .line 746
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v2

    :cond_1
    if-eqz v0, :cond_2

    .line 749
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v0, v1

    .line 752
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v3

    const-string v4, "Database error getting next bundle app id"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_3

    .line 754
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v1

    :catchall_1
    move-exception v1

    :goto_1
    if-eqz v0, :cond_4

    .line 757
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

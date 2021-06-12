.class final Lcom/google/android/gms/measurement/internal/zzt;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/zzq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzq;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzt;->a:Lcom/google/android/gms/measurement/internal/zzq;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p2, p3, p1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->a:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzq;->a(Lcom/google/android/gms/measurement/internal/zzq;)Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-wide/32 v1, 0x36ee80

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzev;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8
    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->a:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzq;->a(Lcom/google/android/gms/measurement/internal/zzq;)Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzev;->a()V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->a:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Opening the database failed, dropping and recreating it"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    const-string v0, "google_app_measurement.db"

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt;->a:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt;->a:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Failed to delete corrupted db file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt;->a:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzq;->a(Lcom/google/android/gms/measurement/internal/zzq;)Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzev;->b()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt;->a:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Failed to open freshly created database"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    throw v0

    .line 5
    :cond_1
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database open failed"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->a:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/zzu;->a(Lcom/google/android/gms/measurement/internal/zzap;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->a:Lcom/google/android/gms/measurement/internal/zzq;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    const-string v3, "events"

    const-string v4, "CREATE TABLE IF NOT EXISTS events ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id, name)) ;"

    const-string v5, "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp"

    .line 22
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzq;->H()[Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    .line 23
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzu;->a(Lcom/google/android/gms/measurement/internal/zzap;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->a:Lcom/google/android/gms/measurement/internal/zzq;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    const-string v3, "conditional_properties"

    const-string v4, "CREATE TABLE IF NOT EXISTS conditional_properties ( app_id TEXT NOT NULL, origin TEXT NOT NULL, name TEXT NOT NULL, value BLOB NOT NULL, creation_timestamp INTEGER NOT NULL, active INTEGER NOT NULL, trigger_event_name TEXT, trigger_timeout INTEGER NOT NULL, timed_out_event BLOB,triggered_event BLOB, triggered_timestamp INTEGER NOT NULL, time_to_live INTEGER NOT NULL, expired_event BLOB, PRIMARY KEY (app_id, name)) ;"

    const-string v5, "app_id,origin,name,value,active,trigger_event_name,trigger_timeout,creation_timestamp,timed_out_event,triggered_event,triggered_timestamp,time_to_live,expired_event"

    const/4 v6, 0x0

    .line 26
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzu;->a(Lcom/google/android/gms/measurement/internal/zzap;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->a:Lcom/google/android/gms/measurement/internal/zzq;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    const-string v3, "user_attributes"

    const-string v4, "CREATE TABLE IF NOT EXISTS user_attributes ( app_id TEXT NOT NULL, name TEXT NOT NULL, set_timestamp INTEGER NOT NULL, value BLOB NOT NULL, PRIMARY KEY (app_id, name)) ;"

    const-string v5, "app_id,name,set_timestamp,value"

    .line 29
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzq;->I()[Ljava/lang/String;

    move-result-object v6

    .line 30
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzu;->a(Lcom/google/android/gms/measurement/internal/zzap;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->a:Lcom/google/android/gms/measurement/internal/zzq;

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    const-string v3, "apps"

    const-string v4, "CREATE TABLE IF NOT EXISTS apps ( app_id TEXT NOT NULL, app_instance_id TEXT, gmp_app_id TEXT, resettable_device_id_hash TEXT, last_bundle_index INTEGER NOT NULL, last_bundle_end_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id)) ;"

    const-string v5, "app_id,app_instance_id,gmp_app_id,resettable_device_id_hash,last_bundle_index,last_bundle_end_timestamp"

    .line 33
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzq;->J()[Ljava/lang/String;

    move-result-object v6

    .line 34
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzu;->a(Lcom/google/android/gms/measurement/internal/zzap;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->a:Lcom/google/android/gms/measurement/internal/zzq;

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    const-string v3, "queue"

    const-string v4, "CREATE TABLE IF NOT EXISTS queue ( app_id TEXT NOT NULL, bundle_end_timestamp INTEGER NOT NULL, data BLOB NOT NULL);"

    const-string v5, "app_id,bundle_end_timestamp,data"

    .line 37
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzq;->K()[Ljava/lang/String;

    move-result-object v6

    .line 38
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzu;->a(Lcom/google/android/gms/measurement/internal/zzap;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->a:Lcom/google/android/gms/measurement/internal/zzq;

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    const-string v3, "raw_events_metadata"

    const-string v4, "CREATE TABLE IF NOT EXISTS raw_events_metadata ( app_id TEXT NOT NULL, metadata_fingerprint INTEGER NOT NULL, metadata BLOB NOT NULL, PRIMARY KEY (app_id, metadata_fingerprint));"

    const-string v5, "app_id,metadata_fingerprint,metadata"

    const/4 v6, 0x0

    .line 41
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzu;->a(Lcom/google/android/gms/measurement/internal/zzap;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->a:Lcom/google/android/gms/measurement/internal/zzq;

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    const-string v3, "raw_events"

    const-string v4, "CREATE TABLE IF NOT EXISTS raw_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, timestamp INTEGER NOT NULL, metadata_fingerprint INTEGER NOT NULL, data BLOB NOT NULL);"

    const-string v5, "app_id,name,timestamp,metadata_fingerprint,data"

    .line 44
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzq;->L()[Ljava/lang/String;

    move-result-object v6

    .line 45
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzu;->a(Lcom/google/android/gms/measurement/internal/zzap;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->a:Lcom/google/android/gms/measurement/internal/zzq;

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    const-string v3, "event_filters"

    const-string v4, "CREATE TABLE IF NOT EXISTS event_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, event_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, event_name, audience_id, filter_id));"

    const-string v5, "app_id,audience_id,filter_id,event_name,data"

    const/4 v6, 0x0

    .line 48
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzu;->a(Lcom/google/android/gms/measurement/internal/zzap;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->a:Lcom/google/android/gms/measurement/internal/zzq;

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    const-string v3, "property_filters"

    const-string v4, "CREATE TABLE IF NOT EXISTS property_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, property_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, property_name, audience_id, filter_id));"

    const-string v5, "app_id,audience_id,filter_id,property_name,data"

    .line 51
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzu;->a(Lcom/google/android/gms/measurement/internal/zzap;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->a:Lcom/google/android/gms/measurement/internal/zzq;

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    const-string v3, "audience_filter_values"

    const-string v4, "CREATE TABLE IF NOT EXISTS audience_filter_values ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, current_results BLOB, PRIMARY KEY (app_id, audience_id));"

    const-string v5, "app_id,audience_id,current_results"

    .line 54
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzu;->a(Lcom/google/android/gms/measurement/internal/zzap;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->a:Lcom/google/android/gms/measurement/internal/zzq;

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    const-string v3, "app2"

    const-string v4, "CREATE TABLE IF NOT EXISTS app2 ( app_id TEXT NOT NULL, first_open_count INTEGER NOT NULL, PRIMARY KEY (app_id));"

    const-string v5, "app_id,first_open_count"

    .line 57
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzq;->M()[Ljava/lang/String;

    move-result-object v6

    .line 58
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzu;->a(Lcom/google/android/gms/measurement/internal/zzap;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->a:Lcom/google/android/gms/measurement/internal/zzq;

    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    const-string v3, "main_event_params"

    const-string v4, "CREATE TABLE IF NOT EXISTS main_event_params ( app_id TEXT NOT NULL, event_id TEXT NOT NULL, children_to_process INTEGER NOT NULL, main_event BLOB NOT NULL, PRIMARY KEY (app_id));"

    const-string v5, "app_id,event_id,children_to_process,main_event"

    const/4 v6, 0x0

    .line 61
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzu;->a(Lcom/google/android/gms/measurement/internal/zzap;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    return-void
.end method

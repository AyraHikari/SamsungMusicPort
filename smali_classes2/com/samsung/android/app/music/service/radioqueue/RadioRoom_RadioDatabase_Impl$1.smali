.class Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl$1;
.super Landroid/arch/persistence/room/RoomOpenHelper$Delegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl;->createOpenHelper(Landroid/arch/persistence/room/DatabaseConfiguration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl;I)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `play_list` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `play_list_id` TEXT NOT NULL, `play_list_name` TEXT, `play_list_description` TEXT, `last_modified_time` INTEGER NOT NULL, `item_order` INTEGER NOT NULL, `item_ad_info` INTEGER NOT NULL, `fixed_play_routine` INTEGER NOT NULL, `play_position` INTEGER NOT NULL, `play_audio_id` INTEGER NOT NULL)"

    .line 32
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX `index_play_list_play_list_id_item_order` ON `play_list` (`play_list_id`, `item_order`)"

    .line 33
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 34
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"83cc242ea64846b55443969a88c0ccd4\")"

    .line 35
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    return-void
.end method

.method public dropAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS `play_list`"

    .line 40
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl;->a(Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 46
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl;->b(Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 47
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl;->c(Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/persistence/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroid/arch/persistence/room/RoomDatabase$Callback;->a(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl;->a(Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl;->b(Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl;->d(Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 57
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl;->e(Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 58
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl;->f(Lcom/samsung/android/app/music/service/radioqueue/RadioRoom_RadioDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/persistence/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroid/arch/persistence/room/RoomDatabase$Callback;->b(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected validateMigration(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 8

    .line 65
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "_id"

    .line 66
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "_id"

    const-string v4, "INTEGER"

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "play_list_id"

    .line 67
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "play_list_id"

    const-string v4, "TEXT"

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "play_list_name"

    .line 68
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "play_list_name"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v6, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "play_list_description"

    .line 69
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "play_list_description"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v6, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "last_modified_time"

    .line 70
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "last_modified_time"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "item_order"

    .line 71
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "item_order"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "item_ad_info"

    .line 72
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "item_ad_info"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fixed_play_routine"

    .line 73
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "fixed_play_routine"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "play_position"

    .line 74
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "play_position"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "play_audio_id"

    .line 75
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "play_audio_id"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 77
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 78
    new-instance v3, Landroid/arch/persistence/room/util/TableInfo$Index;

    const-string v4, "index_play_list_play_list_id_item_order"

    const-string v6, "play_list_id"

    const-string v7, "item_order"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Landroid/arch/persistence/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v3, Landroid/arch/persistence/room/util/TableInfo;

    const-string v4, "play_list"

    invoke-direct {v3, v4, v0, v1, v2}, Landroid/arch/persistence/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v0, "play_list"

    .line 80
    invoke-static {p1, v0}, Landroid/arch/persistence/room/util/TableInfo;->a(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroid/arch/persistence/room/util/TableInfo;

    move-result-object p1

    .line 81
    invoke-virtual {v3, p1}, Landroid/arch/persistence/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migration didn\'t properly handle play_list(com.samsung.android.app.music.service.radioqueue.RadioRoom.PlayList).\n Expected:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Found:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

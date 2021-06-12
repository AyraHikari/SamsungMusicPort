.class Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl$1;
.super Landroid/arch/persistence/room/RoomOpenHelper$Delegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->createOpenHelper(Landroid/arch/persistence/room/DatabaseConfiguration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;I)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `meta` (`_id` INTEGER NOT NULL, `audio_id` INTEGER NOT NULL, `source_audio_id` TEXT NOT NULL, `addedIndex` INTEGER NOT NULL, `playlist_id` INTEGER NOT NULL, `virtual_state` INTEGER NOT NULL, PRIMARY KEY(`_id`))"

    .line 36
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX `index_meta__id` ON `meta` (`_id`)"

    .line 37
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `playlist` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `playlist_id` TEXT NOT NULL)"

    .line 38
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX `index_playlist_id` ON `playlist` (`id`)"

    .line 39
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX `index_playlist_playlist_id` ON `playlist` (`playlist_id`)"

    .line 40
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `QueueItem` (`_id` INTEGER NOT NULL, `audio_id` INTEGER NOT NULL, `source_audio_id` TEXT NOT NULL, `addedIndex` INTEGER NOT NULL, `playlist_id` TEXT NOT NULL, `virtual_state` INTEGER NOT NULL, PRIMARY KEY(`_id`))"

    .line 41
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 42
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"49b5cdd2eb75765b1e493d8c1349b1d3\")"

    .line 43
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    return-void
.end method

.method public dropAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS `meta`"

    .line 48
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `playlist`"

    .line 49
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `QueueItem`"

    .line 50
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 56
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 57
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;)Ljava/util/List;

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

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->access$302(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->access$600(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 68
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;)Ljava/util/List;

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
    .locals 9

    .line 75
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "_id"

    .line 76
    new-instance v3, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v4, "_id"

    const-string v5, "INTEGER"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "audio_id"

    .line 77
    new-instance v3, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v4, "audio_id"

    const-string v5, "INTEGER"

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "source_audio_id"

    .line 78
    new-instance v3, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v4, "source_audio_id"

    const-string v5, "TEXT"

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "addedIndex"

    .line 79
    new-instance v3, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v4, "addedIndex"

    const-string v5, "INTEGER"

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "playlist_id"

    .line 80
    new-instance v3, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v4, "playlist_id"

    const-string v5, "INTEGER"

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "virtual_state"

    .line 81
    new-instance v3, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v4, "virtual_state"

    const-string v5, "INTEGER"

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 83
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 84
    new-instance v4, Landroid/arch/persistence/room/util/TableInfo$Index;

    const-string v5, "index_meta__id"

    const-string v8, "_id"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v4, v5, v6, v8}, Landroid/arch/persistence/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v4, Landroid/arch/persistence/room/util/TableInfo;

    const-string v5, "meta"

    invoke-direct {v4, v5, v0, v2, v3}, Landroid/arch/persistence/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v0, "meta"

    .line 86
    invoke-static {p1, v0}, Landroid/arch/persistence/room/util/TableInfo;->a(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroid/arch/persistence/room/util/TableInfo;

    move-result-object v0

    .line 87
    invoke-virtual {v4, v0}, Landroid/arch/persistence/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v3, "id"

    .line 93
    new-instance v4, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v5, "id"

    const-string v8, "INTEGER"

    invoke-direct {v4, v5, v8, v6, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "playlist_id"

    .line 94
    new-instance v4, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v5, "playlist_id"

    const-string v8, "TEXT"

    invoke-direct {v4, v5, v8, v6, v7}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 96
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 97
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Index;

    const-string v5, "index_playlist_id"

    const-string v8, "id"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v2, v5, v6, v8}, Landroid/arch/persistence/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Index;

    const-string v5, "index_playlist_playlist_id"

    const-string v8, "playlist_id"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v2, v5, v6, v8}, Landroid/arch/persistence/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo;

    const-string v5, "playlist"

    invoke-direct {v2, v5, v0, v3, v4}, Landroid/arch/persistence/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v0, "playlist"

    .line 100
    invoke-static {p1, v0}, Landroid/arch/persistence/room/util/TableInfo;->a(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroid/arch/persistence/room/util/TableInfo;

    move-result-object v0

    .line 101
    invoke-virtual {v2, v0}, Landroid/arch/persistence/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "_id"

    .line 107
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "_id"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "audio_id"

    .line 108
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "audio_id"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v7}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source_audio_id"

    .line 109
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "source_audio_id"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v6, v7}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "addedIndex"

    .line 110
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "addedIndex"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v7}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "playlist_id"

    .line 111
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "playlist_id"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v6, v7}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "virtual_state"

    .line 112
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "virtual_state"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v7}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 114
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 115
    new-instance v3, Landroid/arch/persistence/room/util/TableInfo;

    const-string v4, "QueueItem"

    invoke-direct {v3, v4, v0, v1, v2}, Landroid/arch/persistence/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v0, "QueueItem"

    .line 116
    invoke-static {p1, v0}, Landroid/arch/persistence/room/util/TableInfo;->a(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroid/arch/persistence/room/util/TableInfo;

    move-result-object p1

    .line 117
    invoke-virtual {v3, p1}, Landroid/arch/persistence/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migration didn\'t properly handle QueueItem(com.samsung.android.app.musiclibrary.core.service.queue.room.QueueRoom.QueueItem).\n Expected:\n"

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

    .line 102
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migration didn\'t properly handle playlist(com.samsung.android.app.musiclibrary.core.service.queue.room.QueueRoom.Playlist.PlaylistItem).\n Expected:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Found:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migration didn\'t properly handle meta(com.samsung.android.app.musiclibrary.core.service.queue.room.QueueRoom.Meta.MetaItem).\n Expected:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Found:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.class public Landroid/arch/persistence/room/util/TableInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/persistence/room/util/TableInfo$Index;,
        Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;,
        Landroid/arch/persistence/room/util/TableInfo$ForeignKey;,
        Landroid/arch/persistence/room/util/TableInfo$Column;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/arch/persistence/room/util/TableInfo$Column;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/arch/persistence/room/util/TableInfo$ForeignKey;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Set;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/arch/persistence/room/util/TableInfo$Index;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/arch/persistence/room/util/TableInfo$Column;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/arch/persistence/room/util/TableInfo$ForeignKey;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/arch/persistence/room/util/TableInfo$Index;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroid/arch/persistence/room/util/TableInfo;->a:Ljava/lang/String;

    .line 75
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroid/arch/persistence/room/util/TableInfo;->b:Ljava/util/Map;

    .line 76
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/arch/persistence/room/util/TableInfo;->c:Ljava/util/Set;

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroid/arch/persistence/room/util/TableInfo;->d:Ljava/util/Set;

    return-void
.end method

.method private static a(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;Z)Landroid/arch/persistence/room/util/TableInfo$Index;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA index_xinfo(`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "`)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string v0, "seqno"

    .line 278
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "cid"

    .line 279
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "name"

    .line 280
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    if-eq v1, v3, :cond_3

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 285
    :cond_0
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 287
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 288
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-gez v4, :cond_1

    goto :goto_0

    .line 293
    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 294
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 295
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 297
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 298
    invoke-virtual {v3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 299
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Index;

    invoke-direct {v1, p1, p2, v0}, Landroid/arch/persistence/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method public static a(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroid/arch/persistence/room/util/TableInfo;
    .locals 3

    .line 139
    invoke-static {p0, p1}, Landroid/arch/persistence/room/util/TableInfo;->c(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 140
    invoke-static {p0, p1}, Landroid/arch/persistence/room/util/TableInfo;->b(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 141
    invoke-static {p0, p1}, Landroid/arch/persistence/room/util/TableInfo;->d(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    .line 142
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo;

    invoke-direct {v2, p1, v0, v1, p0}, Landroid/arch/persistence/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    return-object v2
.end method

.method private static a(Landroid/database/Cursor;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;",
            ">;"
        }
    .end annotation

    const-string v0, "id"

    .line 189
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "seq"

    .line 190
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "from"

    .line 191
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "to"

    .line 192
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 193
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 194
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    .line 196
    invoke-interface {p0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 197
    new-instance v7, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;

    .line 198
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 199
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 200
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 201
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 204
    :cond_0
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v5
.end method

.method private static b(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/db/SupportSQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroid/arch/persistence/room/util/TableInfo$ForeignKey;",
            ">;"
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PRAGMA foreign_key_list(`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "`)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-interface {v2, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "id"

    .line 151
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "seq"

    .line 152
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "table"

    .line 153
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "on_delete"

    .line 154
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "on_update"

    .line 155
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 157
    invoke-static {v1}, Landroid/arch/persistence/room/util/TableInfo;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v7

    .line 158
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_3

    .line 160
    invoke-interface {v1, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 161
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_2

    .line 165
    :cond_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 166
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 167
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 168
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;

    .line 169
    iget v13, v12, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->a:I

    if-ne v13, v10, :cond_1

    .line 170
    iget-object v13, v12, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->c:Ljava/lang/String;

    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v12, v12, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->d:Ljava/lang/String;

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 174
    :cond_2
    new-instance v10, Landroid/arch/persistence/room/util/TableInfo$ForeignKey;

    .line 175
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 176
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 177
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object v11, v10

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v17

    invoke-direct/range {v11 .. v16}, Landroid/arch/persistence/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 174
    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 183
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static c(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/db/SupportSQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/arch/persistence/room/util/TableInfo$Column;",
            ">;"
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA table_info(`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-interface {p0, p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 213
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 215
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "name"

    .line 216
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "type"

    .line 217
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "notnull"

    .line 218
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "pk"

    .line 219
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 221
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 222
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 223
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 224
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 225
    :goto_1
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 226
    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Column;

    invoke-direct {v8, v4, v5, v6, v7}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-interface {p1, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 230
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method private static d(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/db/SupportSQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroid/arch/persistence/room/util/TableInfo$Index;",
            ">;"
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA index_list(`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v0, "name"

    .line 242
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "origin"

    .line 243
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "unique"

    .line 244
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_5

    if-eq v1, v4, :cond_5

    if-ne v2, v4, :cond_0

    goto :goto_2

    .line 249
    :cond_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 250
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 251
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "c"

    .line 252
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 256
    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 257
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 258
    :goto_1
    invoke-static {p0, v5, v7}, Landroid/arch/persistence/room/util/TableInfo;->a(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;Z)Landroid/arch/persistence/room/util/TableInfo$Index;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_3

    .line 267
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v3

    .line 263
    :cond_3
    :try_start_1
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 267
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v4

    :cond_5
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v3

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_4

    .line 93
    :cond_1
    check-cast p1, Landroid/arch/persistence/room/util/TableInfo;

    .line 95
    iget-object v2, p0, Landroid/arch/persistence/room/util/TableInfo;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/arch/persistence/room/util/TableInfo;->a:Ljava/lang/String;

    iget-object v3, p1, Landroid/arch/persistence/room/util/TableInfo;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Landroid/arch/persistence/room/util/TableInfo;->a:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 96
    :cond_3
    iget-object v2, p0, Landroid/arch/persistence/room/util/TableInfo;->b:Ljava/util/Map;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/arch/persistence/room/util/TableInfo;->b:Ljava/util/Map;

    iget-object v3, p1, Landroid/arch/persistence/room/util/TableInfo;->b:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Landroid/arch/persistence/room/util/TableInfo;->b:Ljava/util/Map;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    .line 99
    :cond_5
    iget-object v2, p0, Landroid/arch/persistence/room/util/TableInfo;->c:Ljava/util/Set;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/arch/persistence/room/util/TableInfo;->c:Ljava/util/Set;

    iget-object v3, p1, Landroid/arch/persistence/room/util/TableInfo;->c:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v2, p1, Landroid/arch/persistence/room/util/TableInfo;->c:Ljava/util/Set;

    if-eqz v2, :cond_7

    :goto_2
    return v1

    .line 103
    :cond_7
    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo;->d:Ljava/util/Set;

    if-eqz v1, :cond_9

    iget-object v1, p1, Landroid/arch/persistence/room/util/TableInfo;->d:Ljava/util/Set;

    if-nez v1, :cond_8

    goto :goto_3

    .line 108
    :cond_8
    iget-object v0, p0, Landroid/arch/persistence/room/util/TableInfo;->d:Ljava/util/Set;

    iget-object p1, p1, Landroid/arch/persistence/room/util/TableInfo;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    :goto_3
    return v0

    :cond_a
    :goto_4
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 113
    iget-object v0, p0, Landroid/arch/persistence/room/util/TableInfo;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/arch/persistence/room/util/TableInfo;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 114
    iget-object v2, p0, Landroid/arch/persistence/room/util/TableInfo;->b:Ljava/util/Map;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/arch/persistence/room/util/TableInfo;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 115
    iget-object v2, p0, Landroid/arch/persistence/room/util/TableInfo;->c:Ljava/util/Set;

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TableInfo{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", columns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", foreignKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo;->c:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", indices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo;->d:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

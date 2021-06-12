.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover$DuplicationResult;
    }
.end annotation


# static fields
.field private static final MAX_BULK_ITEM:I = 0x1388

.field private static final UNIQUE_PROJECTION:[Ljava/lang/String;

.field private static final UNIQUE_URI:Landroid/net/Uri;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->h:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover;->UNIQUE_URI:Landroid/net/Uri;

    const-string v0, "_id"

    const-string v1, "purchased_audio_id"

    .line 36
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover;->UNIQUE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    return-void
.end method

.method private getUniqueCursor()Landroid/database/Cursor;
    .locals 6

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover;->UNIQUE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover;->UNIQUE_PROJECTION:[Ljava/lang/String;

    const-string v5, "recent_order DESC"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getUniqueList(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;)Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover$DuplicationResult;
    .locals 13

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUniqueList() base count :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printLog(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getAddedOrderList()Ljava/util/List;

    move-result-object v1

    .line 66
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover;->internalBulkInsertUniqueItems(Ljava/util/List;Ljava/util/List;)V

    .line 69
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 71
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v3

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover;->getUniqueCursor()Landroid/database/Cursor;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_a

    .line 73
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_4

    :cond_0
    const-wide/16 v6, -0x1

    :cond_1
    const-string v8, "purchased_audio_id"

    .line 79
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 78
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v10, "_id"

    .line 80
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    .line 81
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v10, v3, :cond_2

    move-wide v6, v8

    .line 85
    :cond_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1

    if-eqz v4, :cond_3

    .line 86
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 88
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    if-eq v3, v4, :cond_9

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-gtz v3, :cond_4

    goto/16 :goto_3

    .line 96
    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    .line 97
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_5
    const-string p1, "getUniqueList() but play position is not set. Go To First"

    .line 99
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printWarnLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 103
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 104
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 106
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 110
    :cond_6
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p1, :cond_7

    move p1, v3

    .line 117
    :cond_7
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 122
    :cond_8
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duplication before addedOrderList = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printDebuggingLog(Ljava/lang/String;)V

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duplication before retainPositions = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printDebuggingLog(Ljava/lang/String;)V

    .line 127
    invoke-static {v5, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/AddedOrderUtils;->buildRemainSeqPositions(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duplication after newAddedOrderList = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printDebuggingLog(Ljava/lang/String;)V

    .line 129
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover$DuplicationResult;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    invoke-direct {v3, v2, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;-><init>(Ljava/util/List;Ljava/util/List;I)V

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover$DuplicationResult;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;Ljava/util/List;)V

    return-object v1

    :cond_9
    :goto_3
    const-string v0, "SV-List"

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUniqueList() but no duplicate list. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " unique tracks"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover$DuplicationResult;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover$DuplicationResult;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;Ljava/util/List;)V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    move-object v5, p1

    goto :goto_5

    :cond_a
    :goto_4
    :try_start_1
    const-string v0, "getUniqueList() but there is no track !!"

    .line 74
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printErrorLog(Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover$DuplicationResult;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover$DuplicationResult;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_b

    .line 86
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_b
    return-object v0

    .line 72
    :goto_5
    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_6
    if-eqz v4, :cond_d

    if-eqz v5, :cond_c

    .line 86
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_d
    :goto_7
    throw p1
.end method

.method private internalBulkInsertUniqueItems(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 135
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    .line 136
    new-array p1, v0, [J

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioIds(Ljava/util/List;)[J

    move-result-object p1

    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-ge v0, v1, :cond_3

    const/16 v3, 0x1388

    if-ge v0, v3, :cond_2

    .line 140
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover;->UNIQUE_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "delete_before_insert"

    const-string v6, "delete"

    .line 141
    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 142
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    goto :goto_3

    :cond_2
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover;->UNIQUE_URI:Landroid/net/Uri;

    .line 143
    :goto_3
    invoke-direct {p0, p1, p2, v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover;->makeInsertItems([JLjava/util/List;II)[Landroid/content/ContentValues;

    move-result-object v3

    .line 144
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit16 v0, v0, 0x1388

    goto :goto_2

    .line 146
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "internalBulkInsertUniqueItems() count : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    return-void
.end method

.method private makeInsertItems([JLjava/util/List;II)[Landroid/content/ContentValues;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;II)[",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    add-int v0, p3, p4

    .line 151
    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 152
    array-length p4, p1

    sub-int/2addr p4, p3

    .line 154
    :cond_0
    new-array v0, p4, [Landroid/content/ContentValues;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_1

    .line 156
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "audio_id"

    add-int v4, p3, v1

    .line 157
    aget-wide v5, p1, v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "recent_order"

    .line 159
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 158
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method getUniqueTrackList(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;)Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover$DuplicationResult;
    .locals 2

    .line 50
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "getUniqueTrackList but list is empty"

    .line 51
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover$DuplicationResult;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover$DuplicationResult;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;Ljava/util/List;)V

    return-object v0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getDuplicateOption()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover$DuplicationResult;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover$DuplicationResult;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;Ljava/util/List;)V

    return-object v0

    .line 58
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover;->getUniqueList(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;)Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover$DuplicationResult;

    move-result-object p1

    return-object p1
.end method

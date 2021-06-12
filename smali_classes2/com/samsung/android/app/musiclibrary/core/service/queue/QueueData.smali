.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY_LIST:[J

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

.field private static final SUB_TAG:Ljava/lang/String; = "FirstQueue: "

.field private static final TAG:Ljava/lang/String; = "SV-List"

.field private static final UNDEFINED:I = -0x1


# instance fields
.field final list:[J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mConvertedPosition:I

.field private mFinished:Z

.field private final mOriginId:J

.field final position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 24
    new-array v0, v0, [J

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->EMPTY_LIST:[J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;[JI)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mConvertedPosition:I

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mFinished:Z

    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mContext:Landroid/content/Context;

    if-nez p2, :cond_0

    .line 43
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->EMPTY_LIST:[J

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->list:[J

    if-gez p3, :cond_1

    goto :goto_1

    :cond_1
    move v0, p3

    .line 44
    :goto_1
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->position:I

    .line 45
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->list:[J

    array-length p1, p1

    if-le p1, p3, :cond_2

    .line 46
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->position:I

    aget-wide p1, p2, p1

    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mOriginId:J

    goto :goto_2

    :cond_2
    const-wide/16 p1, -0x1

    .line 48
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mOriginId:J

    .line 50
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "First QueueData created position "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->position:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and origin id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mOriginId:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method private convertMusicProviderIds(Landroid/content/Context;[J)[J
    .locals 8

    .line 75
    array-length v0, p2

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "source_id"

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 79
    aget-wide v3, p2, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_0

    const/16 v3, 0x2c

    .line 81
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x29

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->d:Landroid/net/Uri;

    const-string v0, "source_id"

    const-string v2, "_id"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    .line 87
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 90
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "source_id"

    .line 91
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "_id"

    .line 92
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 93
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    .line 95
    :cond_2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 96
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 97
    invoke-direct {p0, v3, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->getArrangeIds(Landroid/util/LongSparseArray;[J)[J

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 99
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    move-object v0, p2

    .line 86
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p1, :cond_5

    if-eqz v0, :cond_4

    .line 99
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    throw p2

    :cond_6
    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_7
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->EMPTY_LIST:[J

    return-object p1
.end method

.method private getArrangeIds(Landroid/util/LongSparseArray;[J)[J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Long;",
            ">;[J)[J"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-wide v5, p2, v3

    .line 107
    invoke-virtual {p1, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    if-nez v7, :cond_0

    .line 109
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Convert id but meida id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " is not exist in MusicProvider."

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->printLog(Ljava/lang/String;)V

    goto :goto_1

    .line 111
    :cond_0
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mConvertedPosition:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    iget-wide v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mOriginId:J

    cmp-long v5, v7, v5

    if-nez v5, :cond_1

    .line 113
    iput v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mConvertedPosition:I

    :cond_1
    add-int/lit8 v4, v4, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    .line 120
    new-array p2, p1, [J

    :goto_2
    if-ge v2, p1, :cond_3

    .line 122
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object p2
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-List"

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FirstQueue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method convert()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;
    .locals 5

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->list:[J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->convertMusicProviderIds(Landroid/content/Context;[J)[J

    move-result-object v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "First converted QueueData created "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mConvertedPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->printLog(Ljava/lang/String;)V

    .line 62
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mConvertedPosition:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mConvertedPosition:I

    :goto_0
    invoke-direct {v1, v2, v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;-><init>(Landroid/content/Context;[JI)V

    return-object v1
.end method

.method finished()V
    .locals 1

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mFinished:Z

    return-void
.end method

.method isFinished()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mFinished:Z

    return v0
.end method

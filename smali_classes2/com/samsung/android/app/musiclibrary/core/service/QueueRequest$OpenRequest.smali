.class public final Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenRequest"
.end annotation


# instance fields
.field public final history:Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;

.field public final keyWord:Ljava/lang/String;

.field public final list:[J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final playMode:I

.field final playerOption:Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;

.field public final position:I

.field public final queueItems:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field public final uriType:I


# direct methods
.method private constructor <init>(IILjava/lang/String;[JLjava/util/List;ILcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;I",
            "Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;",
            "Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;",
            ")V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->playMode:I

    .line 99
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->uriType:I

    .line 100
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->keyWord:Ljava/lang/String;

    .line 101
    iput-object p7, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->playerOption:Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;

    if-nez p4, :cond_0

    .line 102
    sget-object p4, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->EMPTY_PLAYLIST:[J

    :cond_0
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->list:[J

    if-nez p5, :cond_1

    .line 103
    sget-object p5, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_QUEUE:Ljava/util/List;

    :cond_1
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->queueItems:Ljava/util/List;

    .line 104
    iput p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->position:I

    if-nez p8, :cond_2

    .line 105
    sget-object p8, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;->EMPTY_HISTORY:Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;

    :cond_2
    iput-object p8, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->history:Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;

    return-void
.end method

.method public static create(IILjava/lang/String;[JLjava/util/List;I)Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;I)",
            "Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;"
        }
    .end annotation

    .line 71
    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;-><init>(IILjava/lang/String;[JLjava/util/List;ILcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;)V

    return-object v9
.end method

.method public static create(IILjava/lang/String;[JLjava/util/List;ILcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;)Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;I",
            "Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;",
            ")",
            "Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;"
        }
    .end annotation

    .line 77
    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;

    const/4 v8, 0x0

    move-object v0, v9

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;-><init>(IILjava/lang/String;[JLjava/util/List;ILcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;)V

    return-object v9
.end method

.method public static create(IILjava/lang/String;[JLjava/util/List;ILcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;)Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;I",
            "Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;",
            "Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;",
            ")",
            "Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;"
        }
    .end annotation

    .line 91
    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;

    move-object v0, v9

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;-><init>(IILjava/lang/String;[JLjava/util/List;ILcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;)V

    return-object v9
.end method

.method public static create(IILjava/lang/String;[JLjava/util/List;ILcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;)Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;I",
            "Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;",
            ")",
            "Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;"
        }
    .end annotation

    .line 84
    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;

    const/4 v7, 0x0

    move-object v0, v9

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;-><init>(IILjava/lang/String;[JLjava/util/List;ILcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;)V

    return-object v9
.end method

.method public static create(Ljava/lang/String;[JLjava/util/List;ILcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;)Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;I",
            "Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;",
            ")",
            "Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;"
        }
    .end annotation

    .line 65
    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;-><init>(IILjava/lang/String;[JLjava/util/List;ILcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;)V

    return-object v9
.end method

.method static createEmptyRequest()Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;
    .locals 10

    .line 59
    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;-><init>(IILjava/lang/String;[JLjava/util/List;ILcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;)V

    return-object v9
.end method


# virtual methods
.method public getKeyWord()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->keyWord:Ljava/lang/String;

    return-object v0
.end method

.method public getUriType()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->uriType:I

    return v0
.end method

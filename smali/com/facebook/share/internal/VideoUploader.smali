.class public Lcom/facebook/share/internal/VideoUploader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;,
        Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;,
        Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;,
        Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem;,
        Lcom/facebook/share/internal/VideoUploader$UploadContext;
    }
.end annotation


# static fields
.field private static final ERROR_BAD_SERVER_RESPONSE:Ljava/lang/String; = "Unexpected error in server response"

.field private static final ERROR_UPLOAD:Ljava/lang/String; = "Video upload failed"

.field private static final MAX_RETRIES_PER_PHASE:I = 0x2

.field private static final PARAM_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final PARAM_END_OFFSET:Ljava/lang/String; = "end_offset"

.field private static final PARAM_FILE_SIZE:Ljava/lang/String; = "file_size"

.field private static final PARAM_REF:Ljava/lang/String; = "ref"

.field private static final PARAM_SESSION_ID:Ljava/lang/String; = "upload_session_id"

.field private static final PARAM_START_OFFSET:Ljava/lang/String; = "start_offset"

.field private static final PARAM_TITLE:Ljava/lang/String; = "title"

.field private static final PARAM_UPLOAD_PHASE:Ljava/lang/String; = "upload_phase"

.field private static final PARAM_VALUE_UPLOAD_FINISH_PHASE:Ljava/lang/String; = "finish"

.field private static final PARAM_VALUE_UPLOAD_START_PHASE:Ljava/lang/String; = "start"

.field private static final PARAM_VALUE_UPLOAD_TRANSFER_PHASE:Ljava/lang/String; = "transfer"

.field private static final PARAM_VIDEO_FILE_CHUNK:Ljava/lang/String; = "video_file_chunk"

.field private static final PARAM_VIDEO_ID:Ljava/lang/String; = "video_id"

.field private static final RETRY_DELAY_BACK_OFF_FACTOR:I = 0x3

.field private static final RETRY_DELAY_UNIT_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "VideoUploader"

.field private static final UPLOAD_QUEUE_MAX_CONCURRENT:I = 0x8

.field private static accessTokenTracker:Lcom/facebook/AccessTokenTracker;

.field private static handler:Landroid/os/Handler;

.field private static initialized:Z

.field private static pendingUploads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/share/internal/VideoUploader$UploadContext;",
            ">;"
        }
    .end annotation
.end field

.field private static uploadQueue:Lcom/facebook/internal/WorkQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 95
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/share/internal/VideoUploader;->uploadQueue:Lcom/facebook/internal/WorkQueue;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/VideoUploader;->pendingUploads:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    .line 65
    invoke-static {}, Lcom/facebook/share/internal/VideoUploader;->cancelAllRequests()V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 65
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/share/internal/VideoUploader;->enqueueUploadChunk(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 65
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/VideoUploader;->logError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V
    .locals 0

    .line 65
    invoke-static {p0, p1}, Lcom/facebook/share/internal/VideoUploader;->enqueueUploadStart(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/VideoUploader;->getChunk(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V
    .locals 0

    .line 65
    invoke-static {p0, p1}, Lcom/facebook/share/internal/VideoUploader;->enqueueUploadFinish(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V

    return-void
.end method

.method static synthetic access$800()Landroid/os/Handler;
    .locals 1

    .line 65
    invoke-static {}, Lcom/facebook/share/internal/VideoUploader;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/facebook/share/internal/VideoUploader$UploadContext;Lcom/facebook/FacebookException;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/VideoUploader;->issueResponse(Lcom/facebook/share/internal/VideoUploader$UploadContext;Lcom/facebook/FacebookException;Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized cancelAllRequests()V
    .locals 4

    const-class v0, Lcom/facebook/share/internal/VideoUploader;

    monitor-enter v0

    .line 136
    :try_start_0
    sget-object v1, Lcom/facebook/share/internal/VideoUploader;->pendingUploads:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/share/internal/VideoUploader$UploadContext;

    const/4 v3, 0x1

    .line 137
    iput-boolean v3, v2, Lcom/facebook/share/internal/VideoUploader$UploadContext;->isCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 139
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 135
    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized enqueueRequest(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/Runnable;)V
    .locals 2

    const-class v0, Lcom/facebook/share/internal/VideoUploader;

    monitor-enter v0

    .line 207
    :try_start_0
    sget-object v1, Lcom/facebook/share/internal/VideoUploader;->uploadQueue:Lcom/facebook/internal/WorkQueue;

    invoke-virtual {v1, p1}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 206
    monitor-exit v0

    throw p0
.end method

.method private static enqueueUploadChunk(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 187
    new-instance v0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;-><init>(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p0, v0}, Lcom/facebook/share/internal/VideoUploader;->enqueueRequest(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static enqueueUploadFinish(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V
    .locals 1

    .line 197
    new-instance v0, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;

    invoke-direct {v0, p0, p1}, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;-><init>(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V

    invoke-static {p0, v0}, Lcom/facebook/share/internal/VideoUploader;->enqueueRequest(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static enqueueUploadStart(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V
    .locals 1

    .line 175
    new-instance v0, Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem;

    invoke-direct {v0, p0, p1}, Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem;-><init>(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V

    invoke-static {p0, v0}, Lcom/facebook/share/internal/VideoUploader;->enqueueRequest(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getChunk(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->chunkStart:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const-string p2, "Error reading video chunk. Expected chunk \'%s\'. Requested chunk \'%s\'."

    .line 217
    new-array v0, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->chunkStart:Ljava/lang/String;

    aput-object p0, v0, v3

    aput-object p1, v0, v1

    invoke-static {v4, p2, v0}, Lcom/facebook/share/internal/VideoUploader;->logError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    .line 225
    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 226
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    sub-long/2addr v7, v5

    long-to-int p1, v7

    .line 229
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x2000

    .line 230
    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 231
    new-array v5, v5, [B

    .line 234
    :cond_1
    iget-object v6, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoStream:Ljava/io/InputStream;

    invoke-virtual {v6, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 235
    invoke-virtual {v0, v5, v3, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    sub-int/2addr p1, v6

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    if-gez p1, :cond_1

    const-string p0, "Error reading video chunk. Expected buffer length - \'%d\'. Actual - \'%d\'."

    .line 243
    new-array p2, v2, [Ljava/lang/Object;

    add-int/2addr p1, v6

    .line 246
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v3

    .line 247
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v1

    .line 243
    invoke-static {v4, p0, p2}, Lcom/facebook/share/internal/VideoUploader;->logError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    .line 252
    :cond_3
    :goto_0
    iput-object p2, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->chunkStart:Ljava/lang/String;

    .line 254
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized getHandler()Landroid/os/Handler;
    .locals 3

    const-class v0, Lcom/facebook/share/internal/VideoUploader;

    monitor-enter v0

    .line 147
    :try_start_0
    sget-object v1, Lcom/facebook/share/internal/VideoUploader;->handler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 148
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/facebook/share/internal/VideoUploader;->handler:Landroid/os/Handler;

    .line 150
    :cond_0
    sget-object v1, Lcom/facebook/share/internal/VideoUploader;->handler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 146
    monitor-exit v0

    throw v1
.end method

.method private static issueResponse(Lcom/facebook/share/internal/VideoUploader$UploadContext;Lcom/facebook/FacebookException;Ljava/lang/String;)V
    .locals 1

    .line 159
    invoke-static {p0}, Lcom/facebook/share/internal/VideoUploader;->removePendingUpload(Lcom/facebook/share/internal/VideoUploader$UploadContext;)V

    .line 161
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 163
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->callback:Lcom/facebook/FacebookCallback;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 165
    iget-object p0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->callback:Lcom/facebook/FacebookCallback;

    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnErrorCallback(Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 166
    :cond_0
    iget-boolean p1, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->isCanceled:Z

    if-eqz p1, :cond_1

    .line 167
    iget-object p0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->callback:Lcom/facebook/FacebookCallback;

    invoke-static {p0}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnCancelCallback(Lcom/facebook/FacebookCallback;)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object p0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->callback:Lcom/facebook/FacebookCallback;

    invoke-static {p0, p2}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnSuccessCallback(Lcom/facebook/FacebookCallback;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static varargs logError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const-string v0, "VideoUploader"

    .line 283
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static registerAccessTokenTracker()V
    .locals 1

    .line 258
    new-instance v0, Lcom/facebook/share/internal/VideoUploader$1;

    invoke-direct {v0}, Lcom/facebook/share/internal/VideoUploader$1;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/VideoUploader;->accessTokenTracker:Lcom/facebook/AccessTokenTracker;

    return-void
.end method

.method private static declared-synchronized removePendingUpload(Lcom/facebook/share/internal/VideoUploader$UploadContext;)V
    .locals 2

    const-class v0, Lcom/facebook/share/internal/VideoUploader;

    monitor-enter v0

    .line 143
    :try_start_0
    sget-object v1, Lcom/facebook/share/internal/VideoUploader;->pendingUploads:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 142
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized uploadAsync(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/FacebookCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareVideoContent;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-class v0, Lcom/facebook/share/internal/VideoUploader;

    monitor-enter v0

    :try_start_0
    const-string v1, "me"

    .line 105
    invoke-static {p0, v1, p1}, Lcom/facebook/share/internal/VideoUploader;->uploadAsync(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Lcom/facebook/FacebookCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 104
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized uploadAsync(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Lcom/facebook/FacebookCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareVideoContent;",
            "Ljava/lang/String;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-class v0, Lcom/facebook/share/internal/VideoUploader;

    monitor-enter v0

    .line 113
    :try_start_0
    sget-boolean v1, Lcom/facebook/share/internal/VideoUploader;->initialized:Z

    if-nez v1, :cond_0

    .line 114
    invoke-static {}, Lcom/facebook/share/internal/VideoUploader;->registerAccessTokenTracker()V

    const/4 v1, 0x1

    .line 115
    sput-boolean v1, Lcom/facebook/share/internal/VideoUploader;->initialized:Z

    :cond_0
    const-string v1, "videoContent"

    .line 118
    invoke-static {p0, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "graphNode"

    .line 119
    invoke-static {p1, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->getVideo()Lcom/facebook/share/model/ShareVideo;

    move-result-object v1

    const-string v2, "videoContent.video"

    .line 121
    invoke-static {v1, v2}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Lcom/facebook/share/model/ShareVideo;->getLocalUrl()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "videoContent.video.localUrl"

    .line 123
    invoke-static {v1, v2}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v1, Lcom/facebook/share/internal/VideoUploader$UploadContext;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/facebook/share/internal/VideoUploader$UploadContext;-><init>(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Lcom/facebook/FacebookCallback;Lcom/facebook/share/internal/VideoUploader$1;)V

    .line 126
    invoke-static {v1}, Lcom/facebook/share/internal/VideoUploader$UploadContext;->access$100(Lcom/facebook/share/internal/VideoUploader$UploadContext;)V

    .line 128
    sget-object p0, Lcom/facebook/share/internal/VideoUploader;->pendingUploads:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 130
    invoke-static {v1, p0}, Lcom/facebook/share/internal/VideoUploader;->enqueueUploadStart(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 112
    monitor-exit v0

    throw p0
.end method

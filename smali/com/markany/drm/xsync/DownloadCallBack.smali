.class public Lcom/markany/drm/xsync/DownloadCallBack;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 70
    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->new_DownloadCallBack()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/markany/drm/xsync/DownloadCallBack;-><init>(JZ)V

    .line 71
    iget-wide v0, p0, Lcom/markany/drm/xsync/DownloadCallBack;->swigCPtr:J

    iget-boolean v2, p0, Lcom/markany/drm/xsync/DownloadCallBack;->swigCMemOwn:Z

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DownloadCallBack_director_connect(Lcom/markany/drm/xsync/DownloadCallBack;JZZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/markany/drm/xsync/DownloadCallBack;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/markany/drm/xsync/DownloadCallBack;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/markany/drm/xsync/DownloadCallBack;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 21
    :cond_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/DownloadCallBack;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public OnBegin(Lcom/markany/drm/xsync/Downloader;J)V
    .locals 8

    .line 54
    iget-wide v0, p0, Lcom/markany/drm/xsync/DownloadCallBack;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/Downloader;->getCPtr(Lcom/markany/drm/xsync/Downloader;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DownloadCallBack_OnBegin(JLcom/markany/drm/xsync/DownloadCallBack;JLcom/markany/drm/xsync/Downloader;J)V

    return-void
.end method

.method public OnEnd(Lcom/markany/drm/xsync/Downloader;J)V
    .locals 8

    .line 66
    iget-wide v0, p0, Lcom/markany/drm/xsync/DownloadCallBack;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/Downloader;->getCPtr(Lcom/markany/drm/xsync/Downloader;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DownloadCallBack_OnEnd(JLcom/markany/drm/xsync/DownloadCallBack;JLcom/markany/drm/xsync/Downloader;J)V

    return-void
.end method

.method public OnError(Lcom/markany/drm/xsync/Downloader;JILjava/lang/String;)Z
    .locals 10

    .line 62
    iget-wide v0, p0, Lcom/markany/drm/xsync/DownloadCallBack;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/Downloader;->getCPtr(Lcom/markany/drm/xsync/Downloader;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move v8, p4

    move-object v9, p5

    invoke-static/range {v0 .. v9}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DownloadCallBack_OnError(JLcom/markany/drm/xsync/DownloadCallBack;JLcom/markany/drm/xsync/Downloader;JILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public OnReceive(Lcom/markany/drm/xsync/Downloader;JII)Z
    .locals 10

    .line 58
    iget-wide v0, p0, Lcom/markany/drm/xsync/DownloadCallBack;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/Downloader;->getCPtr(Lcom/markany/drm/xsync/Downloader;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move v8, p4

    move v9, p5

    invoke-static/range {v0 .. v9}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DownloadCallBack_OnReceive(JLcom/markany/drm/xsync/DownloadCallBack;JLcom/markany/drm/xsync/Downloader;JII)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized delete()V
    .locals 4

    monitor-enter p0

    .line 29
    :try_start_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/DownloadCallBack;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/markany/drm/xsync/DownloadCallBack;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/markany/drm/xsync/DownloadCallBack;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/markany/drm/xsync/DownloadCallBack;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->delete_DownloadCallBack(J)V

    .line 34
    :cond_0
    iput-wide v2, p0, Lcom/markany/drm/xsync/DownloadCallBack;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 28
    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/markany/drm/xsync/DownloadCallBack;->delete()V

    return-void
.end method

.method protected swigDirectorDisconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/markany/drm/xsync/DownloadCallBack;->swigCMemOwn:Z

    .line 40
    invoke-virtual {p0}, Lcom/markany/drm/xsync/DownloadCallBack;->delete()V

    return-void
.end method

.method public swigReleaseOwnership()V
    .locals 3

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/markany/drm/xsync/DownloadCallBack;->swigCMemOwn:Z

    .line 45
    iget-wide v1, p0, Lcom/markany/drm/xsync/DownloadCallBack;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DownloadCallBack_change_ownership(Lcom/markany/drm/xsync/DownloadCallBack;JZ)V

    return-void
.end method

.method public swigTakeOwnership()V
    .locals 3

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/markany/drm/xsync/DownloadCallBack;->swigCMemOwn:Z

    .line 50
    iget-wide v1, p0, Lcom/markany/drm/xsync/DownloadCallBack;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DownloadCallBack_change_ownership(Lcom/markany/drm/xsync/DownloadCallBack;JZ)V

    return-void
.end method

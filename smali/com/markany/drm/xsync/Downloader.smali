.class public Lcom/markany/drm/xsync/Downloader;
.super Lcom/markany/drm/xsync/NonCopyable;
.source "SourceFile"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2

    .line 15
    invoke-static {p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Downloader_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/markany/drm/xsync/NonCopyable;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    return-void
.end method

.method public static CloseDownloader(Lcom/markany/drm/xsync/Downloader;)V
    .locals 2

    .line 90
    invoke-static {p0}, Lcom/markany/drm/xsync/Downloader;->getCPtr(Lcom/markany/drm/xsync/Downloader;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Downloader_CloseDownloader(JLcom/markany/drm/xsync/Downloader;)V

    return-void
.end method

.method public static CreateDownloader(J)Lcom/markany/drm/xsync/Downloader;
    .locals 2

    .line 80
    invoke-static {p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Downloader_CreateDownloader__SWIG_0(J)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Lcom/markany/drm/xsync/Downloader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/markany/drm/xsync/Downloader;-><init>(JZ)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static CreateDownloader(JLjava/lang/String;)Lcom/markany/drm/xsync/Downloader;
    .locals 2

    .line 85
    invoke-static {p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Downloader_CreateDownloader__SWIG_1(JLjava/lang/String;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 86
    :cond_0
    new-instance p2, Lcom/markany/drm/xsync/Downloader;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/markany/drm/xsync/Downloader;-><init>(JZ)V

    move-object p0, p2

    :goto_0
    return-object p0
.end method

.method protected static getCPtr(Lcom/markany/drm/xsync/Downloader;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 20
    :cond_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public AddDownload(Ljava/lang/String;Ljava/lang/String;Lcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;Lcom/markany/drm/xsync/DownloadCallBack;)J
    .locals 13

    move-object v12, p0

    .line 47
    iget-wide v0, v12, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    invoke-static/range {p3 .. p3}, Lcom/markany/drm/xsync/DRMArchive;->getCPtr(Lcom/markany/drm/xsync/DRMArchive;)J

    move-result-wide v5

    invoke-static/range {p5 .. p5}, Lcom/markany/drm/xsync/DownloadCallBack;->getCPtr(Lcom/markany/drm/xsync/DownloadCallBack;)J

    move-result-wide v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v11, p5

    invoke-static/range {v0 .. v11}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Downloader_AddDownload__SWIG_1(JLcom/markany/drm/xsync/Downloader;Ljava/lang/String;Ljava/lang/String;JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;JLcom/markany/drm/xsync/DownloadCallBack;)J

    move-result-wide v0

    return-wide v0
.end method

.method public AddDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/markany/drm/xsync/DownloadCallBack;)J
    .locals 9

    .line 43
    iget-wide v0, p0, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    invoke-static {p4}, Lcom/markany/drm/xsync/DownloadCallBack;->getCPtr(Lcom/markany/drm/xsync/DownloadCallBack;)J

    move-result-wide v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Downloader_AddDownload__SWIG_0(JLcom/markany/drm/xsync/Downloader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/markany/drm/xsync/DownloadCallBack;)J

    move-result-wide p1

    return-wide p1
.end method

.method public AddDownloadFirst(Ljava/lang/String;Ljava/lang/String;Lcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;Lcom/markany/drm/xsync/DownloadCallBack;)J
    .locals 13

    move-object v12, p0

    .line 55
    iget-wide v0, v12, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    invoke-static/range {p3 .. p3}, Lcom/markany/drm/xsync/DRMArchive;->getCPtr(Lcom/markany/drm/xsync/DRMArchive;)J

    move-result-wide v5

    invoke-static/range {p5 .. p5}, Lcom/markany/drm/xsync/DownloadCallBack;->getCPtr(Lcom/markany/drm/xsync/DownloadCallBack;)J

    move-result-wide v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v11, p5

    invoke-static/range {v0 .. v11}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Downloader_AddDownloadFirst__SWIG_1(JLcom/markany/drm/xsync/Downloader;Ljava/lang/String;Ljava/lang/String;JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;JLcom/markany/drm/xsync/DownloadCallBack;)J

    move-result-wide v0

    return-wide v0
.end method

.method public AddDownloadFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/markany/drm/xsync/DownloadCallBack;)J
    .locals 9

    .line 51
    iget-wide v0, p0, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    invoke-static {p4}, Lcom/markany/drm/xsync/DownloadCallBack;->getCPtr(Lcom/markany/drm/xsync/DownloadCallBack;)J

    move-result-wide v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Downloader_AddDownloadFirst__SWIG_0(JLcom/markany/drm/xsync/Downloader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/markany/drm/xsync/DownloadCallBack;)J

    move-result-wide p1

    return-wide p1
.end method

.method public CancelRequest(J)V
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Downloader_CancelRequest(JLcom/markany/drm/xsync/Downloader;J)V

    return-void
.end method

.method public Clear()V
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Downloader_Clear(JLcom/markany/drm/xsync/Downloader;)V

    return-void
.end method

.method public Close()V
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Downloader_Close(JLcom/markany/drm/xsync/Downloader;)V

    return-void
.end method

.method public GetCurrentRequestID()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Downloader_GetCurrentRequestID(JLcom/markany/drm/xsync/Downloader;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetDownloadInfo(J)Lcom/markany/drm/xsync/DownloadInfo;
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Downloader_GetDownloadInfo(JLcom/markany/drm/xsync/Downloader;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Lcom/markany/drm/xsync/DownloadInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/markany/drm/xsync/DownloadInfo;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public SetTimeOut(II)V
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Downloader_SetTimeOut(JLcom/markany/drm/xsync/Downloader;II)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    monitor-enter p0

    .line 28
    :try_start_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 29
    iget-boolean v0, p0, Lcom/markany/drm/xsync/Downloader;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/markany/drm/xsync/Downloader;->swigCMemOwn:Z

    .line 31
    iget-wide v0, p0, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->delete_Downloader(J)V

    .line 33
    :cond_0
    iput-wide v2, p0, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    .line 35
    :cond_1
    invoke-super {p0}, Lcom/markany/drm/xsync/NonCopyable;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 27
    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/markany/drm/xsync/Downloader;->delete()V

    return-void
.end method

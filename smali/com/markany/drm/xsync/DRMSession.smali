.class public Lcom/markany/drm/xsync/DRMSession;
.super Lcom/markany/drm/xsync/NonCopyable;
.source "SourceFile"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2

    .line 15
    invoke-static {p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSession_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/markany/drm/xsync/NonCopyable;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/markany/drm/xsync/DRMSession;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/markany/drm/xsync/DRMSession;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 20
    :cond_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSession;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public GetCallBack()Lcom/markany/drm/xsync/DRMSessionCallBack;
    .locals 4

    .line 99
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSession;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSession_GetCallBack(JLcom/markany/drm/xsync/DRMSession;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 100
    :cond_0
    new-instance v2, Lcom/markany/drm/xsync/DRMSessionCallBack;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/markany/drm/xsync/DRMSessionCallBack;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public GetCustomData([B)I
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSession;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSession_GetCustomData(JLcom/markany/drm/xsync/DRMSession;[B)I

    move-result p1

    return p1
.end method

.method public GetCustomDataLength()I
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSession;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSession_GetCustomDataLength(JLcom/markany/drm/xsync/DRMSession;)I

    move-result v0

    return v0
.end method

.method public GetLicense(Lcom/markany/drm/xsync/LicenseData;)I
    .locals 6

    .line 71
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSession;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/LicenseData;->getCPtr(Lcom/markany/drm/xsync/LicenseData;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSession_GetLicense(JLcom/markany/drm/xsync/DRMSession;JLcom/markany/drm/xsync/LicenseData;)I

    move-result p1

    return p1
.end method

.method public GetPackageName()Ljava/lang/String;
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSession;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSession_GetPackageName(JLcom/markany/drm/xsync/DRMSession;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetSourceUrl()Ljava/lang/String;
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSession;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSession_GetSourceUrl(JLcom/markany/drm/xsync/DRMSession;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetUrl()Ljava/lang/String;
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSession;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSession_GetUrl(JLcom/markany/drm/xsync/DRMSession;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public InstallLicense()I
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSession;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSession_InstallLicense__SWIG_2(JLcom/markany/drm/xsync/DRMSession;)I

    move-result v0

    return v0
.end method

.method public InstallLicense(Lcom/markany/drm/xsync/LicenseResult;)I
    .locals 6

    .line 79
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSession;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/LicenseResult;->getCPtr(Lcom/markany/drm/xsync/LicenseResult;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSession_InstallLicense__SWIG_1(JLcom/markany/drm/xsync/DRMSession;JLcom/markany/drm/xsync/LicenseResult;)I

    move-result p1

    return p1
.end method

.method public InstallLicense(Lcom/markany/drm/xsync/LicenseResult;Ljava/lang/String;)I
    .locals 7

    .line 75
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSession;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/LicenseResult;->getCPtr(Lcom/markany/drm/xsync/LicenseResult;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSession_InstallLicense__SWIG_0(JLcom/markany/drm/xsync/DRMSession;JLcom/markany/drm/xsync/LicenseResult;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public InstallLicense(Ljava/lang/String;J)I
    .locals 6

    .line 91
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSession;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSession_InstallLicense__SWIG_4(JLcom/markany/drm/xsync/DRMSession;Ljava/lang/String;J)I

    move-result p1

    return p1
.end method

.method public InstallLicense(Ljava/lang/String;Lcom/markany/drm/xsync/LicenseResult;Ljava/lang/String;)I
    .locals 8

    .line 87
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSession;->swigCPtr:J

    invoke-static {p2}, Lcom/markany/drm/xsync/LicenseResult;->getCPtr(Lcom/markany/drm/xsync/LicenseResult;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSession_InstallLicense__SWIG_3(JLcom/markany/drm/xsync/DRMSession;Ljava/lang/String;JLcom/markany/drm/xsync/LicenseResult;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public IsDRMFile()Z
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSession;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSession_IsDRMFile(JLcom/markany/drm/xsync/DRMSession;)Z

    move-result v0

    return v0
.end method

.method public IsLocalFile()Z
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSession;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSession_IsLocalFile(JLcom/markany/drm/xsync/DRMSession;)Z

    move-result v0

    return v0
.end method

.method public SetCallBack(Lcom/markany/drm/xsync/DRMSessionCallBack;)V
    .locals 6

    .line 95
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSession;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/DRMSessionCallBack;->getCPtr(Lcom/markany/drm/xsync/DRMSessionCallBack;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSession_SetCallBack(JLcom/markany/drm/xsync/DRMSession;JLcom/markany/drm/xsync/DRMSessionCallBack;)V

    return-void
.end method

.method public StartBackgroundThread()V
    .locals 2

    .line 104
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSession;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSession_StartBackgroundThread(JLcom/markany/drm/xsync/DRMSession;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    monitor-enter p0

    .line 28
    :try_start_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSession;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 29
    iget-boolean v0, p0, Lcom/markany/drm/xsync/DRMSession;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/markany/drm/xsync/DRMSession;->swigCMemOwn:Z

    .line 31
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSession;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->delete_DRMSession(J)V

    .line 33
    :cond_0
    iput-wide v2, p0, Lcom/markany/drm/xsync/DRMSession;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/markany/drm/xsync/DRMSession;->delete()V

    return-void
.end method

.method public isOpened()Z
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSession;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSession_isOpened(JLcom/markany/drm/xsync/DRMSession;)Z

    move-result v0

    return v0
.end method

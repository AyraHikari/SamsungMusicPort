.class public Lcom/markany/drm/xsync/DRMFile;
.super Lcom/markany/drm/xsync/NonCopyable;
.source "SourceFile"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2

    .line 15
    invoke-static {p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMFile_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/markany/drm/xsync/NonCopyable;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/markany/drm/xsync/DRMFile;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 20
    :cond_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public Close()I
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMFile_Close(JLcom/markany/drm/xsync/DRMFile;)I

    move-result v0

    return v0
.end method

.method public GetContentsLength()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMFile_GetContentsLength(JLcom/markany/drm/xsync/DRMFile;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetCustomData([B)I
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMFile_GetCustomData(JLcom/markany/drm/xsync/DRMFile;[B)I

    move-result p1

    return p1
.end method

.method public GetCustomDataLength()I
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMFile_GetCustomDataLength(JLcom/markany/drm/xsync/DRMFile;)I

    move-result v0

    return v0
.end method

.method public GetFilePath()Ljava/lang/String;
    .locals 2

    .line 115
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMFile_GetFilePath(JLcom/markany/drm/xsync/DRMFile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetLength()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMFile_GetLength(JLcom/markany/drm/xsync/DRMFile;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetLicense(Lcom/markany/drm/xsync/LicenseData;)I
    .locals 6

    .line 83
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/LicenseData;->getCPtr(Lcom/markany/drm/xsync/LicenseData;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMFile_GetLicense(JLcom/markany/drm/xsync/DRMFile;JLcom/markany/drm/xsync/LicenseData;)I

    move-result p1

    return p1
.end method

.method public GetLicenseState()Lcom/markany/drm/xsync/LicenseType;
    .locals 2

    .line 139
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMFile_GetLicenseState(JLcom/markany/drm/xsync/DRMFile;)I

    move-result v0

    invoke-static {v0}, Lcom/markany/drm/xsync/LicenseType;->swigToEnum(I)Lcom/markany/drm/xsync/LicenseType;

    move-result-object v0

    return-object v0
.end method

.method public GetMetaData(Lcom/markany/drm/xsync/enMetaData;Ljava/lang/String;)I
    .locals 2

    .line 127
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    invoke-virtual {p1}, Lcom/markany/drm/xsync/enMetaData;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMFile_GetMetaData(JLcom/markany/drm/xsync/DRMFile;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public InstallLicense()I
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMFile_InstallLicense__SWIG_2(JLcom/markany/drm/xsync/DRMFile;)I

    move-result v0

    return v0
.end method

.method public InstallLicense(Lcom/markany/drm/xsync/LicenseResult;)I
    .locals 6

    .line 91
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/LicenseResult;->getCPtr(Lcom/markany/drm/xsync/LicenseResult;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMFile_InstallLicense__SWIG_1(JLcom/markany/drm/xsync/DRMFile;JLcom/markany/drm/xsync/LicenseResult;)I

    move-result p1

    return p1
.end method

.method public InstallLicense(Lcom/markany/drm/xsync/LicenseResult;Ljava/lang/String;)I
    .locals 7

    .line 87
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/LicenseResult;->getCPtr(Lcom/markany/drm/xsync/LicenseResult;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMFile_InstallLicense__SWIG_0(JLcom/markany/drm/xsync/DRMFile;JLcom/markany/drm/xsync/LicenseResult;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public InstallLicense(Ljava/lang/String;)I
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMFile_InstallLicense__SWIG_5(JLcom/markany/drm/xsync/DRMFile;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public InstallLicense(Ljava/lang/String;J)I
    .locals 6

    .line 111
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMFile_InstallLicense__SWIG_6(JLcom/markany/drm/xsync/DRMFile;Ljava/lang/String;J)I

    move-result p1

    return p1
.end method

.method public InstallLicense(Ljava/lang/String;Lcom/markany/drm/xsync/LicenseResult;)I
    .locals 7

    .line 103
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    invoke-static {p2}, Lcom/markany/drm/xsync/LicenseResult;->getCPtr(Lcom/markany/drm/xsync/LicenseResult;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMFile_InstallLicense__SWIG_4(JLcom/markany/drm/xsync/DRMFile;Ljava/lang/String;JLcom/markany/drm/xsync/LicenseResult;)I

    move-result p1

    return p1
.end method

.method public InstallLicense(Ljava/lang/String;Lcom/markany/drm/xsync/LicenseResult;Ljava/lang/String;)I
    .locals 8

    .line 99
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    invoke-static {p2}, Lcom/markany/drm/xsync/LicenseResult;->getCPtr(Lcom/markany/drm/xsync/LicenseResult;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMFile_InstallLicense__SWIG_3(JLcom/markany/drm/xsync/DRMFile;Ljava/lang/String;JLcom/markany/drm/xsync/LicenseResult;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public IsDRMFile()Z
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMFile_IsDRMFile(JLcom/markany/drm/xsync/DRMFile;)Z

    move-result v0

    return v0
.end method

.method public NeedReHeader()Z
    .locals 2

    .line 119
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMFile_NeedReHeader(JLcom/markany/drm/xsync/DRMFile;)Z

    move-result v0

    return v0
.end method

.method public ReHeader(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 123
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMFile_ReHeader(JLcom/markany/drm/xsync/DRMFile;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public Read(I[B)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMFile_Read__SWIG_1(JLcom/markany/drm/xsync/DRMFile;I[B)J

    move-result-wide p1

    return-wide p1
.end method

.method public Read([B)J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMFile_Read__SWIG_0(JLcom/markany/drm/xsync/DRMFile;[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public Seek(J)J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMFile_Seek(JLcom/markany/drm/xsync/DRMFile;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public Tell()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMFile_Tell(JLcom/markany/drm/xsync/DRMFile;)J

    move-result-wide v0

    return-wide v0
.end method

.method public Write([B)J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMFile_Write(JLcom/markany/drm/xsync/DRMFile;[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    monitor-enter p0

    .line 28
    :try_start_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 29
    iget-boolean v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCMemOwn:Z

    .line 31
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->delete_DRMFile(J)V

    .line 33
    :cond_0
    iput-wide v2, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/markany/drm/xsync/DRMFile;->delete()V

    return-void
.end method

.method public getDrmType()Lcom/markany/drm/xsync/enXSyncVersions;
    .locals 2

    .line 143
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMFile_getDrmType(JLcom/markany/drm/xsync/DRMFile;)I

    move-result v0

    invoke-static {v0}, Lcom/markany/drm/xsync/enXSyncVersions;->swigToEnum(I)Lcom/markany/drm/xsync/enXSyncVersions;

    move-result-object v0

    return-object v0
.end method

.method public isOpened()Z
    .locals 2

    .line 131
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMFile_isOpened(JLcom/markany/drm/xsync/DRMFile;)Z

    move-result v0

    return v0
.end method

.method public isReadable()Z
    .locals 2

    .line 135
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMFile;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMFile_isReadable(JLcom/markany/drm/xsync/DRMFile;)Z

    move-result v0

    return v0
.end method

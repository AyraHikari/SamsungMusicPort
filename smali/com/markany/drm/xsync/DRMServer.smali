.class public Lcom/markany/drm/xsync/DRMServer;
.super Lcom/markany/drm/xsync/NonCopyable;
.source "SourceFile"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2

    .line 15
    invoke-static {p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/markany/drm/xsync/NonCopyable;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 47
    invoke-static {p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->new_DRMServer__SWIG_2(Ljava/lang/String;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/markany/drm/xsync/DRMServer;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 43
    invoke-static {p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->new_DRMServer__SWIG_1(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/markany/drm/xsync/DRMServer;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 39
    invoke-static {p1, p2, p3}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->new_DRMServer__SWIG_0(Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/markany/drm/xsync/DRMServer;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/markany/drm/xsync/DRMServer;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 20
    :cond_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public ChangeDeviceTime(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_ChangeDeviceTime(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public CheckValidDomain(Ljava/lang/String;)Z
    .locals 2

    .line 306
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_CheckValidDomain(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public CloseFile(Lcom/markany/drm/xsync/DRMFile;)V
    .locals 6

    .line 286
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/DRMFile;->getCPtr(Lcom/markany/drm/xsync/DRMFile;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_CloseFile(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMFile;)V

    return-void
.end method

.method public CloseSession(Lcom/markany/drm/xsync/DRMSession;)V
    .locals 6

    .line 221
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/DRMSession;->getCPtr(Lcom/markany/drm/xsync/DRMSession;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_CloseSession__SWIG_0(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMSession;)V

    return-void
.end method

.method public CloseSession()Z
    .locals 2

    .line 334
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_CloseSession__SWIG_1(JLcom/markany/drm/xsync/DRMServer;)Z

    move-result v0

    return v0
.end method

.method public CloseSessionImpl(Lcom/markany/drm/xsync/DRMSession;)I
    .locals 6

    .line 225
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/DRMSession;->getCPtr(Lcom/markany/drm/xsync/DRMSession;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_CloseSessionImpl(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMSession;)I

    move-result p1

    return p1
.end method

.method public DBRenewal()Z
    .locals 2

    .line 131
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_DBRenewal(JLcom/markany/drm/xsync/DRMServer;)Z

    move-result v0

    return v0
.end method

.method public DBUpdateAllExpiryDate(Ljava/lang/String;)I
    .locals 2

    .line 135
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_DBUpdateAllExpiryDate(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public DeleteExpiredLicenseAll(I)I
    .locals 2

    .line 207
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_DeleteExpiredLicenseAll(JLcom/markany/drm/xsync/DRMServer;I)I

    move-result p1

    return p1
.end method

.method public DeleteLicense(Lcom/markany/drm/xsync/LicenseData;)I
    .locals 6

    .line 183
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/LicenseData;->getCPtr(Lcom/markany/drm/xsync/LicenseData;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_DeleteLicense__SWIG_0(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/LicenseData;)I

    move-result p1

    return p1
.end method

.method public DeleteLicense(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 191
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_DeleteLicense__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public DeleteLicense(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 195
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_DeleteLicense__SWIG_2(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public DeleteLicenseByPath(Ljava/lang/String;)I
    .locals 2

    .line 179
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_DeleteLicenseByPath__SWIG_2(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public DeleteLicenseByPath(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 175
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_DeleteLicenseByPath__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public DeleteLicenseByPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .line 171
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_DeleteLicenseByPath__SWIG_0(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public DeleteLicenseByType(Lcom/markany/drm/xsync/LicenseData;)I
    .locals 6

    .line 187
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/LicenseData;->getCPtr(Lcom/markany/drm/xsync/LicenseData;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_DeleteLicenseByType__SWIG_0(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/LicenseData;)I

    move-result p1

    return p1
.end method

.method public DeleteLicenseByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 203
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_DeleteLicenseByType__SWIG_2(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public DeleteLicenseByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/markany/drm/xsync/LicenseType;)I
    .locals 8

    .line 199
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-virtual {p5}, Lcom/markany/drm/xsync/LicenseType;->swigValue()I

    move-result v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_DeleteLicenseByType__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public DeviceIsHacked()Z
    .locals 2

    .line 310
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_DeviceIsHacked(JLcom/markany/drm/xsync/DRMServer;)Z

    move-result v0

    return v0
.end method

.method public GetDBDirectory()Ljava/lang/String;
    .locals 2

    .line 350
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetDBDirectory(JLcom/markany/drm/xsync/DRMServer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetDBFullPath()Ljava/lang/String;
    .locals 2

    .line 342
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetDBFullPath(JLcom/markany/drm/xsync/DRMServer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetDeltaTime()Ljava/lang/String;
    .locals 2

    .line 358
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetDeltaTime(JLcom/markany/drm/xsync/DRMServer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetDomain()Ljava/lang/String;
    .locals 2

    .line 314
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetDomain(JLcom/markany/drm/xsync/DRMServer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetEncDeviceKey(Ljava/lang/String;Lcom/markany/drm/xsync/SWIGTYPE_p_p_char;)I
    .locals 6

    .line 111
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p2}, Lcom/markany/drm/xsync/SWIGTYPE_p_p_char;->getCPtr(Lcom/markany/drm/xsync/SWIGTYPE_p_p_char;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetEncDeviceKey(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;J)I

    move-result p1

    return p1
.end method

.method public GetEncTimeValue(Ljava/lang/String;Lcom/markany/drm/xsync/SWIGTYPE_p_p_char;)I
    .locals 6

    .line 115
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p2}, Lcom/markany/drm/xsync/SWIGTYPE_p_p_char;->getCPtr(Lcom/markany/drm/xsync/SWIGTYPE_p_p_char;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetEncTimeValue(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;J)I

    move-result p1

    return p1
.end method

.method public GetLastErrorCode()I
    .locals 2

    .line 294
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetLastErrorCode(JLcom/markany/drm/xsync/DRMServer;)I

    move-result v0

    return v0
.end method

.method public GetLastErrorString()Ljava/lang/String;
    .locals 2

    .line 290
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetLastErrorString(JLcom/markany/drm/xsync/DRMServer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetLicense(Ljava/lang/String;Lcom/markany/drm/xsync/LicenseData;)I
    .locals 7

    .line 119
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p2}, Lcom/markany/drm/xsync/LicenseData;->getCPtr(Lcom/markany/drm/xsync/LicenseData;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetLicense__SWIG_0(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;JLcom/markany/drm/xsync/LicenseData;)I

    move-result p1

    return p1
.end method

.method public GetLicense(Ljava/lang/String;Ljava/lang/String;Lcom/markany/drm/xsync/LicenseData;)I
    .locals 8

    .line 127
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p3}, Lcom/markany/drm/xsync/LicenseData;->getCPtr(Lcom/markany/drm/xsync/LicenseData;)J

    move-result-wide v5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetLicense__SWIG_2(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;JLcom/markany/drm/xsync/LicenseData;)I

    move-result p1

    return p1
.end method

.method public GetLicense(Ljava/lang/String;Ljava/lang/String;Lcom/markany/drm/xsync/LicenseData;Z)I
    .locals 9

    .line 123
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p3}, Lcom/markany/drm/xsync/LicenseData;->getCPtr(Lcom/markany/drm/xsync/LicenseData;)J

    move-result-wide v5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetLicense__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;JLcom/markany/drm/xsync/LicenseData;Z)I

    move-result p1

    return p1
.end method

.method public GetLicense()Z
    .locals 2

    .line 326
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetLicense__SWIG_3(JLcom/markany/drm/xsync/DRMServer;)Z

    move-result v0

    return v0
.end method

.method public GetPackageName()Ljava/lang/String;
    .locals 2

    .line 374
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetPackageName(JLcom/markany/drm/xsync/DRMServer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetRealTime()Ljava/lang/String;
    .locals 2

    .line 366
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetRealTime(JLcom/markany/drm/xsync/DRMServer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetSecureTimeFromHidden(ZI)Z
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetSecureTimeFromHidden(JLcom/markany/drm/xsync/DRMServer;ZI)Z

    move-result p1

    return p1
.end method

.method public GetState()Lcom/markany/drm/xsync/State;
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetState(JLcom/markany/drm/xsync/DRMServer;)I

    move-result v0

    invoke-static {v0}, Lcom/markany/drm/xsync/State;->swigToEnum(I)Lcom/markany/drm/xsync/State;

    move-result-object v0

    return-object v0
.end method

.method public InstallLicense(Lcom/markany/drm/xsync/DRMArchive;Lcom/markany/drm/xsync/LicenseResult;)I
    .locals 9

    .line 163
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/DRMArchive;->getCPtr(Lcom/markany/drm/xsync/DRMArchive;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/markany/drm/xsync/LicenseResult;->getCPtr(Lcom/markany/drm/xsync/LicenseResult;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_InstallLicense__SWIG_6(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMArchive;JLcom/markany/drm/xsync/LicenseResult;)I

    move-result p1

    return p1
.end method

.method public InstallLicense(Lcom/markany/drm/xsync/DRMArchive;Lcom/markany/drm/xsync/LicenseResult;Ljava/lang/String;)I
    .locals 10

    .line 159
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/DRMArchive;->getCPtr(Lcom/markany/drm/xsync/DRMArchive;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/markany/drm/xsync/LicenseResult;->getCPtr(Lcom/markany/drm/xsync/LicenseResult;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move-object v9, p3

    invoke-static/range {v0 .. v9}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_InstallLicense__SWIG_5(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMArchive;JLcom/markany/drm/xsync/LicenseResult;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public InstallLicense(Lcom/markany/drm/xsync/LicenseResult;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .line 147
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/LicenseResult;->getCPtr(Lcom/markany/drm/xsync/LicenseResult;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_InstallLicense__SWIG_2(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/LicenseResult;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public InstallLicense(Ljava/lang/String;J)I
    .locals 6

    .line 151
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_InstallLicense__SWIG_3(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;J)I

    move-result p1

    return p1
.end method

.method public InstallLicense(Ljava/lang/String;JLcom/markany/drm/xsync/LicenseResult;)I
    .locals 9

    .line 155
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p4}, Lcom/markany/drm/xsync/LicenseResult;->getCPtr(Lcom/markany/drm/xsync/LicenseResult;)J

    move-result-wide v6

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_InstallLicense__SWIG_4(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;JJLcom/markany/drm/xsync/LicenseResult;)I

    move-result p1

    return p1
.end method

.method public InstallLicense(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/markany/drm/xsync/LicenseResult;)I
    .locals 9

    .line 143
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p4}, Lcom/markany/drm/xsync/LicenseResult;->getCPtr(Lcom/markany/drm/xsync/LicenseResult;)J

    move-result-wide v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_InstallLicense__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/markany/drm/xsync/LicenseResult;)I

    move-result p1

    return p1
.end method

.method public InstallLicense(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/markany/drm/xsync/LicenseResult;Ljava/lang/String;)I
    .locals 10

    .line 139
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p4}, Lcom/markany/drm/xsync/LicenseResult;->getCPtr(Lcom/markany/drm/xsync/LicenseResult;)J

    move-result-wide v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v0 .. v9}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_InstallLicense__SWIG_0(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/markany/drm/xsync/LicenseResult;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public InstallLicense()Z
    .locals 2

    .line 330
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_InstallLicense__SWIG_7(JLcom/markany/drm/xsync/DRMServer;)Z

    move-result v0

    return v0
.end method

.method public IsDBOpened()Z
    .locals 2

    .line 298
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_IsDBOpened(JLcom/markany/drm/xsync/DRMServer;)Z

    move-result v0

    return v0
.end method

.method public OpenFile(Lcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;)Lcom/markany/drm/xsync/DRMFile;
    .locals 7

    .line 263
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/DRMArchive;->getCPtr(Lcom/markany/drm/xsync/DRMArchive;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_OpenFile__SWIG_4(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 264
    :cond_0
    new-instance v0, Lcom/markany/drm/xsync/DRMFile;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/markany/drm/xsync/DRMFile;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public OpenFile(Ljava/lang/String;)Lcom/markany/drm/xsync/DRMFile;
    .locals 4

    .line 238
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_OpenFile__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 239
    :cond_0
    new-instance p1, Lcom/markany/drm/xsync/DRMFile;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/markany/drm/xsync/DRMFile;-><init>(JZ)V

    :goto_0
    return-object p1
.end method

.method public OpenFile(Ljava/lang/String;III)Lcom/markany/drm/xsync/DRMFile;
    .locals 7

    .line 248
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_OpenFile__SWIG_3(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;III)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 249
    :cond_0
    new-instance p3, Lcom/markany/drm/xsync/DRMFile;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p2, p4}, Lcom/markany/drm/xsync/DRMFile;-><init>(JZ)V

    move-object p1, p3

    :goto_0
    return-object p1
.end method

.method public OpenFile(Ljava/lang/String;IIILcom/markany/drm/xsync/enDRMContentType;)Lcom/markany/drm/xsync/DRMFile;
    .locals 8

    .line 243
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-virtual {p5}, Lcom/markany/drm/xsync/enDRMContentType;->swigValue()I

    move-result v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v7}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_OpenFile__SWIG_2(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;IIII)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 244
    :cond_0
    new-instance p3, Lcom/markany/drm/xsync/DRMFile;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p2, p4}, Lcom/markany/drm/xsync/DRMFile;-><init>(JZ)V

    move-object p1, p3

    :goto_0
    return-object p1
.end method

.method public OpenFile(Ljava/lang/String;Lcom/markany/drm/xsync/enDRMContentType;)Lcom/markany/drm/xsync/DRMFile;
    .locals 2

    .line 233
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-virtual {p2}, Lcom/markany/drm/xsync/enDRMContentType;->swigValue()I

    move-result p2

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_OpenFile__SWIG_0(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;I)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 234
    :cond_0
    new-instance v0, Lcom/markany/drm/xsync/DRMFile;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/markany/drm/xsync/DRMFile;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public OpenFile(Ljava/lang/String;Ljava/lang/String;)Lcom/markany/drm/xsync/DRMFile;
    .locals 2

    .line 268
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_OpenFile__SWIG_5(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 269
    :cond_0
    new-instance v0, Lcom/markany/drm/xsync/DRMFile;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/markany/drm/xsync/DRMFile;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public OpenFileReadOnly(Ljava/lang/String;)Lcom/markany/drm/xsync/DRMFile;
    .locals 4

    .line 258
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_OpenFileReadOnly__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 259
    :cond_0
    new-instance p1, Lcom/markany/drm/xsync/DRMFile;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/markany/drm/xsync/DRMFile;-><init>(JZ)V

    :goto_0
    return-object p1
.end method

.method public OpenFileReadOnly(Ljava/lang/String;Lcom/markany/drm/xsync/enDRMContentType;)Lcom/markany/drm/xsync/DRMFile;
    .locals 2

    .line 253
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-virtual {p2}, Lcom/markany/drm/xsync/enDRMContentType;->swigValue()I

    move-result p2

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_OpenFileReadOnly__SWIG_0(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;I)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 254
    :cond_0
    new-instance v0, Lcom/markany/drm/xsync/DRMFile;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/markany/drm/xsync/DRMFile;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public OpenSession(Lcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;Ljava/lang/String;)Lcom/markany/drm/xsync/DRMSession;
    .locals 8

    .line 216
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/DRMArchive;->getCPtr(Lcom/markany/drm/xsync/DRMArchive;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_OpenSession__SWIG_1(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 217
    :cond_0
    new-instance p3, Lcom/markany/drm/xsync/DRMSession;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0}, Lcom/markany/drm/xsync/DRMSession;-><init>(JZ)V

    move-object p1, p3

    :goto_0
    return-object p1
.end method

.method public OpenSession(Ljava/lang/String;Ljava/lang/String;)Lcom/markany/drm/xsync/DRMSession;
    .locals 2

    .line 211
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_OpenSession__SWIG_0(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 212
    :cond_0
    new-instance v0, Lcom/markany/drm/xsync/DRMSession;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/markany/drm/xsync/DRMSession;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public OpenSession()Z
    .locals 2

    .line 338
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_OpenSession__SWIG_2(JLcom/markany/drm/xsync/DRMServer;)Z

    move-result v0

    return v0
.end method

.method public SendErrorMsg(Ljava/lang/String;Ljava/lang/String;Lcom/markany/drm/xsync/LicenseResult;)I
    .locals 8

    .line 167
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p3}, Lcom/markany/drm/xsync/LicenseResult;->getCPtr(Lcom/markany/drm/xsync/LicenseResult;)J

    move-result-wide v5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SendErrorMsg(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;JLcom/markany/drm/xsync/LicenseResult;)I

    move-result p1

    return p1
.end method

.method public SetDBDirectory(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 354
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SetDBDirectory(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public SetDBFullPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 346
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SetDBFullPath(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public SetDeltaTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 362
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SetDeltaTime(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public SetDeviceKey(Ljava/lang/String;)V
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SetDeviceKey__SWIG_0(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)V

    return-void
.end method

.method public SetDeviceKey(Ljava/lang/String;Z)V
    .locals 2

    .line 103
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SetDeviceKey__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Z)V

    return-void
.end method

.method public SetDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 322
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SetDomain__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public SetDomain(Ljava/lang/String;Lcom/markany/drm/xsync/enDomainOpt;)Ljava/lang/String;
    .locals 2

    .line 318
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-virtual {p2}, Lcom/markany/drm/xsync/enDomainOpt;->swigValue()I

    move-result p2

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SetDomain__SWIG_0(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public SetMimeType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 229
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SetMimeType(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public SetPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 378
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SetPackageName(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public SetRealTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 370
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SetRealTime(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public SetSecureTimeToHidden(Lcom/markany/drm/xsync/SWIGTYPE_p_long;)Z
    .locals 4

    .line 83
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/SWIGTYPE_p_long;->getCPtr(Lcom/markany/drm/xsync/SWIGTYPE_p_long;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SetSecureTimeToHidden(JLcom/markany/drm/xsync/DRMServer;J)Z

    move-result p1

    return p1
.end method

.method public SetTimeOut(II)V
    .locals 2

    .line 282
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SetTimeOut(JLcom/markany/drm/xsync/DRMServer;II)V

    return-void
.end method

.method public SetTimeServer(Ljava/lang/String;)Z
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SetTimeServer(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public SetUserID(Ljava/lang/String;)V
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SetUserID(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)V

    return-void
.end method

.method public Start()Z
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_Start__SWIG_1(JLcom/markany/drm/xsync/DRMServer;)Z

    move-result v0

    return v0
.end method

.method public Start(I)Z
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_Start__SWIG_0(JLcom/markany/drm/xsync/DRMServer;I)Z

    move-result p1

    return p1
.end method

.method public Start(II)Z
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_Start__SWIG_2(JLcom/markany/drm/xsync/DRMServer;II)Z

    move-result p1

    return p1
.end method

.method public Stop()Z
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_Stop(JLcom/markany/drm/xsync/DRMServer;)Z

    move-result v0

    return v0
.end method

.method public UpdateSecureTime()Z
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_UpdateSecureTime(JLcom/markany/drm/xsync/DRMServer;)Z

    move-result v0

    return v0
.end method

.method public UpdateTime()Z
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_UpdateTime__SWIG_0(JLcom/markany/drm/xsync/DRMServer;)Z

    move-result v0

    return v0
.end method

.method public UpdateTime(Ljava/lang/String;)Z
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_UpdateTime__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized delete()V
    .locals 4

    monitor-enter p0

    .line 28
    :try_start_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 29
    iget-boolean v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCMemOwn:Z

    .line 31
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->delete_DRMServer(J)V

    .line 33
    :cond_0
    iput-wide v2, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/markany/drm/xsync/DRMServer;->delete()V

    return-void
.end method

.method public getUserCypherModule()Lcom/markany/drm/xsync/UserCypherModuleCallBack;
    .locals 4

    .line 277
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_getUserCypherModule(JLcom/markany/drm/xsync/DRMServer;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 278
    :cond_0
    new-instance v2, Lcom/markany/drm/xsync/UserCypherModuleCallBack;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/markany/drm/xsync/UserCypherModuleCallBack;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public isDBOpened()Z
    .locals 2

    .line 302
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_isDBOpened(JLcom/markany/drm/xsync/DRMServer;)Z

    move-result v0

    return v0
.end method

.method public setUserCypherModule(Lcom/markany/drm/xsync/UserCypherModuleCallBack;)V
    .locals 6

    .line 273
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/UserCypherModuleCallBack;->getCPtr(Lcom/markany/drm/xsync/UserCypherModuleCallBack;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_setUserCypherModule(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/UserCypherModuleCallBack;)V

    return-void
.end method

.method public split(Ljava/lang/String;Ljava/lang/String;Lcom/markany/drm/xsync/SWIGTYPE_p_p_char;Lcom/markany/drm/xsync/SWIGTYPE_p_int;)I
    .locals 9

    .line 386
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p3}, Lcom/markany/drm/xsync/SWIGTYPE_p_p_char;->getCPtr(Lcom/markany/drm/xsync/SWIGTYPE_p_p_char;)J

    move-result-wide v5

    invoke-static {p4}, Lcom/markany/drm/xsync/SWIGTYPE_p_int;->getCPtr(Lcom/markany/drm/xsync/SWIGTYPE_p_int;)J

    move-result-wide v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v8}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_split(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;JJ)I

    move-result p1

    return p1
.end method

.method public stringToTime(Ljava/lang/String;Ljava/lang/String;)Lcom/markany/drm/xsync/SWIGTYPE_p_time_t;
    .locals 3

    .line 382
    new-instance v0, Lcom/markany/drm/xsync/SWIGTYPE_p_time_t;

    iget-wide v1, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_stringToTime(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/markany/drm/xsync/SWIGTYPE_p_time_t;-><init>(JZ)V

    return-object v0
.end method

.class public Lcom/markany/drm/xsync/LicenseData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 119
    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->new_LicenseData()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/markany/drm/xsync/LicenseData;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/markany/drm/xsync/LicenseData;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/markany/drm/xsync/LicenseData;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/markany/drm/xsync/LicenseData;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 21
    :cond_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseData;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    monitor-enter p0

    .line 29
    :try_start_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseData;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/markany/drm/xsync/LicenseData;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/markany/drm/xsync/LicenseData;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseData;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->delete_LicenseData(J)V

    .line 34
    :cond_0
    iput-wide v2, p0, Lcom/markany/drm/xsync/LicenseData;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/markany/drm/xsync/LicenseData;->delete()V

    return-void
.end method

.method public getArtistURL()Ljava/lang/String;
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LicenseData_ArtistURL_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCID()Ljava/lang/String;
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LicenseData_CID_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 115
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LicenseData_Count_get(JLcom/markany/drm/xsync/LicenseData;)I

    move-result v0

    return v0
.end method

.method public getCreation()Ljava/lang/String;
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LicenseData_Creation_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LicenseData_Description_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceKey()Ljava/lang/String;
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LicenseData_DeviceKey_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LicenseData_Domain_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncrypted()Z
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LicenseData_Encrypted_get(JLcom/markany/drm/xsync/LicenseData;)Z

    move-result v0

    return v0
.end method

.method public getEndDate()Ljava/lang/String;
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LicenseData_EndDate_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLAURL()Ljava/lang/String;
    .locals 2

    .line 103
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LicenseData_LAURL_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLID()Ljava/lang/String;
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LicenseData_LID_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastModified()Ljava/lang/String;
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LicenseData_LastModified_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLicenseType()Lcom/markany/drm/xsync/LicenseType;
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LicenseData_LicenseType_get(JLcom/markany/drm/xsync/LicenseData;)I

    move-result v0

    invoke-static {v0}, Lcom/markany/drm/xsync/LicenseType;->swigToEnum(I)Lcom/markany/drm/xsync/LicenseType;

    move-result-object v0

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LicenseData_Publisher_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadable()Z
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LicenseData_Readable_get(JLcom/markany/drm/xsync/LicenseData;)Z

    move-result v0

    return v0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LicenseData_Release_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LicenseData_StartDate_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LicenseData_Title_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUID()Ljava/lang/String;
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LicenseData_UID_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LicenseData_Version_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

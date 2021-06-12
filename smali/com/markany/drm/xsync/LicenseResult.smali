.class public Lcom/markany/drm/xsync/LicenseResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 51
    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->new_LicenseResult()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/markany/drm/xsync/LicenseResult;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/markany/drm/xsync/LicenseResult;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/markany/drm/xsync/LicenseResult;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/markany/drm/xsync/LicenseResult;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 21
    :cond_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseResult;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    monitor-enter p0

    .line 29
    :try_start_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseResult;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/markany/drm/xsync/LicenseResult;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/markany/drm/xsync/LicenseResult;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseResult;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->delete_LicenseResult(J)V

    .line 34
    :cond_0
    iput-wide v2, p0, Lcom/markany/drm/xsync/LicenseResult;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/markany/drm/xsync/LicenseResult;->delete()V

    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LicenseResult_Description_get(JLcom/markany/drm/xsync/LicenseResult;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrCode()I
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LicenseResult_errCode_get(JLcom/markany/drm/xsync/LicenseResult;)I

    move-result v0

    return v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/markany/drm/xsync/LicenseResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LicenseResult_Result_get(JLcom/markany/drm/xsync/LicenseResult;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

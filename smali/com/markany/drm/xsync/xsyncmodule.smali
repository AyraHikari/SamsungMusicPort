.class public Lcom/markany/drm/xsync/xsyncmodule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/markany/drm/xsync/xsyncmoduleConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetCustomData(Ljava/lang/String;[B)I
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->GetCustomData(Ljava/lang/String;[B)I

    move-result p0

    return p0
.end method

.method public static GetCustomDataLength(Ljava/lang/String;)I
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->GetCustomDataLength(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static GetXSyncErrStr(Lcom/markany/drm/xsync/ErrorCode;)Ljava/lang/String;
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/markany/drm/xsync/ErrorCode;->swigValue()I

    move-result p0

    invoke-static {p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->GetXSyncErrStr(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetXSyncLicenseType(Lcom/markany/drm/xsync/LicenseType;)Ljava/lang/String;
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/markany/drm/xsync/LicenseType;->swigValue()I

    move-result p0

    invoke-static {p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->GetXSyncLicenseType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetXSyncRevision()Ljava/lang/String;
    .locals 1

    .line 60
    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->GetXSyncRevision()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetXSyncVersion()Ljava/lang/String;
    .locals 1

    .line 64
    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->GetXSyncVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static XSyncFileHeaderCheck(Lcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;)I
    .locals 2

    .line 56
    invoke-static {p0}, Lcom/markany/drm/xsync/DRMArchive;->getCPtr(Lcom/markany/drm/xsync/DRMArchive;)J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->XSyncFileHeaderCheck__SWIG_1(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static XSyncFileHeaderCheck(Ljava/lang/String;)I
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->XSyncFileHeaderCheck__SWIG_0(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static copy_intp(I)Lcom/markany/drm/xsync/SWIGTYPE_p_int;
    .locals 4

    .line 18
    invoke-static {p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->copy_intp(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Lcom/markany/drm/xsync/SWIGTYPE_p_int;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/markany/drm/xsync/SWIGTYPE_p_int;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static delete_intp(Lcom/markany/drm/xsync/SWIGTYPE_p_int;)V
    .locals 2

    .line 23
    invoke-static {p0}, Lcom/markany/drm/xsync/SWIGTYPE_p_int;->getCPtr(Lcom/markany/drm/xsync/SWIGTYPE_p_int;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->delete_intp(J)V

    return-void
.end method

.method public static getInvalidRequestID()J
    .locals 2

    .line 76
    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->InvalidRequestID_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInvalidTime()Lcom/markany/drm/xsync/Time;
    .locals 4

    .line 39
    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->InvalidTime_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 40
    :cond_0
    new-instance v2, Lcom/markany/drm/xsync/Time;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/markany/drm/xsync/Time;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public static intp_assign(Lcom/markany/drm/xsync/SWIGTYPE_p_int;I)V
    .locals 2

    .line 27
    invoke-static {p0}, Lcom/markany/drm/xsync/SWIGTYPE_p_int;->getCPtr(Lcom/markany/drm/xsync/SWIGTYPE_p_int;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->intp_assign(JI)V

    return-void
.end method

.method public static intp_value(Lcom/markany/drm/xsync/SWIGTYPE_p_int;)I
    .locals 2

    .line 31
    invoke-static {p0}, Lcom/markany/drm/xsync/SWIGTYPE_p_int;->getCPtr(Lcom/markany/drm/xsync/SWIGTYPE_p_int;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->intp_value(J)I

    move-result p0

    return p0
.end method

.method public static new_intp()Lcom/markany/drm/xsync/SWIGTYPE_p_int;
    .locals 4

    .line 13
    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->new_intp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 14
    :cond_0
    new-instance v2, Lcom/markany/drm/xsync/SWIGTYPE_p_int;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/markany/drm/xsync/SWIGTYPE_p_int;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public static setInvalidTime(Lcom/markany/drm/xsync/Time;)V
    .locals 2

    .line 35
    invoke-static {p0}, Lcom/markany/drm/xsync/Time;->getCPtr(Lcom/markany/drm/xsync/Time;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->InvalidTime_set(JLcom/markany/drm/xsync/Time;)V

    return-void
.end method

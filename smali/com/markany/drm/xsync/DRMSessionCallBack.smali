.class public Lcom/markany/drm/xsync/DRMSessionCallBack;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 70
    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->new_DRMSessionCallBack()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/markany/drm/xsync/DRMSessionCallBack;-><init>(JZ)V

    .line 71
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCPtr:J

    iget-boolean v2, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCMemOwn:Z

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSessionCallBack_director_connect(Lcom/markany/drm/xsync/DRMSessionCallBack;JZZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/markany/drm/xsync/DRMSessionCallBack;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 21
    :cond_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public OnError(ILjava/lang/String;)Z
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSessionCallBack_OnError(JLcom/markany/drm/xsync/DRMSessionCallBack;ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public OnLicenseRequired(Lcom/markany/drm/xsync/DRMServer;Lcom/markany/drm/xsync/DRMSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    move-object v12, p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/markany/drm/xsync/DRMSessionCallBack;

    if-ne v0, v1, :cond_0

    iget-wide v0, v12, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/DRMServer;->getCPtr(Lcom/markany/drm/xsync/DRMServer;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/markany/drm/xsync/DRMSession;->getCPtr(Lcom/markany/drm/xsync/DRMSession;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static/range {v0 .. v11}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSessionCallBack_OnLicenseRequired(JLcom/markany/drm/xsync/DRMSessionCallBack;JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-wide v0, v12, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/DRMServer;->getCPtr(Lcom/markany/drm/xsync/DRMServer;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/markany/drm/xsync/DRMSession;->getCPtr(Lcom/markany/drm/xsync/DRMSession;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static/range {v0 .. v11}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSessionCallBack_OnLicenseRequiredSwigExplicitDRMSessionCallBack(JLcom/markany/drm/xsync/DRMSessionCallBack;JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public OnNewConnection(Lcom/markany/drm/xsync/DRMSession;)Z
    .locals 6

    .line 54
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/DRMSession;->getCPtr(Lcom/markany/drm/xsync/DRMSession;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSessionCallBack_OnNewConnection(JLcom/markany/drm/xsync/DRMSessionCallBack;JLcom/markany/drm/xsync/DRMSession;)Z

    move-result p1

    return p1
.end method

.method public OnTimeUpdateRequired(Lcom/markany/drm/xsync/DRMServer;Lcom/markany/drm/xsync/DRMSession;)Z
    .locals 11

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/markany/drm/xsync/DRMSessionCallBack;

    if-ne v0, v1, :cond_0

    iget-wide v2, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/DRMServer;->getCPtr(Lcom/markany/drm/xsync/DRMServer;)J

    move-result-wide v5

    invoke-static {p2}, Lcom/markany/drm/xsync/DRMSession;->getCPtr(Lcom/markany/drm/xsync/DRMSession;)J

    move-result-wide v8

    move-object v4, p0

    move-object v7, p1

    move-object v10, p2

    invoke-static/range {v2 .. v10}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSessionCallBack_OnTimeUpdateRequired(JLcom/markany/drm/xsync/DRMSessionCallBack;JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMSession;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/DRMServer;->getCPtr(Lcom/markany/drm/xsync/DRMServer;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/markany/drm/xsync/DRMSession;->getCPtr(Lcom/markany/drm/xsync/DRMSession;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSessionCallBack_OnTimeUpdateRequiredSwigExplicitDRMSessionCallBack(JLcom/markany/drm/xsync/DRMSessionCallBack;JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMSession;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public declared-synchronized delete()V
    .locals 4

    monitor-enter p0

    .line 29
    :try_start_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->delete_DRMSessionCallBack(J)V

    .line 34
    :cond_0
    iput-wide v2, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/markany/drm/xsync/DRMSessionCallBack;->delete()V

    return-void
.end method

.method protected swigDirectorDisconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCMemOwn:Z

    .line 40
    invoke-virtual {p0}, Lcom/markany/drm/xsync/DRMSessionCallBack;->delete()V

    return-void
.end method

.method public swigReleaseOwnership()V
    .locals 3

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCMemOwn:Z

    .line 45
    iget-wide v1, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSessionCallBack_change_ownership(Lcom/markany/drm/xsync/DRMSessionCallBack;JZ)V

    return-void
.end method

.method public swigTakeOwnership()V
    .locals 3

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCMemOwn:Z

    .line 50
    iget-wide v1, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSessionCallBack_change_ownership(Lcom/markany/drm/xsync/DRMSessionCallBack;JZ)V

    return-void
.end method

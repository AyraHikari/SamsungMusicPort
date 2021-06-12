.class Lcom/mapps/android/share/Track$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/Track;->requestServerPkgList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mz/common/network/request/OnConnectionListener;Lcom/mapps/android/share/Track$TrackCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/share/Track;

.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$media_no:Ljava/lang/String;

.field private final synthetic val$pub_no:Ljava/lang/String;

.field private final synthetic val$requestHandler:Landroid/os/Handler;

.field private final synthetic val$trackCompleteHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/Track;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/Track$11;->this$0:Lcom/mapps/android/share/Track;

    iput-object p2, p0, Lcom/mapps/android/share/Track$11;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/mapps/android/share/Track$11;->val$trackCompleteHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/mapps/android/share/Track$11;->val$pub_no:Ljava/lang/String;

    iput-object p5, p0, Lcom/mapps/android/share/Track$11;->val$media_no:Ljava/lang/String;

    iput-object p6, p0, Lcom/mapps/android/share/Track$11;->val$requestHandler:Landroid/os/Handler;

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 476
    iget-object v0, p0, Lcom/mapps/android/share/Track$11;->this$0:Lcom/mapps/android/share/Track;

    iget-object v1, p0, Lcom/mapps/android/share/Track$11;->val$ctx:Landroid/content/Context;

    const-string v2, "pkg_target_period"

    invoke-virtual {v0, v1, v2}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 477
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 479
    iget-object v0, p0, Lcom/mapps/android/share/Track$11;->val$trackCompleteHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 483
    :cond_0
    sget-boolean v1, Lcom/mapps/android/share/Track;->isStart:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 484
    sput-boolean v1, Lcom/mapps/android/share/Track;->isStart:Z

    .line 486
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mapps/android/share/Track$11;->this$0:Lcom/mapps/android/share/Track;

    iget-object v3, p0, Lcom/mapps/android/share/Track$11;->val$ctx:Landroid/content/Context;

    iget-object v4, p0, Lcom/mapps/android/share/Track$11;->val$pub_no:Ljava/lang/String;

    iget-object v5, p0, Lcom/mapps/android/share/Track$11;->val$media_no:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Lcom/mapps/android/share/Track;->checkTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 487
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 488
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "=pkg_target_period : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "min =savetime : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "min"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_3

    cmp-long v5, v3, v0

    if-ltz v5, :cond_2

    const-string v0, "PkgList \uc694\uccad \uc2dc\ub3c4"

    .line 493
    invoke-static {v0}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 495
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PkgList \uc548\ubcf4\ub0c4("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    sub-long/2addr v0, v3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    .line 496
    sput-boolean v2, Lcom/mapps/android/share/Track;->isStart:Z

    .line 498
    iget-object v0, p0, Lcom/mapps/android/share/Track$11;->val$trackCompleteHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 504
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    const-string v0, "\uc694\uccad"

    .line 506
    invoke-static {v0}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    .line 507
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd a hh:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 508
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 509
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 510
    iget-object v1, p0, Lcom/mapps/android/share/Track$11;->this$0:Lcom/mapps/android/share/Track;

    iget-object v3, p0, Lcom/mapps/android/share/Track$11;->val$ctx:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pkgtime"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/mapps/android/share/Track$11;->val$pub_no:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mapps/android/share/Track$11;->val$media_no:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/mapps/android/share/Track;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/mapps/android/share/Track$11;->this$0:Lcom/mapps/android/share/Track;

    iget-object v1, p0, Lcom/mapps/android/share/Track$11;->val$ctx:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "package_start"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mapps/android/share/Track$11;->val$pub_no:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mapps/android/share/Track$11;->val$media_no:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "package_start"

    invoke-virtual {v0, v1, v3, v4}, Lcom/mapps/android/share/Track;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/mapps/android/share/Track$11;->this$0:Lcom/mapps/android/share/Track;

    iget-object v1, p0, Lcom/mapps/android/share/Track$11;->val$ctx:Landroid/content/Context;

    const-string v3, "package_info"

    const-string v4, ""

    invoke-virtual {v0, v1, v3, v4}, Lcom/mapps/android/share/Track;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/mapps/android/share/Track$11;->this$0:Lcom/mapps/android/share/Track;

    iget-object v1, p0, Lcom/mapps/android/share/Track$11;->val$ctx:Landroid/content/Context;

    const-string v3, "pkg_flag"

    invoke-virtual {v0, v1, v3, v2}, Lcom/mapps/android/share/Track;->setAppPreferencesBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 517
    :try_start_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mapps/android/network/UrlManager;->getInstance()Lcom/mapps/android/network/UrlManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mapps/android/share/Track$11;->val$ctx:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/mapps/android/network/UrlManager;->urlPkgList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/mapps/android/network/ParamManager;

    iget-object v3, p0, Lcom/mapps/android/share/Track$11;->val$ctx:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/mapps/android/network/ParamManager;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/mapps/android/share/Track$11;->val$pub_no:Ljava/lang/String;

    iget-object v4, p0, Lcom/mapps/android/share/Track$11;->val$media_no:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/mapps/android/network/ParamManager;->getParamPkgList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 521
    iget-object v1, p0, Lcom/mapps/android/share/Track$11;->val$requestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 525
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 527
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->c(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

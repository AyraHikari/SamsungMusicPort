.class Lcom/mapps/android/share/Track$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/Track$5;->onConnection(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/share/Track$5;

.field private final synthetic val$apparrListHandler:Landroid/os/Handler;

.field private final synthetic val$codeType:Ljava/lang/String;

.field private final synthetic val$completeListener:Lcom/mapps/android/share/Track$TrackCompleteListener;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$isConnection:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

.field private final synthetic val$media_type:I

.field private final synthetic val$msg:Landroid/os/Message;

.field private final synthetic val$request:Lcom/mz/common/network/request/RequestNTCommon;

.field private final synthetic val$trackCompleteHandler:Landroid/os/Handler;

.field private final synthetic val$trackErrorHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/Track$5;Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;Landroid/os/Message;Lcom/mz/common/network/request/RequestNTCommon;Landroid/content/Context;Landroid/content/Context;ILjava/lang/String;Lcom/mapps/android/share/Track$TrackCompleteListener;Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/Track$5$1;->this$1:Lcom/mapps/android/share/Track$5;

    iput-object p2, p0, Lcom/mapps/android/share/Track$5$1;->val$isConnection:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    iput-object p3, p0, Lcom/mapps/android/share/Track$5$1;->val$msg:Landroid/os/Message;

    iput-object p4, p0, Lcom/mapps/android/share/Track$5$1;->val$request:Lcom/mz/common/network/request/RequestNTCommon;

    iput-object p5, p0, Lcom/mapps/android/share/Track$5$1;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/mapps/android/share/Track$5$1;->val$ctx:Landroid/content/Context;

    iput p7, p0, Lcom/mapps/android/share/Track$5$1;->val$media_type:I

    iput-object p8, p0, Lcom/mapps/android/share/Track$5$1;->val$codeType:Ljava/lang/String;

    iput-object p9, p0, Lcom/mapps/android/share/Track$5$1;->val$completeListener:Lcom/mapps/android/share/Track$TrackCompleteListener;

    iput-object p10, p0, Lcom/mapps/android/share/Track$5$1;->val$trackCompleteHandler:Landroid/os/Handler;

    iput-object p11, p0, Lcom/mapps/android/share/Track$5$1;->val$apparrListHandler:Landroid/os/Handler;

    iput-object p12, p0, Lcom/mapps/android/share/Track$5$1;->val$trackErrorHandler:Landroid/os/Handler;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 234
    iget-object v0, p0, Lcom/mapps/android/share/Track$5$1;->val$isConnection:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    sget-object v1, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_SUCCESS:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    .line 235
    iget-object v0, p0, Lcom/mapps/android/share/Track$5$1;->val$msg:Landroid/os/Message;

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mapps/android/share/Track$TrackAdInfo;

    .line 236
    iget-object v1, p0, Lcom/mapps/android/share/Track$5$1;->val$request:Lcom/mz/common/network/request/RequestNTCommon;

    invoke-virtual {v1}, Lcom/mz/common/network/request/RequestNTCommon;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mz/common/network/data/DataNTInitInfo;

    .line 237
    iget-object v3, p0, Lcom/mapps/android/share/Track$5$1;->this$1:Lcom/mapps/android/share/Track$5;

    invoke-static {v3}, Lcom/mapps/android/share/Track$5;->access$0(Lcom/mapps/android/share/Track$5;)Lcom/mapps/android/share/Track;

    move-result-object v3

    iget-object v4, p0, Lcom/mapps/android/share/Track$5$1;->val$context:Landroid/content/Context;

    const-string v5, "version"

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTInitInfo;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/mapps/android/share/Track;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "config : data.getConf_period() : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTInitInfo;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTInitInfo;->f()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v5, ""

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTInitInfo;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "0"

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTInitInfo;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTInitInfo;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 245
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "config : conf_period : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    .line 246
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    add-long/2addr v5, v3

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/32 v5, 0x927c0

    add-long/2addr v5, v3

    .line 248
    :goto_1
    iget-object v3, p0, Lcom/mapps/android/share/Track$5$1;->this$1:Lcom/mapps/android/share/Track$5;

    invoke-static {v3}, Lcom/mapps/android/share/Track$5;->access$0(Lcom/mapps/android/share/Track$5;)Lcom/mapps/android/share/Track;

    move-result-object v3

    iget-object v4, p0, Lcom/mapps/android/share/Track$5$1;->val$context:Landroid/content/Context;

    const-string v7, "conf_period"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v7, v5}, Lcom/mapps/android/share/Track;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v3, p0, Lcom/mapps/android/share/Track$5$1;->this$1:Lcom/mapps/android/share/Track$5;

    invoke-static {v3}, Lcom/mapps/android/share/Track$5;->access$0(Lcom/mapps/android/share/Track$5;)Lcom/mapps/android/share/Track;

    move-result-object v4

    iget-object v5, p0, Lcom/mapps/android/share/Track$5$1;->val$ctx:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTInitInfo;->g()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/mapps/android/share/Track$TrackAdInfo;->pub_no:Ljava/lang/String;

    iget-object v8, v0, Lcom/mapps/android/share/Track$TrackAdInfo;->media_no:Ljava/lang/String;

    iget-object v9, v0, Lcom/mapps/android/share/Track$TrackAdInfo;->section_no:Ljava/lang/String;

    iget v10, p0, Lcom/mapps/android/share/Track$5$1;->val$media_type:I

    iget-object v11, p0, Lcom/mapps/android/share/Track$5$1;->val$codeType:Ljava/lang/String;

    invoke-virtual/range {v4 .. v11}, Lcom/mapps/android/share/Track;->setInterval(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/mapps/android/share/Track$5$1;->this$1:Lcom/mapps/android/share/Track$5;

    invoke-static {v0}, Lcom/mapps/android/share/Track$5;->access$0(Lcom/mapps/android/share/Track$5;)Lcom/mapps/android/share/Track;

    move-result-object v0

    iget-object v3, p0, Lcom/mapps/android/share/Track$5$1;->val$context:Landroid/content/Context;

    const-string v4, "pkg_target_period"

    const-string v5, ""

    invoke-virtual {v0, v3, v4, v5}, Lcom/mapps/android/share/Track;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    sget-object v0, Lcom/mapps/android/share/Track;->SUCCESS:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTInitInfo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 252
    iget-object v0, p0, Lcom/mapps/android/share/Track$5$1;->this$1:Lcom/mapps/android/share/Track$5;

    invoke-static {v0}, Lcom/mapps/android/share/Track$5;->access$0(Lcom/mapps/android/share/Track$5;)Lcom/mapps/android/share/Track;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/share/Track$5$1;->val$context:Landroid/content/Context;

    const-string v3, "pkg_flag"

    invoke-virtual {v0, v1, v3, v2}, Lcom/mapps/android/share/Track;->setAppPreferencesBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "pkg_target_not"

    .line 253
    invoke-static {v0}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/mapps/android/share/Track$5$1;->val$completeListener:Lcom/mapps/android/share/Track$TrackCompleteListener;

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/mapps/android/share/Track$5$1;->val$trackCompleteHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void

    .line 260
    :cond_3
    iget-object v0, p0, Lcom/mapps/android/share/Track$5$1;->this$1:Lcom/mapps/android/share/Track$5;

    invoke-static {v0}, Lcom/mapps/android/share/Track$5;->access$0(Lcom/mapps/android/share/Track$5;)Lcom/mapps/android/share/Track;

    move-result-object v0

    iget-object v3, p0, Lcom/mapps/android/share/Track$5$1;->val$context:Landroid/content/Context;

    const-string v4, "pkg_target_period"

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTInitInfo;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/mapps/android/share/Track;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/mapps/android/share/Track$5$1;->this$1:Lcom/mapps/android/share/Track$5;

    invoke-static {v0}, Lcom/mapps/android/share/Track$5;->access$0(Lcom/mapps/android/share/Track$5;)Lcom/mapps/android/share/Track;

    move-result-object v0

    iget-object v3, p0, Lcom/mapps/android/share/Track$5$1;->val$context:Landroid/content/Context;

    const-string v4, "pkg_target_info_ver"

    invoke-virtual {v0, v3, v4}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    .line 262
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTInitInfo;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 263
    :cond_4
    iget-object v0, p0, Lcom/mapps/android/share/Track$5$1;->this$1:Lcom/mapps/android/share/Track$5;

    invoke-static {v0}, Lcom/mapps/android/share/Track$5;->access$0(Lcom/mapps/android/share/Track$5;)Lcom/mapps/android/share/Track;

    move-result-object v0

    iget-object v3, p0, Lcom/mapps/android/share/Track$5$1;->val$context:Landroid/content/Context;

    const-string v4, "pkg_flag"

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/mapps/android/share/Track;->setAppPreferencesBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 264
    iget-object v0, p0, Lcom/mapps/android/share/Track$5$1;->this$1:Lcom/mapps/android/share/Track$5;

    invoke-static {v0}, Lcom/mapps/android/share/Track$5;->access$0(Lcom/mapps/android/share/Track$5;)Lcom/mapps/android/share/Track;

    move-result-object v0

    iget-object v3, p0, Lcom/mapps/android/share/Track$5$1;->val$context:Landroid/content/Context;

    const-string v4, "pkg_target_use"

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTInitInfo;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/mapps/android/share/Track;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/mapps/android/share/Track$5$1;->this$1:Lcom/mapps/android/share/Track$5;

    invoke-static {v0}, Lcom/mapps/android/share/Track$5;->access$0(Lcom/mapps/android/share/Track$5;)Lcom/mapps/android/share/Track;

    move-result-object v0

    iget-object v3, p0, Lcom/mapps/android/share/Track$5$1;->val$context:Landroid/content/Context;

    const-string v4, "pkg_target_info_ver"

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTInitInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v4, v1}, Lcom/mapps/android/share/Track;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_5
    iget-object v0, p0, Lcom/mapps/android/share/Track$5$1;->val$apparrListHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 272
    :cond_6
    iget-object v0, p0, Lcom/mapps/android/share/Track$5$1;->val$isConnection:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    sget-object v1, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->TIMEOUT:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    if-ne v0, v1, :cond_7

    .line 273
    iget-object v0, p0, Lcom/mapps/android/share/Track$5$1;->val$completeListener:Lcom/mapps/android/share/Track$TrackCompleteListener;

    if-eqz v0, :cond_8

    .line 275
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 277
    iget-object v1, p0, Lcom/mapps/android/share/Track$5$1;->val$isConnection:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 279
    iget-object v1, p0, Lcom/mapps/android/share/Track$5$1;->val$trackErrorHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 282
    :cond_7
    iget-object v0, p0, Lcom/mapps/android/share/Track$5$1;->val$completeListener:Lcom/mapps/android/share/Track$TrackCompleteListener;

    if-eqz v0, :cond_8

    .line 284
    iget-object v0, p0, Lcom/mapps/android/share/Track$5$1;->val$trackCompleteHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_8
    :goto_2
    return-void
.end method

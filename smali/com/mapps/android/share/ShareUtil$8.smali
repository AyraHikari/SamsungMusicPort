.class Lcom/mapps/android/share/ShareUtil$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/ShareUtil;->requestConf(Landroid/content/Context;ILjava/lang/String;Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/share/ShareUtil;

.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$requestConfCompleteHandler:Landroid/os/Handler;

.field private final synthetic val$requestConfHandler:Landroid/os/Handler;

.field private final synthetic val$sendTagetRequestHandler:Landroid/os/Handler;

.field private final synthetic val$track:Lcom/mapps/android/share/Track;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/ShareUtil;Lcom/mapps/android/share/Track;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/ShareUtil$8;->this$0:Lcom/mapps/android/share/ShareUtil;

    iput-object p2, p0, Lcom/mapps/android/share/ShareUtil$8;->val$track:Lcom/mapps/android/share/Track;

    iput-object p3, p0, Lcom/mapps/android/share/ShareUtil$8;->val$ctx:Landroid/content/Context;

    iput-object p4, p0, Lcom/mapps/android/share/ShareUtil$8;->val$requestConfHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/mapps/android/share/ShareUtil$8;->val$sendTagetRequestHandler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/mapps/android/share/ShareUtil$8;->val$requestConfCompleteHandler:Landroid/os/Handler;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x0

    .line 257
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 258
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 259
    iget-object v5, p0, Lcom/mapps/android/share/ShareUtil$8;->val$track:Lcom/mapps/android/share/Track;

    iget-object v6, p0, Lcom/mapps/android/share/ShareUtil$8;->val$ctx:Landroid/content/Context;

    const-string v7, "conf_period"

    invoke-virtual {v5, v6, v7}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v5, ""

    iget-object v6, p0, Lcom/mapps/android/share/ShareUtil$8;->val$track:Lcom/mapps/android/share/Track;

    iget-object v7, p0, Lcom/mapps/android/share/ShareUtil$8;->val$ctx:Landroid/content/Context;

    const-string v8, "conf_period"

    invoke-virtual {v6, v7, v8}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 260
    iget-object v5, p0, Lcom/mapps/android/share/ShareUtil$8;->val$track:Lcom/mapps/android/share/Track;

    iget-object v6, p0, Lcom/mapps/android/share/ShareUtil$8;->val$ctx:Landroid/content/Context;

    const-string v7, "conf_period"

    invoke-virtual {v5, v6, v7}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 261
    iget-object v3, p0, Lcom/mapps/android/share/ShareUtil$8;->val$track:Lcom/mapps/android/share/Track;

    iget-object v4, p0, Lcom/mapps/android/share/ShareUtil$8;->val$ctx:Landroid/content/Context;

    const-string v5, "conf_period"

    invoke-virtual {v3, v4, v5}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 265
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "config : currentTime : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    .line 266
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "config : currentTimeSumPeriod : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    const-string v5, ""

    .line 267
    iget-object v6, p0, Lcom/mapps/android/share/ShareUtil$8;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-object v6, v6, Lcom/mapps/android/share/ShareUtil;->m_publisher:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, ""

    iget-object v6, p0, Lcom/mapps/android/share/ShareUtil$8;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-object v6, v6, Lcom/mapps/android/share/ShareUtil;->m_media:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 282
    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$8;->val$requestConfHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 286
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pkg_target_period : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mapps/android/share/ShareUtil$8;->val$track:Lcom/mapps/android/share/Track;

    iget-object v3, p0, Lcom/mapps/android/share/ShareUtil$8;->val$ctx:Landroid/content/Context;

    const-string v4, "pkg_target_period"

    invoke-virtual {v2, v3, v4}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$8;->val$track:Lcom/mapps/android/share/Track;

    iget-object v2, p0, Lcom/mapps/android/share/ShareUtil$8;->val$ctx:Landroid/content/Context;

    const-string v3, "pkg_target_period"

    invoke-virtual {v1, v2, v3}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, ""

    .line 289
    iget-object v2, p0, Lcom/mapps/android/share/ShareUtil$8;->val$track:Lcom/mapps/android/share/Track;

    iget-object v3, p0, Lcom/mapps/android/share/ShareUtil$8;->val$ctx:Landroid/content/Context;

    const-string v4, "pkg_target_period"

    invoke-virtual {v2, v3, v4}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pkg_flag : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mapps/android/share/ShareUtil$8;->val$track:Lcom/mapps/android/share/Track;

    iget-object v3, p0, Lcom/mapps/android/share/ShareUtil$8;->val$ctx:Landroid/content/Context;

    const-string v4, "pkg_flag"

    invoke-virtual {v2, v3, v4}, Lcom/mapps/android/share/Track;->getAppPreferencesBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$8;->val$track:Lcom/mapps/android/share/Track;

    iget-object v2, p0, Lcom/mapps/android/share/ShareUtil$8;->val$ctx:Landroid/content/Context;

    const-string v3, "pkg_flag"

    invoke-virtual {v1, v2, v3}, Lcom/mapps/android/share/Track;->getAppPreferencesBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    const-string v1, "\ud328\ud0a4\uc9c0 \ud0c0\uac9f \ub9ac\uc2a4\ud2b8\uc0ac\uc6a9"

    .line 295
    invoke-static {v1}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    .line 296
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 298
    iget-object v2, p0, Lcom/mapps/android/share/ShareUtil$8;->val$track:Lcom/mapps/android/share/Track;

    iget-object v3, p0, Lcom/mapps/android/share/ShareUtil$8;->val$ctx:Landroid/content/Context;

    const-string v4, "pkg_target_period"

    invoke-virtual {v2, v3, v4}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, ""

    iget-object v3, p0, Lcom/mapps/android/share/ShareUtil$8;->val$track:Lcom/mapps/android/share/Track;

    iget-object v4, p0, Lcom/mapps/android/share/ShareUtil$8;->val$ctx:Landroid/content/Context;

    const-string v5, "pkg_target_period"

    invoke-virtual {v3, v4, v5}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 299
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 300
    iget-object v3, p0, Lcom/mapps/android/share/ShareUtil$8;->val$track:Lcom/mapps/android/share/Track;

    iget-object v4, p0, Lcom/mapps/android/share/ShareUtil$8;->val$ctx:Landroid/content/Context;

    const-string v5, "pkg_target_period"

    invoke-virtual {v3, v4, v5}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 301
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "currentMille : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    .line 302
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "saveMille : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    const-string v1, "\ud328\ud0a4\uc9c0 \ud0c0\uac9f \ub9ac\uc2a4\ud2b8 \uc694\uccad"

    .line 304
    invoke-static {v1}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    .line 317
    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$8;->val$sendTagetRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_3
    const-string v1, "\ud328\ud0a4\uc9c0 \ud0c0\uac9f \ub9ac\uc2a4\ud2b8 \uc694\uccad\ud560 \uc2dc\uac04\uc774 \uc544\ub2d8"

    .line 319
    invoke-static {v1}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$8;->val$requestConfCompleteHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_4
    const-string v1, "\uc544\ubb34\uac12\ub3c4 \uc5c6\uc5b4 \ud328\ud0a4\uc9c0 \ud0c0\uac9f \ub9ac\uc2a4\ud2b8 \uc694\uccad"

    .line 325
    invoke-static {v1}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$8;->val$sendTagetRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_5
    const-string v1, "\ud328\ud0a4\uc9c0 \ud0c0\uac9f \ub9ac\uc2a4\ud2b8 \ubbf8\uc0ac\uc6a9"

    .line 341
    invoke-static {v1}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$8;->val$requestConfCompleteHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 347
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "Exception :\ud328\ud0a4\uc9c0 \ud0c0\uac9f \ub9ac\uc2a4\ud2b8 \uc694\uccad"

    .line 348
    invoke-static {v1}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$8;->val$sendTagetRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    :goto_1
    return-void
.end method

.class Lcom/mapps/android/share/Track$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/Track$8;->onConnection(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/share/Track$8;

.field private final synthetic val$completeListener:Lcom/mapps/android/share/Track$TrackCompleteListener;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$isConnection:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

.field private final synthetic val$msg:Landroid/os/Message;

.field private final synthetic val$request:Lcom/mz/common/network/request/RequestNTCommon;

.field private final synthetic val$trackCompleteHandler:Landroid/os/Handler;

.field private final synthetic val$trackErrorHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/Track$8;Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;Landroid/os/Message;Lcom/mz/common/network/request/RequestNTCommon;Landroid/content/Context;Landroid/content/Context;Lcom/mapps/android/share/Track$TrackCompleteListener;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/Track$8$1;->this$1:Lcom/mapps/android/share/Track$8;

    iput-object p2, p0, Lcom/mapps/android/share/Track$8$1;->val$isConnection:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    iput-object p3, p0, Lcom/mapps/android/share/Track$8$1;->val$msg:Landroid/os/Message;

    iput-object p4, p0, Lcom/mapps/android/share/Track$8$1;->val$request:Lcom/mz/common/network/request/RequestNTCommon;

    iput-object p5, p0, Lcom/mapps/android/share/Track$8$1;->val$ctx:Landroid/content/Context;

    iput-object p6, p0, Lcom/mapps/android/share/Track$8$1;->val$context:Landroid/content/Context;

    iput-object p7, p0, Lcom/mapps/android/share/Track$8$1;->val$completeListener:Lcom/mapps/android/share/Track$TrackCompleteListener;

    iput-object p8, p0, Lcom/mapps/android/share/Track$8$1;->val$trackCompleteHandler:Landroid/os/Handler;

    iput-object p9, p0, Lcom/mapps/android/share/Track$8$1;->val$trackErrorHandler:Landroid/os/Handler;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    .line 359
    iget-object v1, v0, Lcom/mapps/android/share/Track$8$1;->val$isConnection:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    sget-object v2, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_SUCCESS:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_7

    .line 360
    iget-object v1, v0, Lcom/mapps/android/share/Track$8$1;->val$msg:Landroid/os/Message;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/mapps/android/share/Track$TrackAdInfo;

    .line 361
    iget-object v2, v1, Lcom/mapps/android/share/Track$TrackAdInfo;->pub_no:Ljava/lang/String;

    .line 362
    iget-object v1, v1, Lcom/mapps/android/share/Track$TrackAdInfo;->media_no:Ljava/lang/String;

    .line 363
    iget-object v4, v0, Lcom/mapps/android/share/Track$8$1;->val$request:Lcom/mz/common/network/request/RequestNTCommon;

    invoke-virtual {v4}, Lcom/mz/common/network/request/RequestNTCommon;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mz/common/network/data/DataNTPkgAgList;

    .line 369
    iget-object v5, v0, Lcom/mapps/android/share/Track$8$1;->this$1:Lcom/mapps/android/share/Track$8;

    invoke-static {v5}, Lcom/mapps/android/share/Track$8;->access$0(Lcom/mapps/android/share/Track$8;)Lcom/mapps/android/share/Track;

    move-result-object v5

    iget-object v6, v0, Lcom/mapps/android/share/Track$8$1;->val$ctx:Landroid/content/Context;

    const-string v7, "package_info"

    invoke-virtual {v4}, Lcom/mz/common/network/data/DataNTPkgAgList;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/mapps/android/share/Track;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "result = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/mz/common/network/data/DataNTPkgAgList;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v4}, Lcom/mz/common/network/data/DataNTPkgAgList;->c()Lcom/mz/common/network/data/DataListSection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mz/common/network/data/DataListSection;->b()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-lt v6, v5, :cond_1

    .line 400
    iget-object v1, v0, Lcom/mapps/android/share/Track$8$1;->this$1:Lcom/mapps/android/share/Track$8;

    invoke-static {v1}, Lcom/mapps/android/share/Track$8;->access$0(Lcom/mapps/android/share/Track$8;)Lcom/mapps/android/share/Track;

    move-result-object v1

    iget-object v2, v0, Lcom/mapps/android/share/Track$8$1;->val$ctx:Landroid/content/Context;

    const-string v4, "package_info"

    invoke-virtual {v1, v2, v4}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 401
    iget-object v1, v0, Lcom/mapps/android/share/Track$8$1;->this$1:Lcom/mapps/android/share/Track$8;

    invoke-static {v1}, Lcom/mapps/android/share/Track$8;->access$0(Lcom/mapps/android/share/Track$8;)Lcom/mapps/android/share/Track;

    move-result-object v1

    iget-object v2, v0, Lcom/mapps/android/share/Track$8$1;->val$ctx:Landroid/content/Context;

    const-string v4, "pkg_flag"

    invoke-virtual {v1, v2, v4, v7}, Lcom/mapps/android/share/Track;->setAppPreferencesBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1

    .line 403
    :cond_0
    iget-object v1, v0, Lcom/mapps/android/share/Track$8$1;->this$1:Lcom/mapps/android/share/Track$8;

    invoke-static {v1}, Lcom/mapps/android/share/Track$8;->access$0(Lcom/mapps/android/share/Track$8;)Lcom/mapps/android/share/Track;

    move-result-object v1

    iget-object v2, v0, Lcom/mapps/android/share/Track$8$1;->val$ctx:Landroid/content/Context;

    const-string v4, "pkg_flag"

    invoke-virtual {v1, v2, v4, v3}, Lcom/mapps/android/share/Track;->setAppPreferencesBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 405
    :goto_1
    iget-object v1, v0, Lcom/mapps/android/share/Track$8$1;->val$completeListener:Lcom/mapps/android/share/Track$TrackCompleteListener;

    if-eqz v1, :cond_9

    .line 407
    iget-object v1, v0, Lcom/mapps/android/share/Track$8$1;->val$trackCompleteHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_6

    :cond_1
    const-string v8, ""

    .line 374
    invoke-virtual {v4}, Lcom/mz/common/network/data/DataNTPkgAgList;->c()Lcom/mz/common/network/data/DataListSection;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/mz/common/network/data/DataListSection;->a(I)Lcom/mz/common/network/data/IData;

    move-result-object v9

    check-cast v9, Lcom/mz/common/network/data/DataSection;

    .line 375
    invoke-virtual {v9}, Lcom/mz/common/network/data/DataSection;->a()Ljava/lang/String;

    move-result-object v10

    .line 376
    invoke-virtual {v9}, Lcom/mz/common/network/data/DataSection;->b()Lcom/mz/common/network/data/DataListAD;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mz/common/network/data/DataListAD;->a()I

    move-result v11

    move-object v12, v8

    const/4 v8, 0x0

    :goto_2
    if-lt v8, v11, :cond_3

    .line 393
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v7

    if-lez v8, :cond_2

    .line 394
    iget-object v8, v0, Lcom/mapps/android/share/Track$8$1;->this$1:Lcom/mapps/android/share/Track$8;

    invoke-static {v8}, Lcom/mapps/android/share/Track$8;->access$0(Lcom/mapps/android/share/Track$8;)Lcom/mapps/android/share/Track;

    move-result-object v8

    iget-object v9, v0, Lcom/mapps/android/share/Track$8$1;->val$ctx:Landroid/content/Context;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "ad_group_no"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v7

    invoke-virtual {v12, v3, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v9, v11, v7}, Lcom/mapps/android/share/Track;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 396
    :cond_2
    iget-object v7, v0, Lcom/mapps/android/share/Track$8$1;->this$1:Lcom/mapps/android/share/Track$8;

    invoke-static {v7}, Lcom/mapps/android/share/Track$8;->access$0(Lcom/mapps/android/share/Track$8;)Lcom/mapps/android/share/Track;

    move-result-object v7

    iget-object v8, v0, Lcom/mapps/android/share/Track$8$1;->val$ctx:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "ad_group_no"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v12}, Lcom/mapps/android/share/Track;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ad_group_no"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/mapps/android/share/Track$8$1;->this$1:Lcom/mapps/android/share/Track$8;

    invoke-static {v8}, Lcom/mapps/android/share/Track$8;->access$0(Lcom/mapps/android/share/Track$8;)Lcom/mapps/android/share/Track;

    move-result-object v8

    iget-object v9, v0, Lcom/mapps/android/share/Track$8$1;->val$ctx:Landroid/content/Context;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "ad_group_no"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 380
    :cond_3
    invoke-virtual {v9}, Lcom/mz/common/network/data/DataSection;->b()Lcom/mz/common/network/data/DataListAD;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/mz/common/network/data/DataListAD;->a(I)Lcom/mz/common/network/data/IData;

    move-result-object v13

    check-cast v13, Lcom/mz/common/network/data/DataAD;

    .line 381
    sget-object v14, Lcom/mapps/android/share/Track;->SUCCESS:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/mz/common/network/data/DataAD;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 382
    iget-object v14, v0, Lcom/mapps/android/share/Track$8$1;->this$1:Lcom/mapps/android/share/Track$8;

    invoke-static {v14}, Lcom/mapps/android/share/Track$8;->access$0(Lcom/mapps/android/share/Track$8;)Lcom/mapps/android/share/Track;

    move-result-object v14

    iget-object v15, v0, Lcom/mapps/android/share/Track$8$1;->val$context:Landroid/content/Context;

    const-string v7, "1"

    invoke-virtual {v13}, Lcom/mz/common/network/data/DataAD;->c()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v1

    invoke-virtual {v13}, Lcom/mz/common/network/data/DataAD;->f()Z

    move-result v1

    invoke-virtual {v14, v15, v7, v3, v1}, Lcom/mapps/android/share/Track;->selectPTaget(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    goto :goto_4

    :cond_4
    move-object/from16 v16, v1

    const/4 v7, 0x1

    .line 385
    :goto_4
    sget-object v1, Lcom/mapps/android/share/Track;->SUCCESS:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/mz/common/network/data/DataAD;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 386
    iget-object v1, v0, Lcom/mapps/android/share/Track$8$1;->this$1:Lcom/mapps/android/share/Track$8;

    invoke-static {v1}, Lcom/mapps/android/share/Track$8;->access$0(Lcom/mapps/android/share/Track$8;)Lcom/mapps/android/share/Track;

    move-result-object v1

    iget-object v3, v0, Lcom/mapps/android/share/Track$8$1;->val$context:Landroid/content/Context;

    const-string v14, "0"

    invoke-virtual {v13}, Lcom/mz/common/network/data/DataAD;->e()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v2

    invoke-virtual {v13}, Lcom/mz/common/network/data/DataAD;->f()Z

    move-result v2

    invoke-virtual {v1, v3, v14, v15, v2}, Lcom/mapps/android/share/Track;->selectPTaget(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_5

    :cond_5
    move-object/from16 v17, v2

    const/4 v1, 0x1

    :goto_5
    if-eqz v7, :cond_6

    if-eqz v1, :cond_6

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/mz/common/network/data/DataAD;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    .line 391
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ad_group_no : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    const/4 v3, 0x0

    const/4 v7, 0x1

    goto/16 :goto_2

    .line 409
    :cond_7
    iget-object v1, v0, Lcom/mapps/android/share/Track$8$1;->val$isConnection:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    sget-object v2, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->TIMEOUT:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    if-ne v1, v2, :cond_8

    .line 410
    iget-object v1, v0, Lcom/mapps/android/share/Track$8$1;->val$completeListener:Lcom/mapps/android/share/Track$TrackCompleteListener;

    if-eqz v1, :cond_9

    .line 412
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 414
    iget-object v2, v0, Lcom/mapps/android/share/Track$8$1;->val$isConnection:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 417
    iget-object v2, v0, Lcom/mapps/android/share/Track$8$1;->val$trackErrorHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    .line 420
    :cond_8
    iget-object v1, v0, Lcom/mapps/android/share/Track$8$1;->val$completeListener:Lcom/mapps/android/share/Track$TrackCompleteListener;

    if-eqz v1, :cond_9

    .line 422
    iget-object v1, v0, Lcom/mapps/android/share/Track$8$1;->val$trackCompleteHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    :goto_6
    return-void
.end method

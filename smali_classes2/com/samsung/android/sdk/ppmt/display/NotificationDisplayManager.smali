.class public Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;
.super Lcom/samsung/android/sdk/ppmt/display/DisplayManager;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "NotificationDisplayManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;-><init>()V

    return-void
.end method

.method private a(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 321
    sget p1, Lcom/samsung/android/sdk/ppmt/R$id;->viewflipper:I

    return p1

    .line 319
    :pswitch_0
    sget p1, Lcom/samsung/android/sdk/ppmt/R$id;->viewflipper_anim3:I

    return p1

    .line 317
    :pswitch_1
    sget p1, Lcom/samsung/android/sdk/ppmt/R$id;->viewflipper_anim2:I

    return p1

    .line 315
    :pswitch_2
    sget p1, Lcom/samsung/android/sdk/ppmt/R$id;->viewflipper_anim1:I

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/content/Context;)I
    .locals 2

    .line 261
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    .line 262
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->a(Landroid/content/Context;)I

    move-result p1

    if-ne v0, p1, :cond_0

    .line 263
    sget p1, Lcom/samsung/android/sdk/ppmt/R$layout;->noti_banner_tablet:I

    return p1

    .line 265
    :cond_0
    sget p1, Lcom/samsung/android/sdk/ppmt/R$layout;->noti_banner:I

    return p1
.end method

.method private a(Landroid/content/Context;Z)I
    .locals 1

    if-eqz p2, :cond_0

    .line 327
    sget p1, Lcom/samsung/android/sdk/ppmt/R$layout;->expanded_viewflipper:I

    return p1

    .line 330
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p2, v0, :cond_1

    const/4 p2, 0x2

    .line 331
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->a(Landroid/content/Context;)I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 332
    sget p1, Lcom/samsung/android/sdk/ppmt/R$layout;->folded_viewflipper_tablet:I

    return p1

    .line 334
    :cond_1
    sget p1, Lcom/samsung/android/sdk/ppmt/R$layout;->folded_viewflipper:I

    return p1
.end method

.method private a(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Notification;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$IllegalPushChannelException;
        }
    .end annotation

    .line 125
    invoke-direct {p0, p1, p7}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->b(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 126
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v0, p6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p6

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-static {p5}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-static {p4}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p4

    .line 131
    invoke-virtual {p6, p4}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p6, p4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :goto_0
    const/4 p4, 0x1

    if-ne p2, p4, :cond_1

    .line 137
    invoke-direct {p0, p1, p6, p7}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V

    .line 140
    :cond_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x10

    if-ge p2, p4, :cond_2

    .line 141
    invoke-virtual {p6}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p2, 0x2

    if-eq p3, p2, :cond_4

    const/4 p2, 0x4

    if-eq p3, p2, :cond_3

    goto :goto_1

    .line 148
    :cond_3
    invoke-direct {p0, p1, p6, p7}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->c(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V

    goto :goto_1

    .line 145
    :cond_4
    invoke-direct {p0, p1, p6, p7}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->b(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V

    .line 152
    :goto_1
    invoke-virtual {p6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/app/Notification;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$IllegalPushChannelException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const-string v0, "f_type"

    const/4 v1, -0x1

    .line 85
    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v0, "e_type"

    .line 86
    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 87
    invoke-direct {v8, v11, v12}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "mid"

    .line 91
    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "targetid"

    .line 92
    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "ticker"

    .line 93
    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v0, "app_icon"

    .line 94
    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 95
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/PpmtConfiguration;->a()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/ppmt/PpmtConfiguration;->a()I

    move-result v1

    move v14, v1

    goto :goto_0

    :cond_0
    move v14, v0

    .line 96
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    const-string v1, "small_icon"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v15, v1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :goto_2
    const-string v1, "click_action"

    .line 97
    invoke-static {v10, v1}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 98
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    if-ltz v0, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object v3, v7

    move/from16 v4, p3

    .line 102
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)Landroid/app/PendingIntent;

    move-result-object v5

    move/from16 v0, p3

    .line 103
    invoke-direct {v8, v9, v6, v7, v0}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v7

    move-object/from16 v0, p0

    move v2, v11

    move v3, v12

    move v4, v14

    move-object v14, v5

    move-object v5, v15

    move-object v6, v13

    move-object v13, v7

    move-object/from16 v7, p2

    .line 105
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Notification;

    move-result-object v0

    .line 107
    invoke-direct {v8, v9, v11, v10}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 109
    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 111
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_3

    .line 112
    invoke-direct {v8, v9, v12, v10}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->b(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 114
    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 117
    :cond_3
    iput-object v14, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 118
    iput-object v13, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object v0

    .line 99
    :cond_4
    sget-object v0, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a:Ljava/lang/String;

    const-string v1, "fail to get notif. invalid data"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw v0

    .line 88
    :cond_5
    sget-object v0, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a:Ljava/lang/String;

    const-string v1, "fail to get notif. not supported type"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 0

    .line 453
    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/high16 p3, 0x8000000

    .line 455
    invoke-static {p1, p4, p2, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)Landroid/app/PendingIntent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .line 446
    invoke-static {p1, p2, p3, p5}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object p2

    const/high16 p3, 0x8000000

    .line 448
    invoke-static {p1, p4, p2, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 460
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 461
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 462
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 464
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le p1, v1, :cond_0

    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_0
    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 466
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int v0, v0, p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    const/4 v1, 0x1

    .line 469
    :try_start_0
    invoke-static {p2, p1, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p2
.end method

.method private a(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/widget/RemoteViews;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;
        }
    .end annotation

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    const/4 p2, 0x0

    .line 231
    invoke-direct {p0, p1, p3, p2}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1

    .line 229
    :pswitch_1
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/widget/RemoteViews;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    const-string v0, "banner"

    .line 247
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 253
    invoke-static {p2}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 255
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a(Landroid/content/Context;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 256
    sget p1, Lcom/samsung/android/sdk/ppmt/R$id;->banner_icon:I

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    return-object v0

    .line 249
    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a:Ljava/lang/String;

    const-string p2, "fail to make notification. banner path null"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method private a(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/widget/RemoteViews;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    if-eqz p3, :cond_0

    const-string v0, "e_flip_path"

    .line 271
    :goto_0
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v0, "f_flip_path"

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_7

    .line 276
    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p3, :cond_1

    const-string v1, "e_flip_period"

    .line 277
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    :cond_1
    const-string v1, "f_flip_period"

    .line 278
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_2
    if-lez v1, :cond_6

    .line 280
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    const-string v3, "e_flip_anim"

    .line 286
    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_3

    :cond_2
    const-string v3, "f_flip_anim"

    .line 287
    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 288
    :goto_3
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a(I)I

    move-result p2

    .line 290
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/samsung/android/sdk/ppmt/R$layout;->noti_viewflipper:I

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 291
    invoke-virtual {v3, p2, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v2, "setFlipInterval"

    .line 292
    invoke-virtual {v3, p2, v2, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 294
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 295
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 296
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 297
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a(Landroid/content/Context;Z)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    if-eqz p3, :cond_4

    .line 299
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-gt v2, v4, :cond_3

    .line 300
    sget v2, Lcom/samsung/android/sdk/ppmt/R$id;->flipper_expanded_icon:I

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v4}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_5

    .line 302
    :cond_3
    sget v2, Lcom/samsung/android/sdk/ppmt/R$id;->flipper_expanded_icon:I

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_5

    .line 305
    :cond_4
    sget v2, Lcom/samsung/android/sdk/ppmt/R$id;->flipper_folded_icon:I

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 307
    :goto_5
    invoke-virtual {v3, p2, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    goto :goto_4

    :cond_5
    return-object v3

    .line 281
    :cond_6
    sget-object p1, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a:Ljava/lang/String;

    const-string p2, "fail to make notification. invalid flipper period, images"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;-><init>()V

    throw p1

    .line 273
    :cond_7
    sget-object p1, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a:Ljava/lang/String;

    const-string p2, "fail to make notification. flipper paths null"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method private a(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 394
    sget-object v0, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default channel - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "notification"

    .line 396
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 397
    new-instance v1, Landroid/app/NotificationChannel;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 v2, 0x4

    invoke-direct {v1, p3, p4, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p4, 0x0

    .line 398
    invoke-virtual {v1, p4, p4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 p4, 0x0

    .line 399
    invoke-virtual {v1, p4}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 400
    invoke-virtual {v1, p4}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 401
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 403
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object p1

    .line 404
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(ILjava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    const-string v0, "content_title"

    .line 158
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "content_text"

    .line 159
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const-string v2, "large_icon"

    .line 164
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_icon"

    const/4 v4, -0x1

    .line 165
    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    .line 166
    invoke-static {p1, v2, p3}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 168
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 169
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 170
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    return-void

    .line 161
    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a:Ljava/lang/String;

    const-string p2, "fail to build basic notification. invalid params"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method private a(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 3

    const-wide/16 v0, 0x0

    .line 408
    iput-wide v0, p2, Landroid/app/Notification;->when:J

    const/16 v0, 0x10

    .line 409
    iput v0, p2, Landroid/app/Notification;->flags:I

    .line 411
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 412
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->e()I

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    iput v1, p2, Landroid/app/Notification;->color:I

    .line 418
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    invoke-virtual {p2}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 419
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x2

    if-lt v1, v0, :cond_2

    .line 420
    iput v2, p2, Landroid/app/Notification;->priority:I

    :cond_2
    if-eqz p1, :cond_6

    .line 424
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object p1

    .line 425
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 426
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->c()[J

    move-result-object v0

    if-nez v0, :cond_3

    .line 428
    iget v0, p2, Landroid/app/Notification;->defaults:I

    or-int/2addr v0, v2

    iput v0, p2, Landroid/app/Notification;->defaults:I

    goto :goto_0

    .line 430
    :cond_3
    iput-object v0, p2, Landroid/app/Notification;->vibrate:[J

    .line 433
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 434
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a()Ljava/lang/String;

    move-result-object p1

    .line 435
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 436
    iget p1, p2, Landroid/app/Notification;->defaults:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p2, Landroid/app/Notification;->defaults:I

    goto :goto_1

    .line 438
    :cond_5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    :cond_6
    :goto_1
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 491
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    .line 493
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p1, "]"

    .line 497
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    sget-object p1, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(II)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v1, 0x3

    if-gt p1, v1, :cond_0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    return v0

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private b(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$IllegalPushChannelException;
        }
    .end annotation

    .line 339
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 340
    new-instance p2, Landroid/app/Notification$Builder;

    invoke-direct {p2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    return-object p2

    :cond_0
    const-string v0, "noti_channel"

    const/4 v1, -0x1

    .line 342
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    .line 343
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private b(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/widget/RemoteViews;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;
        }
    .end annotation

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p2, 0x1

    .line 240
    invoke-direct {p0, p1, p3, p2}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method private b(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$IllegalPushChannelException;
        }
    .end annotation

    .line 349
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    .line 351
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->g(Landroid/content/Context;)I

    move-result v1

    .line 352
    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->e(I)Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x1a

    if-eqz v3, :cond_1

    if-ge v1, v5, :cond_0

    return-object v4

    :cond_0
    packed-switch p2, :pswitch_data_0

    const/4 v2, 0x2

    .line 370
    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->e(I)Ljava/lang/String;

    move-result-object v2

    .line 371
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "ppmt_marketing_cid"

    .line 373
    sget v0, Lcom/samsung/android/sdk/ppmt/R$string;->chan_mkt:I

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a(Landroid/content/Context;ILjava/lang/String;I)V

    goto :goto_0

    :pswitch_0
    const-string v2, "ppmt_marketing_cid"

    .line 367
    sget v0, Lcom/samsung/android/sdk/ppmt/R$string;->chan_mkt:I

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a(Landroid/content/Context;ILjava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    const-string v2, "ppmt_notice_cid"

    .line 363
    sget v0, Lcom/samsung/android/sdk/ppmt/R$string;->chan_ntc:I

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a(Landroid/content/Context;ILjava/lang/String;I)V

    :cond_1
    :goto_0
    const-string p2, "notification"

    .line 380
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 381
    invoke-virtual {p1, v2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    if-nez p1, :cond_3

    if-ge v1, v5, :cond_2

    return-object v4

    .line 385
    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a:Ljava/lang/String;

    const-string p2, "cannot show noti : channel is not created"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$IllegalPushChannelException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$IllegalPushChannelException;-><init>()V

    throw p1

    :cond_3
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    .line 176
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V

    const-string v0, "content_text"

    .line 178
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "big_picture"

    .line 179
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 180
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 184
    invoke-static {v1}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 190
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-gt v2, v3, :cond_0

    .line 191
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 194
    :cond_0
    new-instance p1, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {p1}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 195
    invoke-virtual {p1, v1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    .line 196
    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    .line 194
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    const-string p1, "sub_content_text"

    .line 198
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 200
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_1
    return-void

    .line 186
    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a:Ljava/lang/String;

    const-string p2, "fail to decode bigPicture"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;-><init>()V

    throw p1

    .line 181
    :cond_3
    sget-object p1, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a:Ljava/lang/String;

    const-string p2, "fail to build bigpicture notification. invalid map"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method private c(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    .line 207
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V

    const-string p1, "content_text"

    .line 209
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 216
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 217
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    .line 216
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    const-string p1, "sub_content_text"

    .line 219
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_0
    return-void

    .line 212
    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a:Ljava/lang/String;

    const-string p2, "fail to build bigtext notification. invalid map"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;)V
    .locals 3

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 49
    sget-object p2, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a:Ljava/lang/String;

    const-string v1, "fail to display. data null"

    invoke-static {p2, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object p2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p3, p1, p2, v0}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    .line 54
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a(Landroid/os/Bundle;)V

    const-string v1, "displayid"

    const/4 v2, -0x1

    .line 56
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_1

    .line 58
    sget-object p2, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a:Ljava/lang/String;

    const-string v1, "fail to display. invalid displayid"

    invoke-static {p2, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object p2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p3, p1, p2, v0}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    .line 64
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/app/Notification;

    move-result-object p2

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a(Landroid/content/Context;Landroid/app/Notification;)V

    const-string v2, "notification"

    .line 68
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 69
    invoke-virtual {v2, v1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 70
    invoke-virtual {p3, p1}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$IllegalPushChannelException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    sget-object p2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p3, p1, p2, v0}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :catch_1
    sget-object p2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v0, "img_decode_fail"

    invoke-virtual {p3, p1, p2, v0}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :catch_2
    sget-object p2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->PUSH_CHANNEL_NOT_CREATED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p3, p1, p2, v0}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :catch_3
    sget-object p2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->UNSUPPORTED_CARD_TYPE:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p3, p1, p2, v0}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;I)Z
    .locals 3

    .line 504
    sget-object v0, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear notification in the noti bar. displayId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "notification"

    .line 510
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 511
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

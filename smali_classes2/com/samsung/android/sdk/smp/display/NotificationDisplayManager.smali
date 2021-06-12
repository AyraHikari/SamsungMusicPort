.class public Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;
.super Lcom/samsung/android/sdk/smp/display/DisplayManager;
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

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/display/DisplayManager;-><init>()V

    return-void
.end method

.method private a(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 339
    sget p1, Lcom/samsung/android/sdk/smp/R$id;->viewflipper:I

    return p1

    .line 337
    :pswitch_0
    sget p1, Lcom/samsung/android/sdk/smp/R$id;->viewflipper_anim3:I

    return p1

    .line 335
    :pswitch_1
    sget p1, Lcom/samsung/android/sdk/smp/R$id;->viewflipper_anim2:I

    return p1

    .line 333
    :pswitch_2
    sget p1, Lcom/samsung/android/sdk/smp/R$id;->viewflipper_anim1:I

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

    .line 279
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    .line 280
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->a(Landroid/content/Context;)I

    move-result p1

    if-ne v0, p1, :cond_0

    .line 281
    sget p1, Lcom/samsung/android/sdk/smp/R$layout;->noti_banner_tablet:I

    return p1

    .line 283
    :cond_0
    sget p1, Lcom/samsung/android/sdk/smp/R$layout;->noti_banner:I

    return p1
.end method

.method private a(Landroid/content/Context;Z)I
    .locals 1

    if-eqz p2, :cond_0

    .line 345
    sget p1, Lcom/samsung/android/sdk/smp/R$layout;->expanded_viewflipper:I

    return p1

    .line 348
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p2, v0, :cond_1

    const/4 p2, 0x2

    .line 349
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->a(Landroid/content/Context;)I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 350
    sget p1, Lcom/samsung/android/sdk/smp/R$layout;->folded_viewflipper_tablet:I

    return p1

    .line 352
    :cond_1
    sget p1, Lcom/samsung/android/sdk/smp/R$layout;->folded_viewflipper:I

    return p1
.end method

.method private a(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Notification;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$ImageDecodingException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$IllegalPushChannelException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$AppIconNotfoundException;
        }
    .end annotation

    .line 137
    invoke-direct {p0, p1, p7}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->b(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 138
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0, p6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p6

    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-static {p5}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-static {p4}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p4

    .line 143
    invoke-virtual {p6, p4}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p6, p4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :goto_0
    const/4 p4, 0x1

    if-ne p2, p4, :cond_1

    .line 149
    invoke-direct {p0, p1, p6, p7}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V

    .line 152
    :cond_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x10

    if-ge p2, p4, :cond_2

    .line 153
    invoke-virtual {p6}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p2, 0x2

    if-eq p3, p2, :cond_4

    const/4 p2, 0x4

    if-eq p3, p2, :cond_3

    goto :goto_1

    .line 160
    :cond_3
    invoke-direct {p0, p1, p6, p7}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->c(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V

    goto :goto_1

    .line 157
    :cond_4
    invoke-direct {p0, p1, p6, p7}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->b(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V

    .line 164
    :goto_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x14

    if-lt p2, p3, :cond_5

    .line 165
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 167
    invoke-virtual {p6, p1}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 171
    :cond_5
    invoke-virtual {p6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/app/Notification;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$ImageDecodingException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$NotSupportedTypeException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$IllegalPushChannelException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$AppIconNotfoundException;
        }
    .end annotation

    const-string v0, "f_type"

    const/4 v1, -0x1

    .line 99
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "e_type"

    .line 100
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 101
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/marketing/MarketingData$Notification;->a(II)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "mid"

    .line 105
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ticker"

    .line 106
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 107
    invoke-static {}, Lcom/samsung/android/sdk/smp/SmpConfiguration;->a()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/smp/SmpConfiguration;->a()I

    move-result v3

    :goto_0
    move v6, v3

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->c(Landroid/content/Context;)I

    move-result v3

    goto :goto_0

    .line 108
    :goto_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    const-string v3, "small_icon"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object v7, v3

    goto :goto_3

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :goto_3
    const-string v3, "click_link"

    .line 109
    invoke-static {p2, v3}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 110
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_4

    .line 114
    invoke-direct {p0, p1, v2, p3, v3}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a(Landroid/content/Context;Ljava/lang/String;ILjava/util/ArrayList;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 115
    invoke-direct {p0, p1, v2, p3}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object p3

    move-object v2, p0

    move-object v3, p1

    move v4, v0

    move v5, v1

    move-object v9, p2

    .line 117
    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Notification;

    move-result-object v2

    .line 119
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 121
    iput-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 123
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_3

    .line 124
    invoke-direct {p0, p1, v1, p2}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->b(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/widget/RemoteViews;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 126
    iput-object p1, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 129
    :cond_3
    iput-object v10, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 130
    iput-object p3, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object v2

    .line 111
    :cond_4
    sget-object p1, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a:Ljava/lang/String;

    const-string p2, "fail to get notification. invalid data"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1

    .line 102
    :cond_5
    sget-object p1, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a:Ljava/lang/String;

    const-string p2, "fail to get notification. not supported type"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 1

    const-string v0, "noti"

    .line 476
    invoke-static {p1, p2, v0}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v0, 0x8000000

    .line 478
    invoke-static {p1, p3, p2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;ILjava/util/ArrayList;)Landroid/app/PendingIntent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    const-string v0, "noti"

    .line 469
    invoke-static {p1, p2, v0, p4}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object p2

    const/high16 p4, 0x8000000

    .line 471
    invoke-static {p1, p3, p2, p4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 483
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 484
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 485
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 487
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le p1, v1, :cond_0

    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_0
    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 489
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int v0, v0, p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    const/4 v1, 0x1

    .line 492
    :try_start_0
    invoke-static {p2, p1, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p2
.end method

.method private static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 549
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 550
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 553
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 554
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 555
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 556
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/widget/RemoteViews;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$ImageDecodingException;
        }
    .end annotation

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    const/4 p2, 0x0

    .line 249
    invoke-direct {p0, p1, p3, p2}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1

    .line 247
    :pswitch_1
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/widget/RemoteViews;

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
            Lcom/samsung/android/sdk/smp/exception/InternalException$ImageDecodingException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;
        }
    .end annotation

    const-string v0, "banner"

    .line 265
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 271
    invoke-static {p2}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 273
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a(Landroid/content/Context;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 274
    sget p1, Lcom/samsung/android/sdk/smp/R$id;->banner_icon:I

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    return-object v0

    .line 267
    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a:Ljava/lang/String;

    const-string p2, "fail to make notification. banner path null"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method private a(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/widget/RemoteViews;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$ImageDecodingException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;
        }
    .end annotation

    if-eqz p3, :cond_0

    const-string v0, "e_flip_path"

    .line 289
    :goto_0
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v0, "f_flip_path"

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_7

    .line 294
    invoke-static {v0}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p3, :cond_1

    const-string v1, "e_flip_period"

    .line 295
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    :cond_1
    const-string v1, "f_flip_period"

    .line 296
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_2
    if-lez v1, :cond_6

    .line 298
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    const-string v3, "e_flip_anim"

    .line 304
    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_3

    :cond_2
    const-string v3, "f_flip_anim"

    .line 305
    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 306
    :goto_3
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a(I)I

    move-result p2

    .line 308
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/samsung/android/sdk/smp/R$layout;->noti_viewflipper:I

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 309
    invoke-virtual {v3, p2, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v2, "setFlipInterval"

    .line 310
    invoke-virtual {v3, p2, v2, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 312
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 313
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 314
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a(Landroid/content/Context;Z)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    if-eqz p3, :cond_4

    .line 317
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-gt v2, v4, :cond_3

    .line 318
    sget v2, Lcom/samsung/android/sdk/smp/R$id;->flipper_expanded_icon:I

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v4}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_5

    .line 320
    :cond_3
    sget v2, Lcom/samsung/android/sdk/smp/R$id;->flipper_expanded_icon:I

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_5

    .line 323
    :cond_4
    sget v2, Lcom/samsung/android/sdk/smp/R$id;->flipper_folded_icon:I

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 325
    :goto_5
    invoke-virtual {v3, p2, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    goto :goto_4

    :cond_5
    return-object v3

    .line 299
    :cond_6
    sget-object p1, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a:Ljava/lang/String;

    const-string p2, "fail to make notification. invalid flipper period, images"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$ImageDecodingException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$ImageDecodingException;-><init>()V

    throw p1

    .line 291
    :cond_7
    sget-object p1, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a:Ljava/lang/String;

    const-string p2, "fail to make notification. flipper paths null"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method private a(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 417
    sget-object v0, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default channel - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "notification"

    .line 419
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 420
    new-instance v1, Landroid/app/NotificationChannel;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 v2, 0x4

    invoke-direct {v1, p3, p4, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p4, 0x0

    .line 421
    invoke-virtual {v1, p4, p4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 p4, 0x0

    .line 422
    invoke-virtual {v1, p4}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 423
    invoke-virtual {v1, p4}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 424
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 426
    new-instance p4, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {p4, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    .line 427
    invoke-virtual {p4, p2, p3}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(ILjava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$ImageDecodingException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$AppIconNotfoundException;
        }
    .end annotation

    const-string v0, "content_title"

    .line 177
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "content_text"

    .line 178
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const-string v2, "large_icon"

    .line 183
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 184
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->d(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 186
    :goto_0
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 187
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 188
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    return-void

    .line 180
    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a:Ljava/lang/String;

    const-string p2, "fail to build basic notification. invalid params"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method private a(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 3

    const-wide/16 v0, 0x0

    .line 431
    iput-wide v0, p2, Landroid/app/Notification;->when:J

    const/16 v0, 0x10

    .line 432
    iput v0, p2, Landroid/app/Notification;->flags:I

    .line 434
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 435
    new-instance v1, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->r()I

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    iput v1, p2, Landroid/app/Notification;->color:I

    .line 441
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    invoke-virtual {p2}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 442
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x2

    if-lt v1, v0, :cond_2

    .line 443
    iput v2, p2, Landroid/app/Notification;->priority:I

    :cond_2
    if-eqz p1, :cond_6

    .line 447
    new-instance v0, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    .line 448
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->q()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 449
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->p()[J

    move-result-object p1

    if-nez p1, :cond_3

    .line 451
    iget p1, p2, Landroid/app/Notification;->defaults:I

    or-int/2addr p1, v2

    iput p1, p2, Landroid/app/Notification;->defaults:I

    goto :goto_0

    .line 453
    :cond_3
    iput-object p1, p2, Landroid/app/Notification;->vibrate:[J

    .line 456
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->o()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 457
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->n()Ljava/lang/String;

    move-result-object p1

    .line 458
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 459
    iget p1, p2, Landroid/app/Notification;->defaults:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p2, Landroid/app/Notification;->defaults:I

    goto :goto_1

    .line 461
    :cond_5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    :cond_6
    :goto_1
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 500
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    .line 502
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 504
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p1, "]"

    .line 506
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    sget-object p1, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$IllegalPushChannelException;
        }
    .end annotation

    .line 357
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 358
    new-instance p2, Landroid/app/Notification$Builder;

    invoke-direct {p2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    return-object p2

    :cond_0
    const-string v0, "noti_channel"

    const/4 v1, -0x1

    .line 360
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    .line 361
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private b(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/widget/RemoteViews;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$ImageDecodingException;
        }
    .end annotation

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p2, 0x1

    .line 258
    invoke-direct {p0, p1, p3, p2}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .line 367
    new-instance v0, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->s()Ljava/lang/String;

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
            Lcom/samsung/android/sdk/smp/exception/InternalException$IllegalPushChannelException;
        }
    .end annotation

    .line 372
    new-instance v0, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    .line 374
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->g(Landroid/content/Context;)I

    move-result v1

    .line 375
    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 377
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

    .line 393
    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 394
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "ppmt_marketing_cid"

    .line 396
    sget v0, Lcom/samsung/android/sdk/smp/R$string;->chan_mkt:I

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a(Landroid/content/Context;ILjava/lang/String;I)V

    goto :goto_0

    :pswitch_0
    const-string v2, "ppmt_marketing_cid"

    .line 390
    sget v0, Lcom/samsung/android/sdk/smp/R$string;->chan_mkt:I

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a(Landroid/content/Context;ILjava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    const-string v2, "ppmt_notice_cid"

    .line 386
    sget v0, Lcom/samsung/android/sdk/smp/R$string;->chan_ntc:I

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a(Landroid/content/Context;ILjava/lang/String;I)V

    :cond_1
    :goto_0
    const-string p2, "notification"

    .line 403
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 404
    invoke-virtual {p1, v2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    if-nez p1, :cond_3

    if-ge v1, v5, :cond_2

    return-object v4

    .line 408
    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a:Ljava/lang/String;

    const-string p2, "cannot show noti : channel is not created"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$IllegalPushChannelException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$IllegalPushChannelException;-><init>()V

    throw p1

    :cond_3
    return-object v2

    nop

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
            Lcom/samsung/android/sdk/smp/exception/InternalException$ImageDecodingException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$AppIconNotfoundException;
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V

    const-string v0, "content_text"

    .line 196
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "big_picture"

    .line 197
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 198
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 202
    invoke-static {v1}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 208
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-gt v2, v3, :cond_0

    .line 209
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 212
    :cond_0
    new-instance p1, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {p1}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 213
    invoke-virtual {p1, v1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    .line 214
    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    .line 212
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    const-string p1, "sub_content_text"

    .line 216
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 218
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_1
    return-void

    .line 204
    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a:Ljava/lang/String;

    const-string p2, "fail to decode bigPicture"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$ImageDecodingException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$ImageDecodingException;-><init>()V

    throw p1

    .line 199
    :cond_3
    sget-object p1, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a:Ljava/lang/String;

    const-string p2, "fail to build bigpicture notification. invalid map"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method private static c(Landroid/content/Context;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$AppIconNotfoundException;
        }
    .end annotation

    .line 526
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 527
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-ltz v0, :cond_0

    .line 530
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->icon:I

    return p0

    .line 528
    :cond_0
    new-instance p0, Lcom/samsung/android/sdk/smp/exception/InternalException$AppIconNotfoundException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/exception/InternalException$AppIconNotfoundException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 532
    sget-object v0, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    new-instance p0, Lcom/samsung/android/sdk/smp/exception/InternalException$AppIconNotfoundException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/exception/InternalException$AppIconNotfoundException;-><init>()V

    throw p0
.end method

.method private c(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$ImageDecodingException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$AppIconNotfoundException;
        }
    .end annotation

    .line 225
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V

    const-string p1, "content_text"

    .line 227
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 234
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 235
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    .line 234
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    const-string p1, "sub_content_text"

    .line 237
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 239
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_0
    return-void

    .line 230
    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a:Ljava/lang/String;

    const-string p2, "fail to build bigtext notification. invalid map"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method private static d(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$AppIconNotfoundException;
        }
    .end annotation

    .line 539
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 540
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 541
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 543
    sget-object v0, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    new-instance p0, Lcom/samsung/android/sdk/smp/exception/InternalException$AppIconNotfoundException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/exception/InternalException$AppIconNotfoundException;-><init>()V

    throw p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;)V
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 52
    sget-object p2, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a:Ljava/lang/String;

    const-string v1, "fail to display. data null"

    invoke-static {p2, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object p2, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-virtual {p3, p1, p2, v0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    .line 57
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a(Landroid/os/Bundle;)V

    const-string v1, "displayid"

    const/4 v2, -0x1

    .line 59
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_1

    .line 61
    sget-object p2, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a:Ljava/lang/String;

    const-string v1, "fail to display. invalid displayid"

    invoke-static {p2, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object p2, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-virtual {p3, p1, p2, v0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    .line 67
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/app/Notification;

    move-result-object v2

    .line 68
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a(Landroid/content/Context;Landroid/app/Notification;)V

    const-string v3, "notification"

    .line 71
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 72
    invoke-virtual {v3, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 73
    invoke-virtual {p3, p1}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->a(Landroid/content/Context;)V

    const-string v1, "content_title"

    .line 76
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "ticker"

    .line 78
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object v6, v1

    const-string v1, "link_uris"

    .line 80
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const-string v2, "display"

    const-string v3, "noti"

    .line 82
    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->c()Z

    move-result v5

    move-object v1, p1

    .line 81
    invoke-static/range {v1 .. v7}, Lcom/samsung/android/sdk/smp/common/BroadcastUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$NotSupportedTypeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$IllegalPushChannelException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$ImageDecodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$AppIconNotfoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    sget-object p2, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-virtual {p3, p1, p2, v0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :catch_1
    sget-object p2, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const-string v0, "app_icon_not_cound"

    invoke-virtual {p3, p1, p2, v0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p2

    .line 88
    sget-object v0, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object p2, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const-string v0, "img_decode_fail"

    invoke-virtual {p3, p1, p2, v0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :catch_3
    sget-object p2, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->PUSH_CHANNEL_NOT_CREATED:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-virtual {p3, p1, p2, v0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :catch_4
    sget-object p2, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->UNSUPPORTED_TYPE:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-virtual {p3, p1, p2, v0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;I)Z
    .locals 3

    .line 513
    sget-object v0, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear notification in the noti bar. displayId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    const-string v0, "notification"

    .line 515
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    if-eqz p1, :cond_0

    .line 517
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.class public Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;


# static fields
.field private static c:Z


# instance fields
.field protected final a:Landroid/content/Context;

.field protected b:I

.field private final d:Landroid/widget/RemoteViews;

.field private e:I

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 90
    iput v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b:I

    const/4 v0, 0x0

    .line 92
    iput v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->e:I

    .line 101
    iput-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a:Landroid/content/Context;

    .line 102
    iput p3, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->f:I

    .line 103
    iget p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->f:I

    const/16 p3, 0x66

    if-ne p1, p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->c:Z

    .line 104
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object p1

    .line 105
    new-instance p3, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    .line 106
    iget-object p2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    const p3, 0x7f130056

    iget v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->f:I

    .line 107
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getTogglePausePendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 108
    iget-object p2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    iget p3, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->f:I

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getPrevPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object p3

    const v0, 0x7f130059

    invoke-virtual {p2, v0, p3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 109
    iget-object p2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    iget p3, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->f:I

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getNextPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object p1

    const p3, 0x7f130050

    invoke-virtual {p2, p3, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 110
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    iget-object p2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a:Landroid/content/Context;

    const v1, 0x7f0b0405

    .line 111
    invoke-static {p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    .line 110
    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 112
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    iget-object p2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a:Landroid/content/Context;

    const v0, 0x7f0b03fd

    .line 113
    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    .line 112
    invoke-virtual {p1, p3, p2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    const/4 p1, 0x5

    .line 115
    iput p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->e:I

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;)V
    .locals 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 90
    iput v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b:I

    const/4 v0, 0x0

    .line 92
    iput v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->e:I

    .line 119
    iget-object v0, p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a:Landroid/content/Context;

    .line 120
    iget v0, p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->f:I

    iput v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->f:I

    .line 121
    iget-object v0, p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object p1, p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    .line 123
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-MediaCenter"

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 p1, 0x1

    .line 279
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b(I)V

    .line 280
    sget-boolean p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->c:Z

    if-eqz p1, :cond_0

    const-string p1, "setViewVisibility"

    .line 281
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public a(IZ)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 311
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    const-string v1, "setEnabled"

    invoke-virtual {v0, p1, v1, p2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    const/4 p1, 0x1

    .line 312
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b(I)V

    .line 313
    sget-boolean p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->c:Z

    if-eqz p1, :cond_0

    const-string p1, "setEnabled"

    .line 314
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 4

    .line 157
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f130070

    const v2, 0x7f13019a

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 160
    iget-object v3, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    invoke-virtual {v3, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 162
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 p1, 0x3

    .line 163
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b(I)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a:Landroid/content/Context;

    .line 166
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b02c0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 167
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    const/4 v0, 0x4

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 p1, 0x2

    .line 168
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b(I)V

    .line 170
    :goto_0
    sget-boolean p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->c:Z

    if-eqz p1, :cond_1

    const-string p1, "setMeta"

    .line 171
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public a(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 3

    const v0, 0x7f130056

    const v1, 0x7f130057

    if-eqz p1, :cond_0

    .line 213
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    const v2, 0x7f020347

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 215
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a:Landroid/content/Context;

    const v2, 0x7f0b0401

    .line 216
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    const v2, 0x7f020348

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 220
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a:Landroid/content/Context;

    const v2, 0x7f0b0403

    .line 221
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    :goto_0
    const/4 p1, 0x2

    .line 223
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b(I)V

    .line 224
    sget-boolean p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->c:Z

    if-eqz p1, :cond_1

    const-string p1, "setPlayStatus"

    .line 225
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method protected final a(IFFFIF)V
    .locals 7

    .line 445
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 446
    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/music/support/android/widget/RemoteViewsCompat;->addOuterShadowTextEffect(Landroid/widget/RemoteViews;IFFFIF)V

    const/4 p1, 0x1

    .line 448
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b(I)V

    .line 449
    sget-boolean p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->c:Z

    if-eqz p1, :cond_0

    const-string p1, "addOuterShadowTextEffect"

    .line 450
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final a(IFIF)V
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/support/android/widget/RemoteViewsCompat;->addStrokeTextEffect(Landroid/widget/RemoteViews;IFIF)V

    const/4 p1, 0x1

    .line 437
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b(I)V

    .line 438
    sget-boolean p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->c:Z

    if-eqz p1, :cond_0

    const-string p1, "addStrokeTextEffect"

    .line 439
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final a(IIF)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    const/4 p1, 0x1

    .line 376
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b(I)V

    .line 377
    sget-boolean p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->c:Z

    if-eqz p1, :cond_0

    const-string p1, "setTextViewTextSize"

    .line 378
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final a(ILandroid/app/PendingIntent;)V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/4 p1, 0x1

    .line 395
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b(I)V

    .line 396
    sget-boolean p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->c:Z

    if-eqz p1, :cond_0

    const-string p1, "setOnClickPendingIntent"

    .line 397
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final a(ILandroid/graphics/Bitmap;)V
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    .line 420
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b(I)V

    .line 421
    sget-boolean p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->c:Z

    if-eqz p1, :cond_0

    const-string p1, "setImageViewBitmap"

    .line 422
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final a(ILjava/lang/CharSequence;)V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 368
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b(I)V

    .line 369
    sget-boolean p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->c:Z

    if-eqz p1, :cond_0

    const-string p1, "setTextViewText"

    .line 370
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final a(ILjava/lang/String;I)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const/4 p1, 0x1

    .line 360
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b(I)V

    .line 361
    sget-boolean p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->c:Z

    if-eqz p1, :cond_0

    .line 362
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setInt "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 326
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    const-string v1, "setAlpha"

    invoke-virtual {v0, p1, v1, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const/4 p1, 0x1

    .line 327
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b(I)V

    .line 328
    sget-boolean p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->c:Z

    if-eqz p1, :cond_0

    const-string p1, "setImageAlpha"

    .line 329
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public b(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 2

    const v0, 0x7f130259

    if-nez p1, :cond_0

    .line 184
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    sget v1, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v0, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_0
    const/4 p1, 0x1

    .line 188
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b(I)V

    .line 189
    sget-boolean p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->c:Z

    if-eqz p1, :cond_1

    const-string p1, "setArtwork"

    .line 190
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public b(I)V
    .locals 1

    .line 355
    iget v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->e:I

    return-void
.end method

.method protected final b(ILjava/lang/CharSequence;)V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 412
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b(I)V

    .line 413
    sget-boolean p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->c:Z

    if-eqz p1, :cond_0

    const-string p1, "setContentDescription"

    .line 414
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public build()Landroid/widget/RemoteViews;
    .locals 3

    .line 133
    sget-boolean v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "SMUSIC-SV-MediaCenter"

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "build() mTag("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") remoteView action ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a:Landroid/content/Context;

    return-object v0
.end method

.method protected final c(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const/4 p1, 0x1

    .line 385
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b(I)V

    .line 386
    sget-boolean p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->c:Z

    if-eqz p1, :cond_0

    const-string p1, "setTextColor"

    .line 387
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public c(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    const v1, 0x7f130258

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    .line 198
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b(I)V

    .line 199
    sget-boolean p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->c:Z

    if-eqz p1, :cond_0

    const-string p1, "setBlurBackground"

    .line 200
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public d(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    const-string v1, "setSelected"

    const v2, 0x7f130070

    invoke-virtual {v0, v2, v1, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    const v1, 0x7f13019a

    const-string v2, "setSelected"

    invoke-virtual {v0, v1, v2, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const/4 p1, 0x2

    .line 270
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b(I)V

    .line 271
    sget-boolean p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->c:Z

    if-eqz p1, :cond_0

    const-string p1, "setTextsMarqueeEnabled"

    .line 272
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method protected final d(II)V
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const/4 p1, 0x1

    .line 428
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b(I)V

    .line 429
    sget-boolean p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->c:Z

    if-eqz p1, :cond_0

    const-string p1, "setImageViewResource"

    .line 430
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0xff

    goto :goto_0

    :cond_0
    const/16 v0, 0x66

    :goto_0
    const v1, 0x7f130051

    .line 238
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    const v0, 0x7f130050

    .line 239
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a(IZ)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    const/4 p1, 0x4

    .line 240
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b(I)V

    .line 241
    sget-boolean p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->c:Z

    if-eqz p1, :cond_1

    const-string p1, "setPrevNextButtonEnabled"

    .line 242
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public f(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d:Landroid/widget/RemoteViews;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    const v1, 0x7f13025c

    .line 255
    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 p1, 0x1

    .line 256
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b(I)V

    .line 257
    sget-boolean p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->c:Z

    if-eqz p1, :cond_1

    const-string p1, "setIsPrivate"

    .line 258
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public getUpdatedCount()I
    .locals 1

    .line 347
    iget v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->e:I

    return v0
.end method

.method public isOverMaxUpdatedCount()Z
    .locals 2

    .line 342
    iget v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->e:I

    iget v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic setArtwork(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setBlurBackground(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->c(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setIsPrivate(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->f(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setPlayStatus(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setTextsMarqueeEnabled(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object p1

    return-object p1
.end method

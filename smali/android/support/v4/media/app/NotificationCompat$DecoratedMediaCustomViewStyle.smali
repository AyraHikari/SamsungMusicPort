.class public Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;
.super Landroid/support/v4/media/app/NotificationCompat$MediaStyle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoratedMediaCustomViewStyle"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 379
    invoke-direct {p0}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;-><init>()V

    return-void
.end method

.method private setBackgroundColor(Landroid/widget/RemoteViews;)V
    .locals 3

    .line 496
    iget-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->getColor()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 497
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->getColor()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 498
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/mediacompat/R$color;->notification_material_background_media_default_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 500
    :goto_0
    sget v1, Landroid/support/mediacompat/R$id;->status_bar_latest_event_content:I

    const-string v2, "setBackgroundColor"

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 388
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 389
    invoke-interface {p1}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    invoke-direct {v0}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;-><init>()V

    .line 390
    invoke-virtual {p0, v0}, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->fillInMediaStyle(Landroid/app/Notification$MediaStyle;)Landroid/app/Notification$MediaStyle;

    move-result-object v0

    .line 389
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 392
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->apply(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)V

    :goto_0
    return-void
.end method

.method getBigContentViewLayoutResource(I)I
    .locals 1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 465
    sget p1, Landroid/support/mediacompat/R$layout;->notification_template_big_media_narrow_custom:I

    goto :goto_0

    :cond_0
    sget p1, Landroid/support/mediacompat/R$layout;->notification_template_big_media_custom:I

    :goto_0
    return p1
.end method

.method getContentViewLayoutResource()I
    .locals 1

    .line 433
    iget-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Landroid/support/mediacompat/R$layout;->notification_template_media_custom:I

    goto :goto_0

    .line 435
    :cond_0
    invoke-super {p0}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->getContentViewLayoutResource()I

    move-result v0

    :goto_0
    return v0
.end method

.method public makeBigContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 444
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-lt p1, v1, :cond_0

    return-object v0

    .line 448
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 449
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 450
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    return-object v0

    .line 455
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->generateBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 456
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 457
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_3

    .line 458
    invoke-direct {p0, v0}, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->setBackgroundColor(Landroid/widget/RemoteViews;)V

    :cond_3
    return-object v0
.end method

.method public makeContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 402
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-lt p1, v1, :cond_0

    return-object v0

    .line 406
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 407
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_5

    if-nez p1, :cond_2

    .line 411
    iget-object v3, p0, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 412
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;

    move-result-object v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_6

    .line 414
    invoke-virtual {p0}, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->generateContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz p1, :cond_4

    .line 416
    iget-object p1, p0, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 418
    :cond_4
    invoke-direct {p0, v0}, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->setBackgroundColor(Landroid/widget/RemoteViews;)V

    return-object v0

    .line 422
    :cond_5
    invoke-virtual {p0}, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->generateContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz p1, :cond_6

    .line 424
    iget-object p1, p0, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    return-object v1

    :cond_6
    return-object v0
.end method

.method public makeHeadsUpContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 476
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-lt p1, v1, :cond_0

    return-object v0

    .line 480
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 481
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 482
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    return-object v0

    .line 487
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->generateBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 488
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 489
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_3

    .line 490
    invoke-direct {p0, v0}, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->setBackgroundColor(Landroid/widget/RemoteViews;)V

    :cond_3
    return-object v0
.end method

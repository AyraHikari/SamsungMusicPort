.class public Landroid/support/v7/app/MediaRouteCastDialog;
.super Landroid/support/v7/app/AppCompatDialog;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;,
        Landroid/support/v7/app/MediaRouteCastDialog$MediaControllerCallback;,
        Landroid/support/v7/app/MediaRouteCastDialog$MediaRouterCallback;,
        Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;,
        Landroid/support/v7/app/MediaRouteCastDialog$VolumeChangeListener;
    }
.end annotation


# static fields
.field static final CONNECTION_TIMEOUT_MILLIS:I

.field static final MSG_UPDATE_ROUTES:I = 0x1

.field static final TAG:Ljava/lang/String; = "MediaRouteCastDialog"

.field private static final UPDATE_ROUTES_DELAY_MS:J = 0x12cL


# instance fields
.field private mAdapter:Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;

.field mArtIconBackgroundColor:I

.field mArtIconBitmap:Landroid/graphics/Bitmap;

.field mArtIconIsLoaded:Z

.field mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

.field mArtIconUri:Landroid/net/Uri;

.field private mArtView:Landroid/widget/ImageView;

.field private mAttachedToWindow:Z

.field private final mCallback:Landroid/support/v7/app/MediaRouteCastDialog$MediaRouterCallback;

.field private mCloseButton:Landroid/widget/ImageButton;

.field mContext:Landroid/content/Context;

.field mControllerCallback:Landroid/support/v7/app/MediaRouteCastDialog$MediaControllerCallback;

.field private mCreated:Z

.field mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

.field mFetchArtTask:Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;

.field private final mHandler:Landroid/os/Handler;

.field private mLastUpdateTime:J

.field mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

.field private mMetadataLayout:Landroid/widget/RelativeLayout;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field final mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

.field final mRouter:Landroid/support/v7/media/MediaRouter;

.field final mRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelector:Landroid/support/v7/media/MediaRouteSelector;

.field private mStopCastingButton:Landroid/widget/Button;

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitlePlaceholder:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;

.field mVolumeChangeListener:Landroid/support/v7/app/MediaRouteCastDialog$VolumeChangeListener;

.field mVolumeSliderColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 86
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Landroid/support/v7/app/MediaRouteCastDialog;->CONNECTION_TIMEOUT_MILLIS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/MediaRouteCastDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-static {p1, p2, v0}, Landroid/support/v7/app/MediaRouterThemeHelper;->createThemedDialogContext(Landroid/content/Context;IZ)Landroid/content/Context;

    move-result-object p1

    .line 143
    invoke-static {p1}, Landroid/support/v7/app/MediaRouterThemeHelper;->createThemedDialogStyle(Landroid/content/Context;)I

    move-result p2

    .line 142
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 94
    sget-object p1, Landroid/support/v7/media/MediaRouteSelector;->EMPTY:Landroid/support/v7/media/MediaRouteSelector;

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 96
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mRoutes:Ljava/util/List;

    .line 102
    new-instance p1, Landroid/support/v7/app/MediaRouteCastDialog$1;

    invoke-direct {p1, p0}, Landroid/support/v7/app/MediaRouteCastDialog$1;-><init>(Landroid/support/v7/app/MediaRouteCastDialog;)V

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mHandler:Landroid/os/Handler;

    .line 144
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteCastDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mContext:Landroid/content/Context;

    .line 146
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v7/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    .line 147
    new-instance p1, Landroid/support/v7/app/MediaRouteCastDialog$MediaRouterCallback;

    invoke-direct {p1, p0}, Landroid/support/v7/app/MediaRouteCastDialog$MediaRouterCallback;-><init>(Landroid/support/v7/app/MediaRouteCastDialog;)V

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mCallback:Landroid/support/v7/app/MediaRouteCastDialog$MediaRouterCallback;

    .line 148
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 149
    new-instance p1, Landroid/support/v7/app/MediaRouteCastDialog$MediaControllerCallback;

    invoke-direct {p1, p0}, Landroid/support/v7/app/MediaRouteCastDialog$MediaControllerCallback;-><init>(Landroid/support/v7/app/MediaRouteCastDialog;)V

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mControllerCallback:Landroid/support/v7/app/MediaRouteCastDialog$MediaControllerCallback;

    .line 150
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter;->getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteCastDialog;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-void
.end method

.method static isBitmapRecycled(Landroid/graphics/Bitmap;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 366
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isIconChanged()Z
    .locals 5

    .line 401
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 402
    :goto_0
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    .line 403
    :goto_1
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mFetchArtTask:Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mArtIconBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_2
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mFetchArtTask:Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;

    invoke-virtual {v2}, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 404
    :goto_2
    iget-object v3, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mFetchArtTask:Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mArtIconUri:Landroid/net/Uri;

    goto :goto_3

    :cond_3
    iget-object v3, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mFetchArtTask:Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;

    invoke-virtual {v3}, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->getIconUri()Landroid/net/Uri;

    move-result-object v3

    :goto_3
    const/4 v4, 0x1

    if-eq v2, v0, :cond_4

    return v4

    :cond_4
    if-nez v2, :cond_5

    .line 407
    invoke-static {v3, v1}, Landroid/support/v4/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v4

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 3

    .line 161
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mControllerCallback:Landroid/support/v7/app/MediaRouteCastDialog$MediaControllerCallback;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 163
    iput-object v1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 168
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mAttachedToWindow:Z

    if-nez v0, :cond_2

    return-void

    .line 172
    :cond_2
    :try_start_0
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MediaRouteCastDialog"

    const-string v2, "Error creating media controller in setMediaSession."

    .line 174
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    :goto_0
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz p1, :cond_3

    .line 177
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mControllerCallback:Landroid/support/v7/app/MediaRouteCastDialog$MediaControllerCallback;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 179
    :cond_3
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-nez p1, :cond_4

    move-object p1, v1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 180
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_5

    goto :goto_2

    .line 181
    :cond_5
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 182
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteCastDialog;->updateArtIconIfNeeded()V

    .line 183
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteCastDialog;->update()V

    return-void
.end method

.method private updateMetadataLayout()V
    .locals 4

    .line 414
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 415
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 417
    iget-object v3, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 418
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v2, :cond_2

    .line 421
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 423
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mTitlePlaceholder:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    if-eqz v3, :cond_3

    .line 426
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mSubtitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 429
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mSubtitleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void
.end method


# virtual methods
.method clearLoadedBitmap()V
    .locals 2

    const/4 v0, 0x0

    .line 390
    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mArtIconIsLoaded:Z

    const/4 v1, 0x0

    .line 391
    iput-object v1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    .line 392
    iput v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mArtIconBackgroundColor:I

    return-void
.end method

.method getDesiredArtHeight(II)I
    .locals 0

    .line 371
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mArtView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    return p1
.end method

.method public getMediaSession()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .line 192
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getRouteSelector()Landroid/support/v7/media/MediaRouteSelector;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 202
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 318
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDialog;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 319
    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mAttachedToWindow:Z

    .line 321
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mCallback:Landroid/support/v7/app/MediaRouteCastDialog$MediaRouterCallback;

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;I)V

    .line 322
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteCastDialog;->refreshRoutes()V

    .line 323
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/MediaRouteCastDialog;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 261
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 263
    sget p1, Landroid/support/v7/mediarouter/R$layout;->mr_cast_dialog:I

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteCastDialog;->setContentView(I)V

    .line 265
    sget p1, Landroid/support/v7/mediarouter/R$id;->mr_cast_close_button:I

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteCastDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mCloseButton:Landroid/widget/ImageButton;

    .line 266
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mCloseButton:Landroid/widget/ImageButton;

    new-instance v0, Landroid/support/v7/app/MediaRouteCastDialog$2;

    invoke-direct {v0, p0}, Landroid/support/v7/app/MediaRouteCastDialog$2;-><init>(Landroid/support/v7/app/MediaRouteCastDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    sget p1, Landroid/support/v7/mediarouter/R$id;->mr_cast_stop_button:I

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteCastDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mStopCastingButton:Landroid/widget/Button;

    .line 273
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mStopCastingButton:Landroid/widget/Button;

    new-instance v0, Landroid/support/v7/app/MediaRouteCastDialog$3;

    invoke-direct {v0, p0}, Landroid/support/v7/app/MediaRouteCastDialog$3;-><init>(Landroid/support/v7/app/MediaRouteCastDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    new-instance p1, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;

    invoke-direct {p1, p0}, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;-><init>(Landroid/support/v7/app/MediaRouteCastDialog;)V

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mAdapter:Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;

    .line 284
    sget p1, Landroid/support/v7/mediarouter/R$id;->mr_cast_list:I

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteCastDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 285
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mAdapter:Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 286
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 287
    new-instance p1, Landroid/support/v7/app/MediaRouteCastDialog$VolumeChangeListener;

    invoke-direct {p1, p0}, Landroid/support/v7/app/MediaRouteCastDialog$VolumeChangeListener;-><init>(Landroid/support/v7/app/MediaRouteCastDialog;)V

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mVolumeChangeListener:Landroid/support/v7/app/MediaRouteCastDialog$VolumeChangeListener;

    .line 288
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/app/MediaRouterThemeHelper;->getControllerColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mVolumeSliderColor:I

    .line 290
    sget p1, Landroid/support/v7/mediarouter/R$id;->mr_cast_meta:I

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteCastDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mMetadataLayout:Landroid/widget/RelativeLayout;

    .line 291
    sget p1, Landroid/support/v7/mediarouter/R$id;->mr_cast_meta_art:I

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteCastDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mArtView:Landroid/widget/ImageView;

    .line 292
    sget p1, Landroid/support/v7/mediarouter/R$id;->mr_cast_meta_title:I

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteCastDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mTitleView:Landroid/widget/TextView;

    .line 293
    sget p1, Landroid/support/v7/mediarouter/R$id;->mr_cast_meta_subtitle:I

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteCastDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mSubtitleView:Landroid/widget/TextView;

    .line 294
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 295
    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_cast_dialog_title_view_placeholder:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mTitlePlaceholder:Ljava/lang/String;

    const/4 p1, 0x1

    .line 297
    iput-boolean p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mCreated:Z

    .line 298
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteCastDialog;->updateLayout()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 328
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDialog;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 329
    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mAttachedToWindow:Z

    .line 331
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mCallback:Landroid/support/v7/app/MediaRouteCastDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    .line 332
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 333
    invoke-direct {p0, v0}, Landroid/support/v7/app/MediaRouteCastDialog;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-void
.end method

.method public onFilterRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z
    .locals 1
    .param p1    # Landroid/support/v7/media/MediaRouter$RouteInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 255
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 256
    invoke-virtual {p1, v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->matchesSelector(Landroid/support/v7/media/MediaRouteSelector;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onFilterRoutes(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;)V"
        }
    .end annotation

    .line 236
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 237
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, v1}, Landroid/support/v7/app/MediaRouteCastDialog;->onFilterRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public refreshRoutes()V
    .locals 7

    .line 455
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mAttachedToWindow:Z

    if-eqz v0, :cond_1

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 457
    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteCastDialog;->onFilterRoutes(Ljava/util/List;)V

    .line 458
    sget-object v1, Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;->sInstance:Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 459
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mLastUpdateTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 460
    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteCastDialog;->updateRoutes(Ljava/util/List;)V

    goto :goto_0

    .line 462
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 463
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-wide v5, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mLastUpdateTime:J

    add-long/2addr v5, v3

    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V
    .locals 3
    .param p1    # Landroid/support/v7/media/MediaRouteSelector;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    .line 215
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 218
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mCallback:Landroid/support/v7/app/MediaRouteCastDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    .line 220
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mCallback:Landroid/support/v7/app/MediaRouteCastDialog$MediaRouterCallback;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;I)V

    .line 223
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteCastDialog;->refreshRoutes()V

    :cond_1
    return-void

    .line 212
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method update()V
    .locals 3

    .line 337
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 341
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mCreated:Z

    if-nez v0, :cond_1

    return-void

    .line 345
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mArtIconIsLoaded:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    .line 346
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/support/v7/app/MediaRouteCastDialog;->isBitmapRecycled(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mArtView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "MediaRouteCastDialog"

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set artwork image with recycled bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 350
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mArtView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mArtView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 352
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mArtView:Landroid/widget/ImageView;

    iget v1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mArtIconBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 353
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mMetadataLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteCastDialog;->clearLoadedBitmap()V

    goto :goto_1

    .line 359
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mArtView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    :goto_1
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteCastDialog;->updateMetadataLayout()V

    return-void

    .line 338
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteCastDialog;->dismiss()V

    return-void
.end method

.method updateArtIconIfNeeded()V
    .locals 2

    .line 375
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteCastDialog;->isIconChanged()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mFetchArtTask:Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mFetchArtTask:Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->cancel(Z)Z

    .line 381
    :cond_1
    new-instance v0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;

    invoke-direct {v0, p0}, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;-><init>(Landroid/support/v7/app/MediaRouteCastDialog;)V

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mFetchArtTask:Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;

    .line 382
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mFetchArtTask:Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method updateLayout()V
    .locals 2

    .line 307
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteCastDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    const/4 v0, 0x0

    .line 310
    iput-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mArtIconBitmap:Landroid/graphics/Bitmap;

    .line 311
    iput-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mArtIconUri:Landroid/net/Uri;

    .line 312
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteCastDialog;->updateArtIconIfNeeded()V

    .line 313
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteCastDialog;->update()V

    return-void
.end method

.method updateRoutes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;)V"
        }
    .end annotation

    .line 470
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mLastUpdateTime:J

    .line 471
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 472
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 473
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog;->mAdapter:Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;

    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;->setItems()V

    return-void
.end method

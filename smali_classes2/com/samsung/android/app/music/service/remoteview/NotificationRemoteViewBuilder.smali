.class Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->b:Landroid/content/Context;

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->a(Landroid/content/Context;I)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->c:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    return-void
.end method

.method private a()Landroid/graphics/Bitmap;
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1006bd

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f1006bc

    .line 121
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 122
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->d:Landroid/graphics/Bitmap;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)Landroid/graphics/Bitmap;
    .locals 6

    .line 109
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 110
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->b()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    const/4 v3, 0x2

    .line 112
    new-array v3, v3, [I

    iget v4, p1, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorA:I

    const/4 v5, 0x0

    aput v4, v3, v5

    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorB:I

    const/4 v4, 0x1

    aput p1, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 113
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;I)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;
    .locals 3
    .param p2    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 66
    sget-object v0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->a:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    if-nez v0, :cond_1

    .line 67
    const-class v0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->a:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;-><init>(Landroid/content/Context;ILcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$1;)V

    sput-object v1, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->a:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    .line 71
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 73
    :cond_1
    :goto_0
    sget-object p1, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->a:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->a(Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->a()Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;
    .locals 2

    .line 49
    new-instance v0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;

    const v1, 0x7f0401db

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method private b()Landroid/graphics/drawable/GradientDrawable;
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->e:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->e:Landroid/graphics/drawable/GradientDrawable;

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->e:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1006bd

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f1006bc

    .line 133
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 134
    iget-object v2, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->e:Landroid/graphics/drawable/GradientDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->e:Landroid/graphics/drawable/GradientDrawable;

    const v1, 0x3f333333    # 0.7f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->e:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method


# virtual methods
.method public build()Landroid/widget/RemoteViews;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->c:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public getUpdatedCount()I
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->c:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->getUpdatedCount()I

    move-result v0

    return v0
.end method

.method public isOverMaxUpdatedCount()Z
    .locals 2

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->getUpdatedCount()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAlbumViewVisibility(I)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->c:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->a(I)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    return-object p0
.end method

.method public setArtwork(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->c:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->a(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    return-object p0
.end method

.method public setBackground(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->c:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    const v1, 0x7f1304cc

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->a(ILandroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public setBlurBackground(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->c:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->c(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    return-object p0
.end method

.method public setBrandName()Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->c:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->b()Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    return-object p0
.end method

.method public setIsPrivate(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->c:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->f(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    return-object p0
.end method

.method public setIsRemotePlayer(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->c:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    const v1, 0x7f1304cf

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->a(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    return-object p0
.end method

.method public setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->c:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    return-object p0
.end method

.method public setPlayStatus(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->c:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->b(Z)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    return-object p0
.end method

.method public setTextsMarqueeEnabled(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->c:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->c(Z)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    return-object p0
.end method

.method public setTintColor(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->a(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->setBackground(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    move-result-object p1

    return-object p1
.end method

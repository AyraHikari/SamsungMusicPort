.class public Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;
.super Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;
.source "SourceFile"


# static fields
.field private static c:Z


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Landroid/graphics/Bitmap;

.field private g:I

.field private h:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->c:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;-><init>(I)V

    const-string p1, "setImageView"

    .line 20
    iput-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->d:Ljava/lang/String;

    const-string p1, "setColorFilter"

    .line 22
    iput-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/RemoteViews;Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 2

    .line 60
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(Landroid/widget/RemoteViews;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object p1

    .line 62
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6c05b507

    if-eq v0, v1, :cond_1

    const v1, 0x276a645e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "setImageView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "setColorFilter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, -0x1

    :goto_1
    packed-switch p2, :pswitch_data_0

    goto :goto_2

    .line 71
    :pswitch_0
    iget p2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->b:I

    const-string v0, "setColorFilter"

    iget v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->h:I

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_2

    .line 64
    :pswitch_1
    iget-object p2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->f:Landroid/graphics/Bitmap;

    if-nez p2, :cond_3

    .line 65
    iget p2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->b:I

    iget v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->g:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2

    .line 67
    :cond_3
    iget p2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->b:I

    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_2
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->a:Ljava/util/HashSet;

    const-string v1, "setImageView"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->f:Landroid/graphics/Bitmap;

    return-void
.end method

.method public d(I)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->a:Ljava/util/HashSet;

    const-string v1, "setImageView"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->f:Landroid/graphics/Bitmap;

    .line 38
    iput p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->g:I

    return-void
.end method

.method public e(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->a:Ljava/util/HashSet;

    const-string v1, "setColorFilter"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    iput p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->h:I

    return-void
.end method

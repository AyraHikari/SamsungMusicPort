.class public final Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerImageViewPublisher;
.super Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;
.source "SourceFile"


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;IZ)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;-><init>(Landroid/widget/ImageView;I)V

    .line 21
    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerImageViewPublisher;->a:Z

    return-void
.end method


# virtual methods
.method protected a(Landroid/net/Uri;Landroid/graphics/Bitmap;JZ)Z
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 26
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerImageViewPublisher;->a:Z

    if-eqz p1, :cond_0

    if-nez p5, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

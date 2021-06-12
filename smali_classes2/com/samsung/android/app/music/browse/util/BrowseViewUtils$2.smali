.class final Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Ljava/util/List;[Landroid/net/Uri;Landroid/widget/ImageView;Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$OnNImageViewLoaderCompleted;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/widget/ImageView;",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$OnNImageViewLoaderCompleted;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$OnNImageViewLoaderCompleted;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$2;->a:Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$OnNImageViewLoaderCompleted;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Lkotlin/Unit;
    .locals 1

    if-eqz p2, :cond_0

    .line 265
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 267
    :cond_0
    sget v0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->c:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 269
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$2;->a:Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$OnNImageViewLoaderCompleted;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$2;->a:Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$OnNImageViewLoaderCompleted;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$OnNImageViewLoaderCompleted;->a(Landroid/view/View;Landroid/graphics/Bitmap;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 261
    check-cast p1, Landroid/widget/ImageView;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$2;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

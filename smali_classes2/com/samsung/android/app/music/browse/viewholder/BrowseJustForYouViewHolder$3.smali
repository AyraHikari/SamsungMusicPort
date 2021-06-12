.class Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$3;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;Landroid/graphics/Bitmap;)Lkotlin/Unit;
    .locals 0

    .line 393
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$3;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->c(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;->a(Landroid/graphics/Bitmap;)V

    .line 394
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 389
    check-cast p1, Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$3;->a(Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;Landroid/graphics/Bitmap;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

.class Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$5;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetTintUriInfo(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V
    .locals 2
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 435
    invoke-static {}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetTintUriInfo info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$5;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->c(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;->a(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V

    return-void
.end method

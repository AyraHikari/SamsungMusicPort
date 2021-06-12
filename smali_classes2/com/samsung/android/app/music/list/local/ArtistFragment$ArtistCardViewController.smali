.class final Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistCardViewController;
.super Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/ArtistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ArtistCardViewController"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/ArtistFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/ArtistFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 293
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistCardViewController;->a:Lcom/samsung/android/app/music/list/local/ArtistFragment;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2

    .line 295
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/ArtistCardViewQueryArgs;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/ArtistCardViewQueryArgs;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Z
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistCardViewController;->a:Lcom/samsung/android/app/music/list/local/ArtistFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "artist_id"

    .line 306
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 299
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/player/util/ArtistPlayUtils;->play(Landroid/content/Context;J)Z

    move-result p1

    return p1
.end method

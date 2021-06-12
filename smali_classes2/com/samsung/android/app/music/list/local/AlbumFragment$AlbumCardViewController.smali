.class final Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCardViewController;
.super Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AlbumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AlbumCardViewController"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/AlbumFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/AlbumFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 266
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCardViewController;->a:Lcom/samsung/android/app/music/list/local/AlbumFragment;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2

    .line 268
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/AlbumCardViewQueryArgs;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/AlbumCardViewQueryArgs;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Z
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCardViewController;->a:Lcom/samsung/android/app/music/list/local/AlbumFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "album_id"

    .line 280
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 272
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/player/util/AlbumPlayUtils;->play(Landroid/content/Context;J)Z

    move-result p1

    return p1
.end method

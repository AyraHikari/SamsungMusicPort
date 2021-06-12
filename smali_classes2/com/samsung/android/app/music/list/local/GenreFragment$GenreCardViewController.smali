.class final Lcom/samsung/android/app/music/list/local/GenreFragment$GenreCardViewController;
.super Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/GenreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GenreCardViewController"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/GenreFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/GenreFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 272
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreCardViewController;->a:Lcom/samsung/android/app/music/list/local/GenreFragment;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2

    .line 274
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/GenreCardViewQueryArgs;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/GenreCardViewQueryArgs;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Z
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreCardViewController;->a:Lcom/samsung/android/app/music/list/local/GenreFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "genre_name"

    .line 286
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/util/GenrePlayUtils;->play(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

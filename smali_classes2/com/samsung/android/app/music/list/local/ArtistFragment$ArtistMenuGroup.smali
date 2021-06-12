.class final Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/ArtistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArtistMenuGroup"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

.field private b:Landroid/view/MenuItem;

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;IIZ)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;->c:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iput p3, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;->d:I

    .line 245
    new-instance p1, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;->c:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    check-cast p3, Landroid/support/v4/app/Fragment;

    invoke-direct {p1, p3, p2, p4}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;IZ)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 242
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IIZ)V

    return-void
.end method

.method private final a()V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;->b:Landroid/view/MenuItem;

    if-eqz v0, :cond_5

    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;->c:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->w_()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 280
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;->b:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    .line 284
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;->d:I

    if-ne v0, v1, :cond_3

    .line 285
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;->b:Landroid/view/MenuItem;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const v1, 0x7f0b01a1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;->b:Landroid/view/MenuItem;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    const v1, 0x7f0b01a2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1305df

    .line 253
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;->b:Landroid/view/MenuItem;

    .line 254
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;->a()V

    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->a(Landroid/view/Menu;)V

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->a(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 260
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f1305df

    if-ne p1, v0, :cond_1

    .line 261
    iget p1, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;->d:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;->d:I

    .line 266
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;->a()V

    .line 268
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;->c:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    check-cast p1, Landroid/support/v4/app/Fragment;

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "group_by_artist"

    .line 269
    iget v2, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;->d:I

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 270
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;->c:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->s_()V

    return v0

    :cond_1
    return v1
.end method

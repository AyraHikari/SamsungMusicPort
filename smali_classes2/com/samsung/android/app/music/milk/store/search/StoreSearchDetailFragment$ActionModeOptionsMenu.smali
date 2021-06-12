.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu;
.super Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeOptionsMenu"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)V
    .locals 0

    .line 698
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1;)V
    .locals 0

    .line 698
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 701
    new-instance p1, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    const v1, 0x7f140009

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;I)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 703
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public a(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    .line 708
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f1305ac

    if-ne v0, v1, :cond_1

    .line 709
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->k()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 711
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 712
    new-instance p1, Lcom/samsung/android/app/music/dialog/milk/PlaylistTrackMaximumPopup;

    invoke-direct {p1}, Lcom/samsung/android/app/music/dialog/milk/PlaylistTrackMaximumPopup;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    .line 713
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/dialog/milk/PlaylistTrackMaximumPopup;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/dialog/milk/PlaylistTrackMaximumPopup;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return p2

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;Landroid/content/Context;Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 717
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu;)V

    .line 718
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return p2

    .line 737
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;->a(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

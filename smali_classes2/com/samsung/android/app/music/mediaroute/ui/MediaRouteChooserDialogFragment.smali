.class public final Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;
.super Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$IDialogController;
    }
.end annotation


# instance fields
.field private c:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;

.field private final e:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;-><init>()V

    .line 84
    new-instance v0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$3;-><init>(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;->e:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;)Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;->c:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1

    .line 35
    instance-of v0, p0, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 36
    check-cast p0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    const-string v0, "MediaRouteChooserDialogFragment"

    .line 41
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->getShowsDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 45
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;-><init>()V

    const-string v1, "MediaRouteChooserDialogFragment"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 50
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const/16 v0, 0x8

    .line 51
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;->a(I)V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;->g()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;->h()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;->j()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$1;-><init>(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f04010c

    .line 61
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;->b(I)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f130025

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 63
    new-instance v2, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$Builder;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$Builder;->setWinsetUiEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$Builder;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$Builder;->b()Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;->c:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;

    .line 64
    iget-object v2, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;->c:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 65
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;->c:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;

    new-instance v2, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$2;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$2;-><init>(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;->a(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$IDialogController;)V

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;->e:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 80
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;->onDestroyView()V

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const v1, 0x7f130025

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    return-void
.end method

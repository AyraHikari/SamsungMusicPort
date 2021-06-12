.class public abstract Lcom/samsung/android/app/music/list/playlist/BaseDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/playlist/BaseDialog$Adapter;
    }
.end annotation


# instance fields
.field private _recyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field private final itemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

.field private final loaderCallbacks:Lcom/samsung/android/app/music/list/playlist/BaseDialog$loaderCallbacks$1;

.field private final onClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 93
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/BaseDialog$onClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/playlist/BaseDialog$onClickListener$1;-><init>(Lcom/samsung/android/app/music/list/playlist/BaseDialog;)V

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 109
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/BaseDialog$itemClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/playlist/BaseDialog$itemClickListener$1;-><init>(Lcom/samsung/android/app/music/list/playlist/BaseDialog;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->itemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    .line 120
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/BaseDialog$loaderCallbacks$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/playlist/BaseDialog$loaderCallbacks$1;-><init>(Lcom/samsung/android/app/music/list/playlist/BaseDialog;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->loaderCallbacks:Lcom/samsung/android/app/music/list/playlist/BaseDialog$loaderCallbacks$1;

    return-void
.end method


# virtual methods
.method public abstract doAction([J)V
.end method

.method public abstract getPositionButtonText()I
.end method

.method public getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->_recyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "_recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public abstract getTitleText()I
.end method

.method public abstract onCreateAdapter()Lcom/samsung/android/app/music/list/playlist/BaseDialog$Adapter;
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f040068

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string v1, "rootView"

    .line 59
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->onRootViewCreated(Landroid/view/View;)V

    const v1, 0x7f130150

    .line 61
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 63
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v5, "activity!!"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity!!.applicationContext"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 64
    sget v3, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->d:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setChoiceMode(I)V

    const-string v3, "rootView.findViewById<Mu\u2026E_MODE_MULTIPLE\n        }"

    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->_recyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 67
    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->_recyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v1, :cond_1

    const-string v2, "_recyclerView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->onCreateAdapter()Lcom/samsung/android/app/music/list/playlist/BaseDialog$Adapter;

    move-result-object v2

    .line 68
    iget-object v3, p0, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->itemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/list/playlist/BaseDialog$Adapter;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 69
    sget v3, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->d:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/music/list/playlist/BaseDialog$Adapter;->setChoiceMode(IZ)V

    .line 67
    check-cast v2, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->loaderCallbacks:Lcom/samsung/android/app/music/list/playlist/BaseDialog$loaderCallbacks$1;

    check-cast v2, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v4, v0, v2}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 74
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->getTitleText()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->getPositionButtonText()I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f0b00cd

    .line 78
    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    const-string v0, "builder.create()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Dialog;

    return-object p1
.end method

.method public abstract onCreateQueryArgs()Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.end method

.method public abstract onItemClicked(Landroid/view/View;IJ)V
.end method

.method public onResume()V
    .locals 2

    .line 84
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/support/v7/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "(dialog as AlertDialog).getButton(BUTTON_POSITIVE)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.support.v7.app.AlertDialog"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract onRootViewCreated(Landroid/view/View;)V
.end method

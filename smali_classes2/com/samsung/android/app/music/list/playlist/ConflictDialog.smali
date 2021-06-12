.class public final Lcom/samsung/android/app/music/list/playlist/ConflictDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;,
        Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;

.field private final loaderCallbacks:Lcom/samsung/android/app/music/list/playlist/ConflictDialog$loaderCallbacks$1;

.field private final onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private recyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field private summary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 127
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$onClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$onClickListener$1;-><init>(Lcom/samsung/android/app/music/list/playlist/ConflictDialog;)V

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 153
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$loaderCallbacks$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$loaderCallbacks$1;-><init>(Lcom/samsung/android/app/music/list/playlist/ConflictDialog;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->loaderCallbacks:Lcom/samsung/android/app/music/list/playlist/ConflictDialog$loaderCallbacks$1;

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/samsung/android/app/music/list/playlist/ConflictDialog;)Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;
    .locals 1

    .line 63
    iget-object p0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->adapter:Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;

    if-nez p0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$setAdapter$p(Lcom/samsung/android/app/music/list/playlist/ConflictDialog;Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->adapter:Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .line 77
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "builder.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "layout_inflater"

    .line 79
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f040068

    const/4 v4, 0x0

    .line 82
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f130210

    .line 84
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v5, "rootView.findViewById(R.id.summary)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->summary:Landroid/widget/TextView;

    .line 85
    iget-object v3, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->summary:Landroid/widget/TextView;

    if-nez v3, :cond_1

    const-string v5, "summary"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    const v5, 0x7f0b02f7

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f130150

    .line 87
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v5, "rootView.findViewById(R.id.recycler_view)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iput-object v3, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->recyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 88
    new-instance v3, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$Builder;

    move-object v5, p0

    check-cast v5, Landroid/support/v4/app/Fragment;

    invoke-direct {v3, v5}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$Builder;->build()Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;

    move-result-object v3

    if-eqz p1, :cond_2

    const-string v5, "key_ids"

    .line 89
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v4

    :goto_0
    instance-of v5, p1, Ljava/util/HashMap;

    if-nez v5, :cond_3

    move-object p1, v4

    :cond_3
    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_4

    .line 90
    check-cast p1, Ljava/util/Map;

    .line 818
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 90
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->getCheckedStates()Ljava/util/HashMap;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 88
    :cond_4
    iput-object v3, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->adapter:Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;

    .line 95
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->recyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez p1, :cond_5

    const-string v3, "recyclerView"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_5
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-direct {v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 96
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->recyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez p1, :cond_6

    const-string v1, "recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->adapter:Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;

    if-nez v1, :cond_7

    const-string v3, "adapter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_7
    check-cast v1, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->loaderCallbacks:Lcom/samsung/android/app/music/list/playlist/ConflictDialog$loaderCallbacks$1;

    check-cast v1, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v4, v1}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 102
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f0b02f8

    .line 103
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f0b02d3

    .line 104
    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 106
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->setCancelable(Z)V

    .line 107
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 108
    invoke-virtual {p1, v3}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 109
    invoke-virtual {p1, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const-string v0, "builder.create().apply {\u2026hOutside(false)\n        }"

    .line 107
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Dialog;

    return-object p1

    .line 79
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onResume()V
    .locals 0

    .line 123
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->updatePositiveButton()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 71
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->adapter:Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;

    if-eqz v0, :cond_1

    const-string v0, "key_ids"

    .line 72
    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->adapter:Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;

    if-nez v1, :cond_0

    const-string v2, "adapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->getCheckedStates()Ljava/util/HashMap;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 114
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "dialog"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public final updatePositiveButton()V
    .locals 4

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v7/app/AlertDialog;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_4

    const/4 v1, -0x1

    .line 149
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->adapter:Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;

    if-nez v1, :cond_1

    const-string v2, "adapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->getItemCount()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->adapter:Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;

    if-nez v2, :cond_2

    const-string v3, "adapter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->getCheckedStates()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    return-void
.end method

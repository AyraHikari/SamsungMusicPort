.class public final Lcom/samsung/android/app/music/list/playlist/ExportPlaylistsDialog;
.super Lcom/samsung/android/app/music/list/playlist/BaseDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/playlist/ExportPlaylistsDialog$ExportPlaylistTask;,
        Lcom/samsung/android/app/music/list/playlist/ExportPlaylistsDialog$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/music/list/playlist/ExportPlaylistsDialog$Companion;

.field public static final TAG:Ljava/lang/String; = "ExportPlaylistsDialog"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/playlist/ExportPlaylistsDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/playlist/ExportPlaylistsDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/playlist/ExportPlaylistsDialog;->Companion:Lcom/samsung/android/app/music/list/playlist/ExportPlaylistsDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 303
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/playlist/BaseDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public doAction([J)V
    .locals 12

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ExportPlaylistsDialog"

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "export playlist ids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3f

    const/4 v11, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v11}, Lkotlin/collections/ArraysKt;->a([JLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/ExportPlaylistsDialog$ExportPlaylistTask;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ExportPlaylistsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/music/list/playlist/ExportPlaylistsDialog$ExportPlaylistTask;-><init>(Landroid/app/Activity;[J)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/list/playlist/ExportPlaylistsDialog$ExportPlaylistTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getPositionButtonText()I
    .locals 1

    const v0, 0x7f0b0132

    return v0
.end method

.method public getTitleText()I
    .locals 1

    const v0, 0x7f0b0134

    return v0
.end method

.method public onCreateAdapter()Lcom/samsung/android/app/music/list/playlist/BaseDialog$Adapter;
    .locals 2

    .line 314
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/BaseDialog$Adapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/playlist/BaseDialog$Adapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "name"

    .line 315
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/playlist/BaseDialog$Adapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const/4 v1, 0x1

    .line 316
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/playlist/BaseDialog$Adapter$Builder;->setWinsetUiEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 317
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/BaseDialog$Adapter$Builder;->build()Lcom/samsung/android/app/music/list/playlist/BaseDialog$Adapter;

    move-result-object v0

    return-object v0
.end method

.method public onCreateQueryArgs()Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 4

    .line 310
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object v0
.end method

.method public onItemClicked(Landroid/view/View;IJ)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRootViewCreated(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f130210

    .line 305
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0b0133

    .line 306
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

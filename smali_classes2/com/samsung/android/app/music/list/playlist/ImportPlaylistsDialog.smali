.class public final Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog;
.super Lcom/samsung/android/app/music/list/playlist/BaseDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter;,
        Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportPlaylistTask;,
        Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$Companion;

.field public static final TAG:Ljava/lang/String; = "ImportPlaylistsDialog"


# instance fields
.field private errorTextView:Landroid/widget/TextView;

.field private playlistCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog;->Companion:Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/playlist/BaseDialog;-><init>()V

    return-void
.end method

.method private final getPlaylistCount(Landroid/content/Context;)I
    .locals 6

    .line 236
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v0, "MediaContents.Playlists.CONTENT_URI"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "count(*)"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    const/4 v0, 0x0

    .line 237
    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/database/Cursor;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 238
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 239
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 241
    :cond_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string p1, "UiList"

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPlaylistCount() count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 237
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public doAction([J)V
    .locals 12

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ImportPlaylistsDialog"

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "import playlist ids="

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

    .line 229
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportPlaylistTask;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportPlaylistTask;-><init>(Landroid/app/Activity;[J)V

    .line 230
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 229
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportPlaylistTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getPositionButtonText()I
    .locals 1

    const v0, 0x7f0b015f

    return v0
.end method

.method public getTitleText()I
    .locals 1

    const v0, 0x7f0b0162

    return v0
.end method

.method public onCreateAdapter()Lcom/samsung/android/app/music/list/playlist/BaseDialog$Adapter;
    .locals 2

    .line 202
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "name"

    .line 203
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const/4 v1, 0x1

    .line 204
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter$Builder;->setWinsetUiEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 205
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter$Builder;->build()Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/playlist/BaseDialog$Adapter;

    return-object v0
.end method

.method public onCreateQueryArgs()Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 3

    .line 194
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 195
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v2, "name"

    .line 196
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    const-string v1, "date_added DESC"

    .line 197
    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    return-object v0
.end method

.method public onItemClicked(Landroid/view/View;IJ)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter;

    .line 210
    iget p2, p0, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog;->playlistCount:I

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemCount()I

    move-result p3

    add-int/2addr p2, p3

    const/16 p3, 0x3e8

    const/4 p4, 0x0

    if-lt p2, p3, :cond_1

    const/4 p2, 0x1

    .line 211
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter;->setMaxState(Z)V

    .line 212
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog;->errorTextView:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const-string p2, "errorTextView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 214
    :cond_1
    invoke-virtual {p1, p4}, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter;->setMaxState(Z)V

    .line 215
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog;->errorTextView:Landroid/widget/TextView;

    if-nez p1, :cond_2

    const-string p2, "errorTextView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    .line 209
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.music.list.playlist.ImportPlaylistsDialog.ImportAdapter"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onRootViewCreated(Landroid/view/View;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f130211

    .line 177
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "view.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    .line 180
    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x3e8

    .line 181
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const v5, 0x7f0d0024

    .line 178
    invoke-virtual {v2, v5, v4, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "view.findViewById<TextVi\u2026S\n            )\n        }"

    .line 177
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog;->errorTextView:Landroid/widget/TextView;

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "view.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog;->getPlaylistCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog;->playlistCount:I

    const v0, 0x7f130210

    .line 185
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->i(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0b0161

    .line 188
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0b0160

    .line 187
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

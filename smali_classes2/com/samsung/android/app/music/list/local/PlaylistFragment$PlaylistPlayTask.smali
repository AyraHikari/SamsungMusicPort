.class final Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistPlayTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaylistPlayTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lkotlin/Unit;",
        "Lkotlin/Unit;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/music/list/local/PlaylistFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 855
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 856
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistPlayTask;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Lkotlin/Unit;)Ljava/lang/Integer;
    .locals 27

    const-string v0, "params"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 859
    iget-object v1, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistPlayTask;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const-string v3, "fragmentRef.get() ?: return 0"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 860
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v4, "fragment.activity!!"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 862
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->a(I)[J

    move-result-object v4

    if-eqz v4, :cond_2

    .line 863
    sget-object v13, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v5, "MediaContents.Playlists.CONTENT_URI"

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Landroid/content/ContentValues;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Landroid/content/ContentValues;-><init>(I)V

    const-string v5, "date_recently_played"

    .line 866
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/16 v8, 0x3e8

    int-to-long v8, v8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 864
    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 868
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id IN ("

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3f

    const/16 v16, 0x0

    move-object v2, v12

    move-object/from16 v12, v16

    invoke-static/range {v4 .. v12}, Lkotlin/collections/ArraysKt;->a([JLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 863
    invoke-static {v3, v13, v14, v2, v4}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 869
    invoke-virtual {v1, v15}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->a(I)[J

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v18, 0x0

    const/16 v19, -0x65

    const/16 v20, -0x64

    .line 875
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->g()I

    move-result v21

    .line 876
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->h()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xc0

    const/16 v26, 0x0

    move-object/from16 v17, v2

    .line 870
    invoke-static/range {v17 .. v26}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a([JIIIILjava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/Object;)I

    .line 878
    array-length v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 862
    :cond_1
    check-cast v4, Ljava/lang/Void;

    :cond_2
    const/4 v1, 0x0

    .line 881
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_3
    const/4 v1, 0x0

    .line 860
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_4
    const/4 v1, 0x0

    .line 859
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected a(I)V
    .locals 3

    const-string v0, "UiList"

    .line 885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " checkedAudioIdsCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistPlayTask;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    if-eqz v0, :cond_4

    const-string v1, "fragmentRef.get() ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 888
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "fragment.activity!!"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 889
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->a()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const v1, 0x7f0b00d5

    goto :goto_0

    :cond_1
    const v1, 0x7f0b00d4

    .line 888
    :goto_0
    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;I)V

    .line 896
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistPlayTask$onPostExecute$1;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistPlayTask$onPostExecute$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->isRunning(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    :cond_3
    return-void

    :cond_4
    return-void
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 854
    check-cast p1, [Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistPlayTask;->a([Lkotlin/Unit;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 854
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistPlayTask;->a(I)V

    return-void
.end method

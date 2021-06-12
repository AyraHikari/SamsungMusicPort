.class final Lcom/samsung/android/app/music/list/playlist/ConflictDialog$onClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/ConflictDialog;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/playlist/ConflictDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/playlist/ConflictDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$onClickListener$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ConflictDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto/16 :goto_1

    .line 130
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$onClickListener$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ConflictDialog;

    invoke-static {p2}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->access$getAdapter$p(Lcom/samsung/android/app/music/list/playlist/ConflictDialog;)Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->getCheckedStates()Ljava/util/HashMap;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 818
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 132
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$onClickListener$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ConflictDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const-string v0, "activity!!"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 136
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;

    .line 137
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$onClickListener$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ConflictDialog;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 139
    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$onClickListener$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ConflictDialog;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 140
    iget-object v3, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$onClickListener$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ConflictDialog;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->getTargetRequestCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 136
    invoke-direct {v0, v1, p1, v2, v3}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;-><init>(Ljava/lang/ref/WeakReference;Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;Ljava/lang/Integer;)V

    .line 141
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Unit;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string p1, "context"

    .line 143
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Conflict;->a:Landroid/net/Uri;

    const-string v0, "MediaContents.Playlists.Conflict.CONTENT_URI"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p2, p1, v0, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_1
    return-void
.end method

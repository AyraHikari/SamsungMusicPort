.class final Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$onItemClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;IJ)V
    .locals 7

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 51
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter;

    .line 52
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const p1, 0x100004

    .line 55
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;

    invoke-static {p2, v3}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->a(Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;Ljava/lang/String;)V

    const-string p2, "UiList"

    .line 59
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " onItemClick() listType="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", keyword="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", title="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const-string p2, "activity!!"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string p1, "activity!!.applicationContext"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x0

    const v1, 0x100004

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    return-void

    .line 51
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.music.list.local.AddToShortcutPlaylistFragment.AddToShortcutAdapter"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

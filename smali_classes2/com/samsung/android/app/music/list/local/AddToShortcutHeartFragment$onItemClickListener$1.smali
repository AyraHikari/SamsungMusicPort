.class final Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$onItemClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;IJ)V
    .locals 4

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 44
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;

    .line 45
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->getText1(I)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 46
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 47
    :cond_2
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->b(I)I

    move-result p1

    .line 49
    invoke-static {p3}, Lcom/samsung/android/app/music/util/ListUtils;->c(I)I

    move-result p2

    .line 51
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;

    invoke-static {v1, p3, p4}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;->a(Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;ILjava/lang/String;)V

    const-string v1, "UiList"

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onItemClick() | listType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " | keyword: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " | title: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 53
    invoke-static {v1, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    if-nez p3, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    const-string v1, "activity!!"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const-string v1, "activity!!.applicationContext"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultUiUtils.transUnknownString(context, title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-static {p3, p2, v0, p4, p1}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 44
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.music.list.local.AddToShortcutHeartFragment.AddToShortcutAdapter"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

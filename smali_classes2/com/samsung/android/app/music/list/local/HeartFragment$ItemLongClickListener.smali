.class final Lcom/samsung/android/app/music/list/local/HeartFragment$ItemLongClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemLongClickListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/HeartFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 767
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemLongClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IJ)Z
    .locals 2

    const-string p3, "view"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 770
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemLongClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->F()Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_2

    .line 771
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemLongClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, -0xb

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 772
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemLongClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0b00d2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 776
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemLongClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    instance-of p2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    if-nez p2, :cond_1

    const/4 p1, 0x0

    :cond_1
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    if-eqz p1, :cond_2

    .line 778
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemLongClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)V

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    return p3
.end method

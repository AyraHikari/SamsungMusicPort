.class final Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder$1;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 35
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder$1;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;->a(Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder$1;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;->b(Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;)Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder$1;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;

    invoke-static {v1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;->b(Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;)Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

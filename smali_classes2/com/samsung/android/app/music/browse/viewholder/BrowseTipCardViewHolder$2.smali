.class final Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder$2;
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

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder$2;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 40
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder$2;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;->a(Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string v0, "key_browse_show_tip"

    const/4 v1, 0x0

    .line 39
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

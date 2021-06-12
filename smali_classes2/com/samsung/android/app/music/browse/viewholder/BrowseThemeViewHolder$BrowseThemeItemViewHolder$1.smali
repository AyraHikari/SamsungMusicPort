.class Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeItemViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeItemViewHolder;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeItemViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeItemViewHolder;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeItemViewHolder$1;->b:Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeItemViewHolder;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeItemViewHolder$1;->a:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/16 p1, 0x5a

    .line 133
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeItemViewHolder$1;->b:Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeItemViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeItemViewHolder;->a:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeItemViewHolder$1;->b:Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeItemViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeItemViewHolder;->a:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    .line 134
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeItemViewHolder$1;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method

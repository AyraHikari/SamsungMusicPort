.class Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder;->a(Landroid/support/v4/app/Fragment;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$1;->b:Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$1;->a:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/16 p1, 0x3c

    .line 61
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$1;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$1;->a:Landroid/support/v4/app/Fragment;

    .line 62
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method

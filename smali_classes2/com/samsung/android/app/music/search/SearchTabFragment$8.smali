.class Lcom/samsung/android/app/music/search/SearchTabFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/search/SearchTabFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/search/SearchTabFragment;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$8;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$8;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->c(Lcom/samsung/android/app/music/search/SearchTabFragment;)Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

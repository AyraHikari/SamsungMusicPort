.class Lcom/samsung/android/app/music/search/SearchTabFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/search/SearchTabFragment;
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

    .line 833
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$10;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 3

    .line 836
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$10;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->h(Lcom/samsung/android/app/music/search/SearchTabFragment;)Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->b()Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;

    move-result-object v0

    .line 837
    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$10;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->isFragmentVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;->a:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;->a:Landroid/support/v4/app/Fragment;

    .line 838
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$10;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    iget v0, v0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;->b:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->LOCAL:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$10;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    .line 839
    invoke-static {v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->e(Lcom/samsung/android/app/music/search/SearchTabFragment;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Lcom/samsung/android/app/music/search/SearchTabFragment;Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    move-result-object v0

    .line 840
    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getClassType()Ljava/lang/Class;

    move-result-object v0

    .line 838
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SearchTabFragment"

    const-string v1, "Move back to initial state of search UI on back pressed."

    .line 842
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$10;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->i(Lcom/samsung/android/app/music/search/SearchTabFragment;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

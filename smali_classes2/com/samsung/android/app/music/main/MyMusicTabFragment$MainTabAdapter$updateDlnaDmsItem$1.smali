.class public final Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter$updateDlnaDmsItem$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 491
    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter$updateDlnaDmsItem$1;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 3

    .line 501
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter$updateDlnaDmsItem$1;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    iget-object v0, v0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->d(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->a()V

    .line 502
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter$updateDlnaDmsItem$1;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    iget-object v0, v0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter$updateDlnaDmsItem$1;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    iget-object v1, v1, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a()Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter$updateDlnaDmsItem$1;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->c(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setCurrentItem(I)V

    .line 503
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter$updateDlnaDmsItem$1;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    move-object v1, p0

    check-cast v1, Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 493
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter$updateDlnaDmsItem$1;->a()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 497
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter$updateDlnaDmsItem$1;->a()V

    return-void
.end method

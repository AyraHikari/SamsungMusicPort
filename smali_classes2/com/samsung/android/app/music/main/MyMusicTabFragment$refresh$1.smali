.class public final Lcom/samsung/android/app/music/main/MyMusicTabFragment$refresh$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/MyMusicTabFragment;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 249
    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$refresh$1;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    iput p2, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$refresh$1;->b:I

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$refresh$1;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->d(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->a()V

    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$refresh$1;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setCurrentItem(I)V

    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$refresh$1;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$refresh$1;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a()Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$refresh$1;->b:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->c(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setCurrentItem(I)V

    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$refresh$1;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a()Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$refresh$1;->a()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 255
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$refresh$1;->a()V

    return-void
.end method

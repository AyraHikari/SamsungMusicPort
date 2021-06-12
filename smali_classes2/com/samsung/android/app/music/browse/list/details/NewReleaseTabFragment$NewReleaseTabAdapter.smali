.class Lcom/samsung/android/app/music/browse/list/details/NewReleaseTabFragment$NewReleaseTabAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/CachedFragmentStatePagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/details/NewReleaseTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewReleaseTabAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/details/NewReleaseTabFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/details/NewReleaseTabFragment;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/NewReleaseTabFragment$NewReleaseTabAdapter;->a:Lcom/samsung/android/app/music/browse/list/details/NewReleaseTabFragment;

    .line 52
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/CachedFragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method protected a(I)Landroid/support/v4/app/Fragment;
    .locals 3

    const-string v0, "NewReleaseTabFragment"

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createFragment. index - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    .line 78
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/browse/list/details/BrowseFragmentFactory;->a(ILandroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, 0xb

    .line 74
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/browse/list/details/BrowseFragmentFactory;->a(ILandroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/NewReleaseTabFragment$NewReleaseTabAdapter;->a:Lcom/samsung/android/app/music/browse/list/details/NewReleaseTabFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/details/NewReleaseTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    const p1, 0x7f0b00bd

    .line 63
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    const p1, 0x7f0b00bc

    .line 61
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

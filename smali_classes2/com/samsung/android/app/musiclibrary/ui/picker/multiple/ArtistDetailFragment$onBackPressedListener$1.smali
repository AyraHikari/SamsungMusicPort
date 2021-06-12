.class public final Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistDetailFragment$onBackPressedListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistDetailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistDetailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistDetailFragment$onBackPressedListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistDetailFragment$onBackPressedListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistDetailFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 28
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

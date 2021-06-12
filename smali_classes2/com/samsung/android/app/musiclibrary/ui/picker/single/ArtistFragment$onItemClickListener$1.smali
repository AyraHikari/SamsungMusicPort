.class final Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment$onItemClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;IJ)V
    .locals 2

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string p3, "6026"

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistDetailFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistDetailFragment$Companion;

    .line 36
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;

    invoke-virtual {p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    const/4 p4, -0x1

    int-to-long v0, p4

    .line 35
    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistDetailFragment$Companion;->a(JJ)Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistDetailFragment;

    move-result-object p1

    .line 40
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string p3, "fragmentManager!!"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    const p3, 0x100003

    .line 41
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const p4, 0x1020011

    .line 42
    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, p4, p1, p3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/16 p1, 0x1001

    .line 43
    invoke-virtual {p2, p1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 44
    invoke-virtual {p2, p3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 113
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

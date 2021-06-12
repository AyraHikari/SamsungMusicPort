.class final Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment$onItemClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;IJ)V
    .locals 2

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;

    sget-object p3, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistDetailFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistDetailFragment$Companion;

    .line 34
    iget-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;

    invoke-virtual {p4}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;

    invoke-virtual {p4, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 35
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;)Z

    move-result p2

    .line 33
    invoke-virtual {p3, v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistDetailFragment$Companion;->a(JZ)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistDetailFragment;

    move-result-object p2

    check-cast p2, Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;Landroid/support/v4/app/Fragment;)V

    .line 37
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;)Landroid/support/v4/app/Fragment;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string p3, "ArtistDetailFragment"

    iget-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;

    invoke-static {p4}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;->c(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;)Z

    move-result p4

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;->getUserVisibleHint()Z

    move-result v0

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;ZZ)V

    .line 39
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "6104"

    goto :goto_0

    :cond_2
    const-string p1, "2609"

    .line 44
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;->getScreenId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

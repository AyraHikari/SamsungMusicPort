.class final Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$onItemClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;IJ)V
    .locals 6

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;->a(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 51
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;

    invoke-virtual {p3, p2}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;->b(I)Ljava/lang/String;

    move-result-object p2

    .line 54
    sget-boolean p3, Lcom/samsung/android/app/music/info/features/AppFeatures;->q_:Z

    if-eqz p3, :cond_1

    .line 55
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    if-nez p3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-static {p3, p1, p2}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 60
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 61
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const-string p2, "parentFragment!!"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object p2, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$Companion;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$Companion;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/support/v4/app/Fragment;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 60
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentManagerExtensionKt;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_3
    return-void
.end method
